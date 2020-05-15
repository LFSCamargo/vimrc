echo "⚡️  Started the installation of the vim config"

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  # installation on linux systems
  echo "🚀  Installing plug package manager"
  sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  echo "🔥  Copying the init vim to the .config folder"
  cp -rf init.vim ~/.config/nvim
  echo "⚡️  Installing vim plugins"
  nvim +PlugInstall
elif [[ "$OSTYPE" == "darwin"* ]]; then
  # installation on macos systems
  echo "🚀  Installing plug package manager"
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  echo "🔥  Copying the init vim to the .config folder"
  cp -rf init.vim ~/.config/nvim
  echo "⚡️  Installing vim plugins"
  nvim +PlugInstall
elif [[ "$OSTYPE" == "cygwin" ]] then
  echo "🚀  Installing plug package manager"
  sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  echo "🔥  Copying the init vim to the .config folder"
  cp -rf init.vim ~/.config/nvim
  echo "⚡️  Installing vim plugins"
  nvim +PlugInstall
fi
