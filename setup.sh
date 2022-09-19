# DevContainer Setup

cp .aliases $HOME/.aliases
cp .gitattributes $HOME/.gitattributes
cp .gitconfig $HOME/.gitconfig
cp .gitmessage $HOME/.gitmessage
cp .global_gitignore $HOME/.global_gitignore

echo "source ~/.aliases" >> $HOME/.bashrc
echo 'export GIT_EDITOR="vi"' >> $HOME/.bashrc
