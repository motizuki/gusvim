cat ~/gusvim/banner.txt
echo 'Doing something...'

ln -s ~/gusvim/vimrc ~/.vimrc
ln -s ~/gusvim ~/.vim
sh dein-install.sh ~/.vim/bundle
vim -u ~/gusvim/dein-only-vimrc -c 'call dein#update()'