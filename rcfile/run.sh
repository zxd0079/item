#/bin/sh
cp -r ~/item/rcfile/vim/bundle ~/.vim/
cp ~/item/rcfile/vim/vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 

vim ~/a.txt <<EOF
:PluginInstall
:wq
EOF


sh -c "$(wget -O- https://gitee.com/pocmon/mirrors/raw/master/tools/install.sh)"
cp ~/item/rcfile/zsh/zshrc ~/.zshrc

mv ~/item/rcfile/zsh/bira.zsh-theme ~/.oh-my-zsh/themes/bira.zsh-theme

chsh -s /bin/zsh <<EOF
uc.0079aml
EOF




