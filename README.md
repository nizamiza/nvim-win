# My Personal NeoVim Configuration (Windows Edition)

Very simple configuration of NeoVim using [Lazy](https://github.com/folke/lazy.nvim)
for plugin management compatible with Windows and Unix platforms.

## Pre-requisites

- [NeoVim](https://neovim.io) - the editor itself.
- [Git](https://http://git-scm.com) - so you can clone this repository and make your own. Usually comes pre-installed with most Unix-based systems.
- [Node.js](https://nodejs.org) - for [GitHub Copilot](https://copilot.github.com) and other node-based plugins. Install using [fnm](https://github.com/Schniz/fnm) for better version management.
- [fzf](https://github.com/junegunn/fzf) - fuzzy finder for files and buffers.
- [chafa](https://github.com/hpjansson/chafa) - for image previews in fzf.
- [ripgrep](https://github.com/BurntSushi/ripgrep) - for faster searching in fzf.
- [Lazygit](https://github.com/jesseduffield/lazygit) - user friendly UI for git.

And all LSP servers and formatters that you need for your projects.

If you're on macOS, most of these can be installed using [Homebrew](https://brew.sh).

```bash
brew install neovim fnm fzf chafa ripgrep lazygit stylua prettierd
```

If you're on Windows, you can install most of these using [Scoop](https://scoop.sh).

If you installed `fnm`, make sure to install the latest version of Node.js:

```bash
fnm install latest
```

> If you plan to use GitHub Copilot, you will have to have an active subscription
> to the service.

## Installation

Before you start, make sure that you have installed [NeoVim](https://neovim.io)
and [Git](https://http://git-scm.com) on your system. Then, backup your current
configuration if you have any:

```bash
# Windows
mv ~\AppData\Local\nvim ~\AppData\Local\nvim.bak

# Unix
mv ~/.config/nvim ~/.config/nvim.bak
```

Clone this repository into your config directory:

```bash
git clone https://github.com/nizamiza/nvim-win.git ~\AppData\Local\nvim
```
