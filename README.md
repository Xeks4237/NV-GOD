<center>NV-GOD - The Best NeoVim Distro of ALL Time</center>

# Description

NV-GOD is created by Me [Xeks4237](https://codeberg.org/Xeks4237/NV-GOD) because other distros of NeoVim like LazyVim, AstroNVim and NVCHAD are bloated

- Complies with UNIX philosophy: "One tool should do one thing and do it right" - Becuase of this statement NV-GOD don't uses plugins like telescope or neotree, because everything what they do can be replaced with external tools

- Distro by self is hosted, updated, and improved on [codeberg](https://codeberg.org/Xeks4237/NV-GOD) with read only mirrors of it on [gitlab](https://gitlab.com/Xeks4237/NV-GOD) and [github](https://github.com/Xeks4237/NV-GOD)

# Installation

### Before Starting

1. Use some terminal with TrueColor support (recommended)
2. Install and choose any [NerdFont](https://www.nerdfonts.com) what you like in you terminal (recommended)

### System Specific Installation

<details>
  <summary>Arch Linux</summary>

- First install Dependencies through pacman:

  ```sh
  pacman -Syu neovim nodejs python3 curl wget git perl cmake bash gcc fzf fd ripgrep luarocks
  ```

- And use this command to clone NV-GOD using **git**:

  ```sh
  git clone https://codeberg.org/Xeks4237/NV-GOD.git "${XDG_CONFIG_HOME:-$HOME/.config/}/nvim/" && rm -rf "${XDG_CONFIG_HOME:-$HOME/.config/}/nvim/.git/"
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
  dnf install -y neovim nodejs python3 curl wget git perl cmake bash gcc fzf fd-find ripgrep luarocks
  ```

- And use this command to clone NV-GOD using **git**:

  ```sh
  git clone https://codeberg.org/Xeks4237/NV-GOD.git "${XDG_CONFIG_HOME:-$HOME/.config/}/nvim/" && rm -rf "${XDG_CONFIG_HOME:-$HOME/.config/}/nvim/.git/"
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
  xbps-install -y neovim nodejs python3 curl wget git perl cmake bash gcc fzf fd ripgrep luarocks
  ```

- And use this command to clone NV-GOD using **git**:

  ```sh
  git clone https://codeberg.org/Xeks4237/NV-GOD.git "${XDG_CONFIG_HOME:-$HOME/.config/}/nvim/" && rm -rf "${XDG_CONFIG_HOME:-$HOME/.config/}/nvim/.git/"
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
  zypper install -y neovim nodejs python3 curl wget git perl cmake bash gcc fzf fd ripgrep luarocks
  ```

- And use this command to clone NV-GOD using **git**:

  ```sh
  git clone https://codeberg.org/Xeks4237/NV-GOD.git "${XDG_CONFIG_HOME:-$HOME/.config/}/nvim/" && rm -rf "${XDG_CONFIG_HOME:-$HOME/.config/}/nvim/.git/"
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
  apt install -y neovim nodejs python3 curl wget git perl cmake bash gcc fzf fd-find ripgrep luarocks
  ```

- And use this command to clone NV-GOD using **git**:

  ```sh
  git clone https://codeberg.org/Xeks4237/NV-GOD.git "${XDG_CONFIG_HOME:-$HOME/.config/}/nvim/" && rm -rf "${XDG_CONFIG_HOME:-$HOME/.config/}/nvim/.git/"
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
  apk add neovim nodejs python3 curl wget git perl cmake bash gcc fzf fd ripgrep luarocks
  ```

- And use this command to clone NV-GOD using **git**:

  ```sh
  git clone https://codeberg.org/Xeks4237/NV-GOD.git "${XDG_CONFIG_HOME:-$HOME/.config/}/nvim/" && rm -rf "${XDG_CONFIG_HOME:-$HOME/.config/}/nvim/.git/"
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
  git clone https://codeberg.org/Xeks4237/NV-GOD.git "${XDG_CONFIG_HOME:-$HOME/.config/}/nvim/" && rm -rf "${XDG_CONFIG_HOME:-$HOME/.config/}/nvim/.git/"
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
  git clone https://codeberg.org/Xeks4237/NV-GOD.git %AppData%\Local\nvim\ && rmdir %AppData%\Local\nvim\.git\ /s /q
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
  git clone https://codeberg.org/Xeks4237/NV-GOD.git "${XDG_CONFIG_HOME:-$HOME/.config/}/nvim/" && rm -rf "${XDG_CONFIG_HOME:-$HOME/.config/}/nvim/.git/"
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

All configuration is located in $XDG_CONFIG_HOME/nvim or ~/.config/nvim on "Linux", MacOs, Android, and %AppData%\Local\nvim\ on Windows

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
