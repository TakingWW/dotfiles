# I don't like plugins
I don't like to extend some third party projects with some third party plugins becuase its often conflicts with my likings and if it breaks i would have no clue about the source that causes the problem. Considering these projects i use in my day-day tasks are pretty well know and difficult to break, so if it does usually the fault goes over the plugin and i'am not save some time now to expend more latter.

# Usage
The direct dependencies are listed below. This is probably going to break because i placed a lot of static directorys calls (absolute path).

# About configuration
This configuration is pretty basic, i don't like installing a huge amount of fance things to please my eyes, so all dependencies are just necessery for me to do the job (i don't work).

# Dependencies
* btw (Operational System)
* qtile (Window Manager)
* Alacritty (Terminal Emulator)
* Neovim (Text Editor)
* Z shell (Shell)
* Git (Version Control)
* Tmux (Terminal Enhancer)

# About Neovim
I'dont have any plugin installed, its a configuration totally from scratch, but it have a lot of functionality and the UI is pretty as well (you just have to find out how to customize for your likings)
`nvim/init.lua`: Requires the personal configuration files present in `nvim/lua`directory (for organization propose)
`nvim/lua/theme.lua`: Define the UI colors
`nvim/lua/config.lua`: vim.op.(\*) and vim.g.(\*) definitions
nvim/lua/lsp.lua`: Lsp configuration made using just the buitin lsp and lsp servers binarys (`rust-analyzer` and `clang` for now)
`nvim/lua/map.lua`: Global and buffer especific mappings 
`nvim/lua/lsp\_kind.lua`: Contains the definition of the kinds icons used in completion popup
`nvim/lua/statusline.lua`: Custom statusline from scratch (don't have version control indicators - i don't had time to serach and do that -  and don't have lsp disgnostic information too - i don't like to have that in statusline -)

# About Alacritty
There's not much to talk about alacritty
`alacritty/alacritty.yml`: Its a partial copy of the example configuration give by the project git page with some change in font and color

# About Z shell
I don't recomend you to use this configuration. I say that because its pretty simple with just a customization in the prompt and no plugins. This serves my needs and i know that my approach makes no use of extensibility of zsh
`zsh/zsh_config.zsh` define my personal export to PATH (caution) and my therminal pompt with custom colors and version control branch

# About Tmux
`tmux/tmux.conf`: Redefine the send-prefix bind to `C-s` and customize the statusline

# About Qtile
`qtile/config.py`: Contains the example configuration of qtile project and some custom binds (stay tuned with absolute path in lines 58 and 59)

# About documentation
There are no documentation around any configuration file here, but, its pretty simple to undertand considering you know what are the propose of the tool (you are digging)
