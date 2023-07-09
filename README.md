# Usage
The direct dependencies are listed below. This is probably going to break because i placed a lot of static directorys calls (absolute path).

# About configuration
This configuration is pretty basic, i don't like installing a huge amount of fance things to please my eyes, so all dependencies are just necessery for me to do the job (i don't work).

# Dependencies
* btw (Operational System)
* qtile (Window Manager)
* Alacritty (Terminal Emulator)
* Neovim (Text Editor)
* Zshell (Shell)
* Git (Version Control)
* Tmux (Terminal Enhancer)

# About Neovim
I'dont have any plugin installed, its a configuration totally from scratch, but it have a lot of functionality and the UI is pretty as well (you just have to find out how to customize for your likings)
## nvim/init.lua 
Requires the personal configuration files present in `nvim/lua`directory (for organization propose)
## nvim/lua/theme.lua
Define the UI colors
## nvim/lua/config.lua
vim.op.(\*) and vim.g.(\*) definitions
## nvim/lua/lsp.lua
Lsp configuration made using just the buitin lsp and lsp servers binarys (`rust-analyzer` and `clang` for now)
## nvim/lua/map.lua
Global and buffer especific mappings 
## nvim/lua/lsp\_kind.lua
Contains the definition of the kinds icons used in completion popup
## nvim/lua/statusline.lua
Custom statusline from scratch (don't have version control indicators - i don't had time to serach and do that -  and don't have lsp disgnostic information too - i don't like to have that in statusline -)

# About documentation
There are no documentation around any configuration file here, but, its pretty simple to undertand considering you know what are the propose of the tool (you are digging)
