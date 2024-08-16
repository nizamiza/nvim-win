return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/nvim-cmp",
    "L3MON4D3/LuaSnip",
  },
  keys = {
    { "K",         "<cmd>lua vim.lsp.buf.hover()<cr>",          desc = "Show hover information" },
    { "D",         "<cmd>lua vim.diagnostic.open_float()<cr>",  desc = "Open diagnostic float" },

    { "g",         group = "go to" },
    { "gd",        "<cmd>FzfLua lsp_definitions<cr>",           desc = "Definitions" },
    { "gD",        "<cmd>lua vim.lsp.buf.declaration()<cr>",    desc = "Declaration" },
    { "gr",        "<cmd>FzfLua lsp_references<cr>",            desc = "References" },

    { "<leader>a", "<cmd>lua vim.lsp.buf.code_action()<cr>",    desc = "Code actions" },
    { "<leader>L", "<cmd>lua vim.lsp.buf.signature_help()<cr>", desc = "Show signature help" },
    { "<leader>r", "<cmd>lua vim.lsp.buf.rename()<cr>",         desc = "Rename symbol under cursor" },
    { "<leader>s", "<cmd>FzfLua lsp_document_symbols<cr>",      desc = "Document symbols" },
    { "<leader>S", "<cmd>FzfLua lsp_workspace_symbols<cr>",     desc = "Workspace symbols" },
    { "<leader>F", "<cmd>lua vim.lsp.buf.format()<cr>",         desc = "Format document" },
    { "<leader>I", "<cmd>OrganizeImports<cr>",                  desc = "Organize imports" },
    { "<leader>d", "<cmd>lua vim.diagnostic.goto_next()<cr>",   desc = "Next diagnostic" },
  },
  config = function()
    vim.api.nvim_create_autocmd("LspAttach", {
      desc = "LSP actions",
      callback = function() end,
    })

    -- LSP configuration
    local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()
    local nvim_lsp = require("lspconfig")

    local function on_init(client)
      local workspace_folder_uris = {}

      for _, folder in ipairs(client.workspace_folders) do
        table.insert(workspace_folder_uris, folder.uri)
      end

      -- Set workspace folders for Copilot
      require("utils").set_global_option("copilot_workspace_folders", workspace_folder_uris)
    end

    local default_setup = function(server)
      nvim_lsp[server].setup({
        capabilities = lsp_capabilities,
        on_init = on_init,
      })
    end

    require("mason").setup({})
    require("mason-lspconfig").setup({
      ensure_installed = {},
      handlers = {
        default_setup,
      },
    })

    -- Completion
    local cmp = require("cmp")

    cmp.setup({
      snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        -- Confirm completion
        ["<cr>"] = cmp.mapping.confirm({ select = false }),

        -- Cancel completion
        ["<c-e>"] = cmp.mapping.abort(),

        -- Trigger completion
        ["<c-b>"] = cmp.mapping.complete(),

        -- Navigate completion
        ["<c-n>"] = cmp.mapping.select_next_item(),
        ["<c-p>"] = cmp.mapping.select_prev_item(),

        -- Scroll documentation
        ["<c-d>"] = cmp.mapping.scroll_docs(4),
        ["<c-f>"] = cmp.mapping.scroll_docs(-4),
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" },
      }, {
        { name = "buffer" },
      }),
    })

    -- Language specific configuration
    nvim_lsp.lua_ls.setup({
      capabilities = lsp_capabilities,
      on_init = on_init,
      settings = {
        Lua = {
          runtime = {
            version = "LuaJIT",
          },
          diagnostics = {
            globals = { "vim" },
          },
          workspace = {
            library = {
              vim.env.VIMRUNTIME,
            },
          },
        },
      },
    })

    nvim_lsp.tsserver.setup({
      capabilities = lsp_capabilities,
      on_init = on_init,
      root_dir = nvim_lsp.util.root_pattern("package.json", "tsconfig.json", "jsconfig.json"),
      single_file_support = false,
      commands = {
        OrganizeImports = {
          function()
            local params = {
              command = "_typescript.organizeImports",
              arguments = { vim.api.nvim_buf_get_name(0) },
              title = "",
            }

            vim.lsp.buf.execute_command(params)
          end,
          desc = "Organize imports",
        },
      },
    })

    nvim_lsp.denols.setup({
      capabilities = lsp_capabilities,
      on_init = on_init,
      root_dir = nvim_lsp.util.root_pattern("deno.json", "deno.jsonc"),
    })

    -- Format on save
    local lsp_format_augroup = vim.api.nvim_create_augroup("LspFormat", {})

    vim.api.nvim_create_autocmd({ "BufWritePre" }, {
      group = lsp_format_augroup,
      desc = "Format on save",
      callback = function(event)
        vim.lsp.buf.format({ bufnr = event.buf })
      end,
    })
  end,
}
