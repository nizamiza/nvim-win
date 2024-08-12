return {
  "neovim/nvim-lspconfig",
  lazy = false,
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/nvim-cmp",
    "L3MON4D3/LuaSnip",
  },
  config = function()
    -- LSP actions
    vim.api.nvim_create_autocmd("LspAttach", {
      desc = "LSP actions",
      callback = function()
        require("utils").add_keymaps({
          { "K",          "<cmd>lua vim.lsp.buf.hover()<cr>",          desc = "Show hover information" },
          { "D",          "<cmd>lua vim.diagnostic.open_float()<cr>",  desc = "Open diagnostic float" },

          { "<leader>l",  group = "LSP" },
          { "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>",    desc = "Code actions" },
          { "<leader>ld", "<cmd>Telescope lsp_definitions<cr>",        desc = "Definitions" },
          { "<leader>lD", "<cmd>lua vim.lsp.buf.declaration()<cr>",    desc = "Declaration" },
          { "<leader>lr", "<cmd>Telescope lsp_references<cr>",         desc = "References" },
          { "<leader>li", "<cmd>Telescope lsp_implementations<cr>",    desc = "Implementations" },
          { "<leader>lt", "<cmd>Telescope lsp_type_definitions<cr>",   desc = "Type definitions" },
          { "<leader>lS", "<cmd>lua vim.lsp.buf.signature_help()<cr>", desc = "Show signature help" },
          { "<leader>lR", "<cmd>lua vim.lsp.buf.rename()<cr>",         desc = "Rename symbol under cursor" },
          { "<leader>ls", "<cmd>Telescope lsp_document_symbols<cr>",   desc = "Document symbols" },
          { "<leader>lw", "<cmd>Telescope lsp_workspace_symbols<cr>",  desc = "Workspace symbols" },
          { "<leader>lf", "<cmd>lua vim.lsp.buf.format()<cr>",         desc = "Format document" },
          { "<leader>lI", "<cmd>OrganizeImports<cr>",                  desc = "Organize imports" },

          { "<leader>d",  group = "diagnostics" },
          { "<leader>dl", "<cmd>Telescope diagnostics<cr>",            desc = "Document diagnostics" },
          { "<leader>dn", "<cmd>lua vim.diagnostic.goto_next()<cr>",   desc = "Next diagnostic" },
          { "<leader>dp", "<cmd>lua vim.diagnostic.goto_prev()<cr>",   desc = "Previous diagnostic" },
        })
      end,
    })

    -- LSP configuration
    local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()
    local nvim_lsp = require("lspconfig")

    local default_setup = function(server)
      nvim_lsp[server].setup({
        capabilities = lsp_capabilities,
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
      sources = {
        { name = "nvim_lsp" },
      },
      mapping = cmp.mapping.preset.insert({
        -- Confirm completion
        ["<cr>"] = cmp.mapping.confirm({ select = false }),

        -- Cancel completion
        ["<c-e>"] = cmp.mapping.close(),

        -- Trigger completion
        ["<c-space>"] = cmp.mapping.complete(),

        -- Navigate completion
        ["<c-n>"] = cmp.mapping.select_next_item(),
        ["<c-p>"] = cmp.mapping.select_prev_item(),

        -- Scroll documentation
        ["<c-d>"] = cmp.mapping.scroll_docs(4),
        ["<c-f>"] = cmp.mapping.scroll_docs(-4),
      }),
      snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end,
      },
    })

    -- Language specific configuration
    nvim_lsp.lua_ls.setup({
      capabilities = lsp_capabilities,
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
      root_dir = nvim_lsp.util.root_pattern("deno.json", "deno.jsonc"),
    })

    -- Format on save
    local lsp_format_augroup = vim.api.nvim_create_augroup("LspFormat", {})

    vim.api.nvim_create_autocmd({ "BufWritePre" }, {
      group = lsp_format_augroup,
      desc = "Format on save",
      callback = function(event)
        vim.lsp.buf.format({
          bufnr = event.buf,
        })
      end,
    })
  end,
}
