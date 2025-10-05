NV-GOD - The Best NeoVim Distro of ALL Time
Work in Progress

<div align="center"><p>
    <a href="https://github.com/Xeks4237/NV-GOD/releases/latest">
      <img alt="Latest Release:" src="https://img.shields.io/github/v/release/Xeks4247/NV-GOD?style=for-the-badge&logo=starship&color=A6E3A1&logoColor=181825&labelColor=&include_prerelease&sort=semver" />
    </a>
    <a href="https://github.com/Xeks4237/NV-GOD/pulse">
      <img alt="Last Commit:" src="https://img.shields.io/github/last-commit/Xeks4237/NV-GOD?style=for-the-badge&logo=git&color=FAB387&logoColor=F38BA8&labelColor=181825"/>
    </a>
    <a href="https://github.com/Xeks4237/NV-GOD/LICENSE">
      <img alt="License:" src="https://img.shields.io/github/license/Xeks4237/NV-GOD?style=for-the-badge&color=CBA6F7&labelColor=181825" />
    </a>
    <a href="https://github.com/Xeks4237/NV-GOD/stargazers">
      <img alt="Stars:" src="https://img.shields.io/github/stars/Xeks4237/NV-GOD?style=for-the-badge&color=F9E2AF&labelColor=181825" />
    </a>
    <a href="https://github.com/Xeks4237/NV-GOD/issues">
      <img alt="Issues:" src="https://img.shields.io/github/issues/Xeks4237/NV-GOD?style=for-the-badge&color=F38BA8&labelColor=181825" />
    </a>
    <a href="https://github.com/Xeks4237/NV-GOD">
      <img alt="Repo Size:" src="https://img.shields.io/github/repo-size/Xeks4237/NV-GOD?color=B4BEFE&label=Size&style=for-the-badge&labelColor=181825" />
    </a>
</div>

## Description:

NV-GOD is created by Me Xeks4247, Because other distros of NeoVim like LazyVim, AstroNVim and etc uses their own repos for all pre-configured options, plugins, autocmds and etc. It's easy for devs of Distros but it makes most of the configuration hidden from eyes of users, And It takes to MUCH time to find out how it works in their repos

For Advanced users like Me it's really big headache to work with

- You can ask: "Then why I just don't use kickstart.nvim?"
  I know about it, it's a beautifull project but it more about to help new users to make their own NeoVim configs and understand how it works, In difference to kickstart My Project is meant to be FULL NeoVim Distro, BUT in the same time be simple as kickstart.nvim

## Features:

- 😎Available in any platform Linux, Windows, and Android(through Termux)
- 💪Fully Configured LSP Servers for different languages
- ✒️AutoSuggestions for Code with LSP, DAP, and TreSitter support
- ⌨️Non-Colliding Keymaps Without Bloat
- 📝A lot of Comments to help you configure NV-GOD for your needs
- 🤩Highly Customizable UI with a lot of coloschemes for any needs
- 🧭Own Plugin Managers UI Plugin to make Installation of Plugins, LSP, etc easier in VSCode style UI (work in progress...)

## Installation:

- First PLEASE Backup your old config of NeoVim if it exists

- Install dependencies with your package manager:
  1. NeoVim (Needed to be built with **LuaJIT**)
  2. Any MonoSpace [Nerd Font](https://www.nerdfonts.com/) for your Terminal (Choose which one you like)
  3. Terminal with TrueColor support (recommended)
  4. **luarocks**, **npm**, **pip**,(python3), **cargo**, **curl**, **git**, **perl**, **bash** for some plugins
  5. **C** compiler for `nvim-treesitter`, e.g `gcc`. See [Here](https://github.com/nvim-treesitter/nvim-treesitter#requirements)
  6. **fzf**, **fd**, **ripgrep** for Searching of Files and Text in Them

- For Linux and Android(through Termux) use this command to install NV-GOD using Git:

```sh
git clone https://Xeks4247/NV-GOD.git $XDG_CONFIG_HOME/nvim/ && rm -rf $XDG_CONFIG_HOME/nvim/.git/
```

- For Windows, (work in progress)

---

## Future Features which I plan to make:

1. a Plugin to easily manage old versions of NV-GOD and your own Configs through git in UI screen :3 (Optional if you want)

2. GOD Package Manager UI (or just GOD-PM) which gonna be able to Easily install any package manager on first startup and gonna have ability to easily search and install plugins, colorschemes, packs of them(like all plugins of other distros), Custom configs of others who to uses NV-GOD, in simple and slick UI screen (which is gonna customizable) like MarketPlace of VSCode But on Steroids.

3. Made it as much MODULAR as possible, to make it easy to choose what you want from it

4. Made it as much Easy to configure for new users and pro NVim enjoyers than LazyVim, NV-Chad, and AstroNVim Distros

5. And I doesn't gonna use snacks.nvim, mini.nvim, or blink.nvim like plugin packs.
   P.S gonna make my own pack with all plugins which I used for NV-GOD, if someone gonna need it :3)

---

## 📂 File Structure

This is a Main File Structure of NV-GOD, which I plan to use to end,
(Information about it gonna be on the Future WIKI page of NV-GOD)

Package Manager on this example is a [lazy.nvim](https://github.com/folke/lazy.nvim)
If you gonna choose different package manager, then lua/lazy/ directory gonna be chnagedto something else like packer, plug and etc

$XDG_CONFIG_HOME is a ~/.config by default

And if you changed somethink in lua directory then you need to copy files from main "lua directory to the "custom directory (with a same file structure as in lua directory)
It gonna allow you to update NV-GOD to the latest version without losing your settings

<pre>
$XDG_CONFIG_HOME/nvim
├── init.lua
│── lua
│   ├── options.lua
│   ├── keymaps
│   │   ├── core.lua
│   │   ├── extra.lua
│   │   ├── colorschemes.lua
│   │   ├── mason.lua
│   │   ├── ...
│   │   └── treesitter.lua
│   ├── colorschemes
│   │   ├── tokyonight.lua
│   │   ├── ...
│   │   └── catppuccin.lua
│   ├── plugins
│   │   ├── telescope.lua
│   │   ├── treesitter.lua
│   │   ├── ...
│   │   └── nvim-cmp.lua
│   └── lazy
│       ├── bootstrap.lua
│       ├── config.lua
│       ├── plugins.lua
│       ├── colorschemes.lua
│       └── lazy-lock.json
└── custom
    ├── options.lua
    ├── lazy/
    ├── plugins/
    ├── colorschemes/
    └── keymaps/
</pre>

## License

NV-GOD project uses MIT-License, This mean you can do whotever what you want with code😜
