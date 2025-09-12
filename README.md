NV-GOD is a Best NeoVim Distro (in future, work in progress...)

NV-GOD is creted by Me, because other distros of NeoVim like LazyVim or AstroNVim uses their own repos like a some pack with different pre-configured options, plugins, autocmds and etc. It's a easy and good choise for devs and new users

But  first it breaks UNIX philosophy because it says:
    One tool is gonna be able to do only one thing and be able to make it good
    It means any pack with a lot of stuff is USELESS
And for advanced users like me who wants to use their work like a base for their own configs, it's a big headache to work with.

- You can say "but what about kickstart.nvim?"
    I know about it, it's a beautifull project but it more about to help new users to make their own NeoVim setup from scratch and understand how it works
    (it taked me 2 min to read their entire repo >:v)

## Why you need to choose NV-GOD
- It's just better🗿, seriously just choose it
(when it gets v1.0 only)

## Future Requirements which gonna be needed - (which I defenetly know)
- Latest version of **NeoVim**
- Latest version of **Git** to install it
- **C** compiler(gcc for example) for some plugins
- **npm** for some plugins
- [Nerd Font](https://www.nerdfonts.com/) **_(optional but recommended, just choose one which you like)_**

## Installation

- Before Starting Installation, PLEASE backup your old config of NVim if it exists
- This command Just gonna rename directorys with your old nvim config and installed plugins from "nvim" to "nvim-backup":

  ```sh
  mv ~/.config/nvim/ ~/.config/nvim-backup/
  mv ~/.local/share/nvim/ ~/.local/share/nvim-backup/
  ```

For Installation of NV-GOD, You need to choose a correct NV-GOD-Starter for your needs, with type of a default setup:
    Full featured IDE setup or
    Scratch setup to configure your own NeoVim setup

- IDE setup (work in progress)
- Scratch Setup (work in progress)

Just create a your own repo on github using NV-GOD-Starter which you choosed as a Template on github, after making it, go over a installation instructions of your template what you choosed

Mostly you just need to clone it from github with git
It gonna allow you to easyly manage your setups versions using git
    P.S I gonna make a plugin to easyly manage old versions of nvim with git in ui screen:)

## Future Features which I plan to make:

- First make it more like a Distro or IDE, because for now it's a one really simple config

- GOD Package Manager UI (or just GPM-UI) which gonna be able to Easyly install any package manager on first startup and gonna have ability to easyly search and install plugins, colorschemes, packs of them(like ability to install all plugins of other distros) and Custom configs of others who to uses NV-GOD, in simple and slick ui screen(which is gonna be Really customizable), like MarketPlace of VSCode, But on Steroids

- Made it as much MODULAR as possible

- Made it as much Easy to configure for new users and pro NVim enjoyers than LazyVim, NV-Chad, and AstroNVim Distros

- And I doesn't gonna use snacks.nvim or mini.nvim like plugin packs because I just gonna use plugins on this packs directly, instead of using someones pre-made packs (gonna make my own pack with all plugins which is made specially for NV-GOD, if someone gonna need it:3)

---

(here gonna be a future video with all other info😅, gonna make it after making at least NV-GOD v1.0)

## 📂 File Structure

This is a Main File Structure of NV-GOD, which I plan to make, If you want to add something or change default settings on your NV-GOD installation...
(Information about it gonna be on future WIKI page of NV-GOD)

Package Manager on this example is a [lazy.nvim](https://github.com/folke/lazy.nvim)
But it gonna be a little bit different on other cases with other package managers(But similar)

<pre>
~/.config/nvim
├─ init.lua
└─ lua
   ├── configs
   │   ├── options.lua
   │   ├── keymaps
   │   │   ├── core.lua
   │   │   ├── telescope.lua
   │   │   ├── ...
   │   │   └── treesitter.lua
   │   ├── colorschemes
   │   │   ├── tokyonight.lua
   │   │   ├── ...
   │   │   └── catppuccin.lua
   │   └── plugins
   │       ├── tokyonight.lua
   │       ├── ...
   │       └── catppuccin.lua
   └── lazy
       ├── plugins.lua
       ├── colorschemes.lua
       ├── lazy.lua
       └── lazy-lock.json

</pre>

- I am not a religious person actually because,
- I use MS-Edge on Gentoo, btw🍷🗿
