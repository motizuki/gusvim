cat ~/gusvim/banner.txt
echo 'Doing something...'

ln -s ~/gusvim/vimrc ~/.vimrc
ln -s ~/gusvim ~/.vim
sh dein-install.sh ~/.vim/bundle

echo ''
echo ''
echo "\033[1;31m IGNORE ERRORS BELOW - IT SHOULD GO AWAY WHEN DEIN INSTALL ALL PLUGINS \033[0m"
echo ''
echo ''
vim -c 'call dein#update()'