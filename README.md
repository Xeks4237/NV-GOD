NV-GOD - The Best NeoVim Distro of ALL Time

<div align="center"><p>
    <a href="https://github.com/Xeks4237/NV-GOD/stargazers">
      <img alt="Stars:" src="https://img.shields.io/github/stars/Xeks4237/NV-GOD?style=for-the-badge&color=F9E2AF&labelColor=181825" />
    </a>
    <a href="https://github.com/Xeks4237/NV-GOD/LICENSE">
      <img alt="License:" src="https://img.shields.io/github/license/Xeks4237/NV-GOD?style=for-the-badge&color=CBA6F7&labelColor=181825" />
    </a>
    <a href="https://github.com/Xeks4237/NV-GOD">
      <img alt="Repo Size:" src="https://img.shields.io/github/repo-size/Xeks4237/NV-GOD?color=B4BEFE&label=Size&style=for-the-badge&labelColor=181825" />
    </a>
</div>

# Description

NV-GOD is created by Me Xeks4247, Because other distros of NeoVim like LazyVim, AstroNVim and etc uses their own repos for all pre-configured options, plugins, autocmds and etc. It's easy for devs of Distros but it makes most of the configuration hidden from eyes of users, And It takes to MUCH time to find out how it works in their repos

For Advanced users like Me it's really big headache to work with

- You can ask: "Then why don't I just use kickstart.nvim?"
  I know about it, it's a beautifull project but it more about to help new users to make their own NeoVim configs and understand how it works, In difference to kickstart My Project is meant to be FULL NeoVim Distro, BUT in the same time be simple as kickstart.nvim

# Features

- 😎Available in any platform Linux, Windows, and Android(through Termux)
- 💪Fully Configured LSP Servers for different languages
- 🐞Full Debugging support with nvim-dap
- ✒️AutoSuggestions for Code with LSP, DAP, and TreeSitter support
- ⌨️Non-Colliding Keymaps Without Bloat
- 📝A lot of Comments to help you configure NV-GOD for your needs
- 🤩Highly Customizable UI with a lot of coloschemes for any needs

# Installation

### Before Starting

