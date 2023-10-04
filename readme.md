# NeoVim Configuration

Hello Welcome to my NeoVim Configuration Repository, follow the instructions below to use this configuration:

# Pre Requisites

- NeoVim - (How to install)[https://github.com/neovim/neovim/wiki/Installing-Neovim]
- Plug - (How to Install)[https://github.com/junegunn/vim-plug]

# Installation Process

1. Clone the repository `gh repo clone LFSCamargo/vimrc`
2. Install NeoVim following the installation (here)[https://github.com/neovim/neovim/wiki/Installing-Neovim]
3. Copy the `init.vim` configuration to load the `.vimrc` from the root of your machine, copy and paste it inside the NeoVIM config folder the path should be like this `.config/nvim/init.vim`
4. Install Plug to handle the Plugins following the installation (here)[https://github.com/junegunn/vim-plug]
5. Copy the `.vimrc` to the root folder of your PC `~/.vimrc` is usually the shortcut for Linux, Mac, and WSL Windows; possible locations for the vim config
6. Run the command to open the vim and install the plugins of Plug `nvim +PlugInstall`
7. To setup Github Copilot run `nvim` when the editor opens, and type `:Copilot setup`

# Plugins Included

- Github Copilot: AI Code Generation for Better Productivity
- Neoclide CoC: AutoCompletion and Intellisense
- Polyglot: Syntax Highlighting for many Programming Languages
- Dracula: Theme to make the terminal look Fly
- Vim Tmux: Integration to use Vim alongside TMUX
- Vim Airline: Airline is a bottom bar to show the status of plugins, files, languages, and much more
- Vim ES6: EcmaScript 6 Suport
- CTRL P: Fuzzy file finder like VSCode
- Nerd Tree: Side Bar to show the project files and edit them inside NeoVim/Vim
- Vim GraphQL: GraphQL Support for Vim and Neovim
- Multiple Cursors: Change multiple lines with multiple cursors
