cat ~/gusvim/banner.txt
echo "\033[1;34m Installing... \033[0m"

echo "\033[1;32m Trying to create symbolic links to .vimrc \033[0m"
ln -s ~/gusvim/vimrc ~/.vimrc
echo "\033[1;32m Trying to create symbolic links to .vim \033[0m"
ln -s ~/gusvim ~/.vim
echo "\033[1;32m Installing Dein... \033[0m"
sh dein-install.sh ~/.vim/bundle