1. Use some terminal with TrueColor support (recommended)
2. Install and choose any [NerdFont](https://www.nerdfonts.com) what you like in you terminal (recommended)

### System Specific Installation

<details>
  <summary>Arch Linux</summary>

- First install Dependencies through pacman:

    ```sh
    sudo pacman -Syu neovim nodejs python3 curl wget git perl cmake bash gcc fzf fd ripgrep luarocks
    ```

- And use this command to clone NV-GOD using **git**:

    ```sh
    git clone https://Xeks4247/NV-GOD.git ~/.config/nvim/ && rm -rf ~/.config/nvim/.git/
    ```

- Then open NeoVim and Enjoy🎉:

    ```sh
    nvim
    ```

</details>

<details>
  <summary>Fedora</summary>

- First install Dependencies through dnf:

    ```sh
    sudo dnf install -y neovim nodejs python3 curl wget git perl cmake bash gcc fzf fd-find ripgrep luarocks
    ```

- And use this command to clone NV-GOD using **git**:

    ```sh
    git clone https://Xeks4247/NV-GOD.git ~/.config/nvim/ && rm -rf ~/.config/nvim/.git/
    ```

- Then open NeoVim and Enjoy🎉:

    ```sh
    nvim
    ```

</details>

<details>
  <summary>Void Linux (xbps)</summary>

- First install Dependencies through xbps:

    ```sh
    sudo xbps-install -y neovim nodejs python3 curl wget git perl cmake bash gcc fzf fd ripgrep luarocks
    ```

- And use this command to clone NV-GOD using **git**:

    ```sh
    git clone https://Xeks4247/NV-GOD.git ~/.config/nvim/ && rm -rf ~/.config/nvim/.git/
    ```

- Then open NeoVim and Enjoy🎉:

    ```sh
    nvim
    ```

</details>

<details>
  <summary>OpenSUSE Tumbleweed / Leap (zypper)</summary>

- First install Dependencies through zypper:

    ```sh
    sudo zypper install -y neovim nodejs python3 curl wget git perl cmake bash gcc fzf fd ripgrep luarocks
    ```

- And use this command to clone NV-GOD using **git**:

    ```sh
    git clone https://Xeks4247/NV-GOD.git ~/.config/nvim/ && rm -rf ~/.config/nvim/.git/
    ```

- Then open NeoVim and Enjoy🎉:

    ```sh
    nvim
    ```

</details>

<details>
  <summary>Debian and Ubuntu</summary>

- First install Dependencies through apt:

    ```sh
    sudo apt install -y neovim nodejs python3 curl wget git perl cmake bash gcc fzf fd-find ripgrep luarocks
    ```

- And use this command to clone NV-GOD using **git**:

    ```sh
    git clone https://Xeks4247/NV-GOD.git ~/.config/nvim/ && rm -rf ~/.config/nvim/.git/
    ```

- Then open NeoVim and Enjoy🎉:

    ```sh
    nvim
    ```

</details>

<details>
  <summary>Alpine Linux</summary>

- First install Dependencies through apk:

    ```sh
    sudo apk add neovim nodejs python3 curl wget git perl cmake bash gcc fzf fd ripgrep luarocks
    ```

- And use this command to clone NV-GOD using **git**:

    ```sh
    git clone https://Xeks4247/NV-GOD.git ~/.config/nvim/ && rm -rf ~/.config/nvim/.git/
    ```

- Then open NeoVim and Enjoy🎉:

    ```sh
    nvim
    ```

</details>

<details>
  <summary>Other Linux Distros</summary>

- First install these Dependencies With your package manager:
    1. **neovim** version 0.11 or above
    2. And the latest versions of these tools: **luarocks**, **nodejs**, **python3**, **curl**, **wget**, **git**, **perl**, **cmake**, **bash**, gcc, **fzf**, **fd**, **ripgrep**

- And use this command to clone NV-GOD using **git**:

    ```sh
    git clone https://Xeks4247/NV-GOD.git ~/.config/nvim/ && rm -rf ~/.config/nvim/.git/
    ```

- And open NeoVim and Enjoy🎉:

    ```sh
    nvim
    ```

</details>

<details>
  <summary>Windows</summary>

- First install Dependencies through winget:

    ```sh
    winget install neovim nodejs python3 curl wget git perl cmake gcc fzf fd ripgrep luarocks
    ```

- And use this command to clone NV-GOD using **git**:

    ```sh
    git clone https://Xeks4247/NV-GOD.git %AppData%\Local\nvim\ && rmdir %AppData%\Local\nvim\.git\ /s /q
    ```

- Then open NeoVim and Enjoy🎉:

    ```sh
    nvim
    ```

</details>

<details>
  <summary>Android (Through Termux)</summary>

- First Update Termux

    ```sh
    pkg update -y && pkg upgrade -y
    ```

- And install Dependencies through pkg:

    ```sh
    pkg install neovim nodejs python3 curl wget git perl cmake gcc fzf fd ripgrep luarocks stylua lua-language-server -y
    ```

- And use this command to clone NV-GOD using **git**:

    ```sh
    git clone https://Xeks4247/NV-GOD.git ~/.config/nvim/ && rm -rf ~/.config/nvim/.git/
    ```

- Then open NeoVim and Enjoy🎉:

    ```sh
    nvim
    ```

</details>

---

# 📂 File Structure

This is a Main File Structure of NV-GOD

NV-GOD uses [lazy.nvim](https://github.com/folke/lazy.nvim) plugin manager

all configuration is located in $XDG_CONFIG_HOME/nvim or ~/.config/nvim by default

<pre>
 ~/.config/nvim
 📄 init.lua
 📁 lua
 │ 📁 lazy
 │ 📁 colorschemes
 │ │ 📄 catppuccin.lua
 │ │ ...
 │ └ 📄 tokyonight.lua
 │ 📁 plugins
 │ │ 📁 cmp
 │ │ │ 📄 nvim-cmp.lua
 │ │ │ ...
 │ │ └ 📄 cmp-nvim-lsp.lua
 │ │ 📁 dap
 │ │ │ 📄 nvim-dap-go.lua
 │ │ └ 📄 nvim-dap.lua
 │ │ 📁 mason
 │ │ │ 📄 mason-tool-installer.lua
 │ │ │ ...
 │ │ └ 📄 mason.lua
 │ │ 📁 treesitter
 │ │ │ 📄 treesitter.lua
 │ │ │ ...
 │ │ └ 📄 treesitter-endwise.lua
 │ │ 📄 neo-tree.lua
 │ │ 📄 nvim-scrollbar.lua
 │ │ ...
 │ └ 📄 which-key.lua
 │ 📄 core-keymaps.lua
 │ 📄 extra-keymaps.lua
 │ 📄 health.lua
 └ 📄 options.lua
</pre>

# License

NV-GOD Uses MIT-License, This mean you can do whotever what you want with code😜
