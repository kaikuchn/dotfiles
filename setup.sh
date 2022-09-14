# DevContainer Setup

ln -s .aliases $HOME/.aliases
ln -s .gitattributes $HOME/.gitattributes
ln -s .gitconfig $HOME/.gitconfig
ln -s .gitmessage $HOME/.gitmessage
ln -s .global_gitignore $HOME/.global_gitignore

echo "source ~/.aliases" >> $HOME/.bash_profile
echo 'export EDITOR="vi"' >> $HOME/.bash_profile
