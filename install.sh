cat ~/gusvim/banner.txt
echo "\033[1;34m Installing... \033[0m"

echo "\033[1;32m Trying to create symbolic links to .vimrc \033[0m"
ln -s ~/gusvim/vimrc ~/.vimrc
echo "\033[1;32m Trying to create symbolic links to .vim \033[0m"
ln -s ~/gusvim ~/.vim
echo "\033[1;32m Installing Plug... \033[0m"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
