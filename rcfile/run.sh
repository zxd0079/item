#/bin/sh
cp -r ~/item/rcfile/vim/bundle ~/.vim/
cp ~/item/rcfile/vim/vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 

vim ~/a.txt <<EOF
:PluginInstall
:wq
EOF

git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

cp ~/item/rcfile/zsh/zshrc ~/.zshrc

mv ~/item/rcfile/zsh/bira.zsh-theme ~/.oh-my-zsh/themes/bira.zsh-theme

git clone https://github.com/joelthelion/autojump.git ~/autojump

~/autojump/install.py





git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


chsh -s /bin/zsh <<EOF
uc.0079aml
EOF




