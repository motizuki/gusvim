cat ~/gusvim/banner.txt
echo 'Doing something...'

ln -s ~/gusvim/vimrc ~/.vimrc
ln -s ~/gusvim ~/.vim
sh dein-install.sh ~/.vim/bundle
vim -c 'call dein#update()'