# DevContainer Setup

ln -s .aliases $Home/.aliases
ln -s .gitattributes $Home/.gitattributes
ln -s .gitconfig $Home/.gitconfig
ln -s .gitmessage $Home/.gitmessage
ln -s .global_gitignore $Home/.global_gitignore

echo "source ~/.aliases" >> $HOME/.bash_profile
echo 'export EDITOR="vi"' >> $HOME/.bash_profile
