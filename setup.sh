# DevContainer Setup

# Helps me understand where we are and what is available
echo "ENV:"
env

echo "PWD:"
pwd

ln .aliases $HOME/.aliases
ln .gitattributes $HOME/.gitattributes
ln .gitconfig $HOME/.gitconfig
ln .gitmessage $HOME/.gitmessage
ln .global_gitignore $HOME/.global_gitignore

echo "source ~/.aliases" >> $HOME/.bash_profile
echo 'export EDITOR="vi"' >> $HOME/.bash_profile
