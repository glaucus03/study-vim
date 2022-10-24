# install neovim
# https://github.com/neovim/neovim/wiki/Installing-Neovim
# https://github.com/neovim/neovim/releases

cp ./vimrc $HOME/.vimrc
mkdir $HOME/.vim
mkdir -p $HOME/.config
ln -s $HOME/.vim $HOME/.config/nvim
ln -s $HOME/.vimrc $HOME/.config/nvim/init.vim

# deno install
# https://deno.land/#installation
curl -fsSL https://deno.land/install.sh | sh

# vim plug install
# https://github.com/junegunn/vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
