# I don't like plugins
I don't like to extend some third party projects with some third party plugins becuase its often conflicts with my likings and if it breaks i would have no clue about the source that causes the problem. Considering these projects i use in my day-day tasks are pretty well known and difficult to break, so if it does, usually the fault goes over the plugin and i'am not saving some time now to expend more latter.

# Warning
The direct dependencies are listed below and they are probably going to break due to absolute path calls, but don't be afraid to test or at least copy some of the content.

# About configuration
This configuration is pretty basic, i don't like installing a huge amount of fance things to please my eyes, so all dependencies are just necessery for me to do the job (i don't work).

# Dependencies
* [btw](https://archlinux.org/) (Operational System)
* [qtile](https://qtile.org/) (Window Manager)
* [Alacritty](https://github.com/alacritty/alacritty) (Terminal Emulator)
* [Neovim](https://neovim.io/) (Text Editor)
* [Z shell](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH) (Shell)
* [Git](https://git-scm.com/) (Version Control)
* [Tmux](https://github.com/tmux/tmux/wiki) (Terminal Enhancer)

# About Neovim
I'dont have any plugin installed, its a configuration totally from scratch, but it have enough functionality and the UI is pretty as well (you just have to find out how to customize for your likings)

`nvim/init.lua`: Requires the personal configuration files present in `nvim/lua`directory (for organization propose)

`nvim/lua/theme.lua`: Define the UI colors

`nvim/lua/config.lua`: vim.op.(\*) and vim.g.(\*) definitions

`nvim/lua/lsp.lua`: Lsp configuration made using just the buitin lsp and lsp servers binarys (`rust-analyzer` and `clang` for now)

`nvim/lua/map.lua`: Global and buffer especific mappings 

`nvim/lua/lsp\_kind.lua`: Contains the definition of the kinds icons used in completion popup

`nvim/lua/statusline.lua`: Custom statusline from scratch (don't have version control indicators - i don't had time to serach and do that -  and don't have lsp disgnostic information too - i don't like to have that in statusline -)

# About Alacritty
`alacritty/alacritty.yml`: Its a partial copy of the example configuration give by the [project](https://github.com/alacritty/alacritty) git page with some change in font and color

# About Z shell
I don't recomend you to use my configuration file. I say that because its pretty simple with just a customization in the prompt and no plugins. This serves my needs and i know that my approach makes no use of extensibility of zsh

`zsh/zsh_config.zsh` define my personal export to PATH (caution) and my therminal pompt with custom colors and version control branch

# About Tmux
`tmux/tmux.conf`: Redefine the send-prefix bind to `C-s` and customize the statusline

# About Qtile
`qtile/config.py`: Contains the qtile's example configuration and some custom binds (stay tuned with absolute path in lines 58 and 59)

# About documentation
There are no documentation around any configuration file here, but, its pretty simple to undertand considering you know what are the propose of the respective tool you are digging

# Daydream
Some day i will be completelly free of all third party softwares, i'll have my own OS, text editor, browser, version control system and so on, all of that hand made from scratch in C or Rust, without external librarys, anything but the compiler and standard librarys or even my own compiler and librarys kekw.

But for now i think thats ok to deppend on some others effort in doing great and robust software like these, not for nothing they are known in all seven seas.
