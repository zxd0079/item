#/bin/sh
cp -r ~/item/rcfile/vim/bundle ~/.vim/
cp ~/item/rcfile/vim/vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 

vim ~/a.txt <<EOF
:PluginInstall
:wq
EOF

git clone http://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

cp ~/item/rcfile/zsh/zshrc ~/.zshrc

mv ~/item/rcfile/zsh/bira.zsh-theme ~/.oh-my-zsh/themes/bira.zsh-theme

chsh -s /bin/zsh <<EOF
uc.0079aml
EOF




