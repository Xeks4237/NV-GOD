<center>NV-GOD - The Best NeoVim Distro of ALL Time</center>

# Description

NV-GOD is created by Me [Xeks4237](https://codeberg.org/Xeks4237/NV-GOD) because other distros of NeoVim like LazyVim, AstroNVim and NVCHAD are bloated

- Complies with UNIX philosophy: "One tool should do one thing and do it right" - Because of this statement NV-GOD don't uses plugins like telescope or neotree, because everything what they do can be replaced with external tools

- Work on distro are made on [codeberg](https://codeberg.org/Xeks4237/NV-GOD) with read only mirrors of it on [gitlab](https://gitlab.com/Xeks4237/NV-GOD) and [github](https://github.com/Xeks4237/NV-GOD)

# Installation

### Before Starting

1. Be sure to backup your old config of NeoVim if it exists
2. Use some terminal with TrueColor support (recommended)
3. Install and choose any [NerdFont](https://www.nerdfonts.com) what you like in you terminal (recommended)

### System Specific Installation

<details>
  <summary>Arch Linux</summary>

- 1. Install NeoVim and Git through **pacman**:

  ```sh
  pacman -Syu neovim git
  ```

- 2. Use this command to clone NV-GOD using **git**:

  ```sh
  git clone https://codeberg.org/Xeks4237/NV-GOD.git "${XDG_CONFIG_HOME:-$HOME/.config/}/nvim/" && rm -rf "${XDG_CONFIG_HOME:-$HOME/.config/}/nvim/.git/"
  ```

- 3. Open NeoVim and Enjoy🎉:

  ```sh
  nvim
  ```

</details>

<details>
  <summary>Fedora</summary>

- 1. Install NeoVim and Git through **dnf**:

  ```sh
  dnf install -y neovim
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

- 1. Install NeoVim and Git through **xbps**:

  ```sh
  xbps-install -y neovim
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

- 1. Install NeoVim and Git through **zypper**:

  ```sh
  zypper install -y neovim
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

- 1. Install NeoVim and Git through **apt**:

  ```sh
  apt install -y neovim
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

- 1. Install NeoVim through **apk**:

  ```sh
  apk add neovim
  ```

- 2. Use this command to clone NV-GOD using **git**:

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

- 1. Install latest version of **NeoVim** 0.12 or above

- 2. And use this command to clone NV-GOD using **git**:

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

- 1. Install NeoVim and Git through **winget**:

  ```sh
  winget install neovim git
  ```

- 2. Use this command to clone NV-GOD using **git**:

  ```sh
  git clone https://codeberg.org/Xeks4237/NV-GOD.git %AppData%\Local\nvim\ && rmdir %AppData%\Local\nvim\.git\ /s /q
  ```

- 3. Open NeoVim and Enjoy🎉:

  ```sh
  nvim
  ```

</details>

<details>
  <summary>Android (Through Termux)</summary>

- 1. Update Termux

  ```sh
  pkg update -y && pkg upgrade -y
  ```

- 2. Install NeoVim, Git and needed packages through **pkg**:

  ```sh
  pkg install git neovim stylua lua-language-server -y
  ```

- 3. Use this command to clone NV-GOD using **git**:

  ```sh
  git clone https://codeberg.org/Xeks4237/NV-GOD.git "${XDG_CONFIG_HOME:-$HOME/.config/}/nvim/" && rm -rf "${XDG_CONFIG_HOME:-$HOME/.config/}/nvim/.git/"
  ```

- 4. Open NeoVim and Enjoy🎉:

  ```sh
  nvim
  ```

</details>

---

# 📂 File Structure

NV-GOD uses builtin plugin manager of NeoVim and
This is a main file structure of NV-GOD:

<pre>
 init.lua
 lua/
 ├─ autocmds.lua
 ├─ core-keymaps.lua
 ├─ options.lua
 └─ plugin/
    ├─ alpha.lua
    ├─ autopairs.lua
    ├─ catppuccin.lua
    ├─ conform.lua
    ├─ dracula.lua
    ├─ gitsigns.lua
    ├─ gruvbox.lua
    ├─ lualine.lua
    ├─ mason-lspconfig.lua
    ├─ mason-tool-installer.lua
    ├─ mason.lua
    ├─ material.lua
    ├─ noice.lua
    ├─ nvim-cmp.lua
    ├─ nvim-colorizer.lua
    ├─ nvim-lspconfig.lua
    ├─ nvim-notify.lua
    ├─ nvim-web-devicons.lua
    ├─ plenary.lua
    ├─ quicker.lua
    ├─ render-markdown.lua
    ├─ todo-comments.lua
    ├─ tokyonight.lua
    ├─ treesitter-context.lua
    ├─ treesitter-endwise.lua
    ├─ treesitter.lua
    └─ which-key.lua
</pre>

# License

NV-GOD Uses MIT license because it is superior
