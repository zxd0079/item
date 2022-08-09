#/bin/sh
cp -r ~/item/rcfile/vim/bundle ~/.vim/
cp ~/item/rcfile/vim/vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 

vim ~/a.txt <<EOF
:PluginInstall
:wq
EOF

cp -r ~/item/rcfile/zsh/oh-my-zsh ~/.oh-my-zsh
cp ~/item/rcfile/zsh/zshrc ~/.zshrc

chsh -s /bin/zsh <<EOF
uc.0079aml
EOF




