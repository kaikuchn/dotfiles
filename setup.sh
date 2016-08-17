sudo apt update
sudo apt install git silversearcher-ag

# zsh
echo 'Setup zsh'
sudo apt install zsh zsh-syntax-highlighting
mkdir -p .zsh-extensions/pure-prompt
mkdir .zfunctions
cd .zsh-extensions/pure-prompt
curl -O https://raw.githubusercontent.com/sindresorhus/pure/master/async.zsh
curl -O https://raw.githubusercontent.com/sindresorhus/pure/master/pure.zsh
ln -s "$PWD/pure.zsh" "$HOME/.zfunctions/prompt_pure_setup"
ln -s "$PWD/async.zsh" "$HOME/.zfunctions/async"
echo 'make /bin/zsh your default shell'
chsh


# ruby
echo 'Setup Ruby via rbenv'
sudo apt install curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev
cd
git clone git://github.com/sstephenson/rbenv.git .rbenv
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

rbenv install -v 2.3.1
rbenv global 2.3.1

# tmux
sudo apt install tmux xsel
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
~/.tmux/plugins/tpm/bin/install_plugins

# spacemacs
## install emacs 24.5 from source
echo 'Setup spacemacs'
sudo apt-get install gconf-service libacl1 libasound2 libc6 libcairo2 libdbus-1-3 libfontconfig1 libfreetype6 libgconf-2-4 libgdk-pixbuf2.0-0 libgif7 libglib2.0-0 libgnutls30 libgpm2 libgtk-3-0 libice6 libjpeg8 libm17n-0 libmagickcore-6.q16-2 libmagickwand-6.q16-2 libotf0 libpango-1.0-0 libpng12-0 librsvg2-2 libselinux1 libsm6 libtiff5 libtinfo5 libx11-6 libxft2 libxml2 libxpm4 libxrender1 zlib1g
cd
curl -O http://ftp.gnu.org/gnu/emacs/emacs-24.5.tar.gz
tar -zxvf emacs-24.5.tar.gz
cd emacs-24.5
./configure && make -j4 && sudo make install
cd ..
rm -rf emacs-24.5
mv .emacs.d .emacs.d.bak

## clone spacemacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

## link dotfiles
for f in .*; do
  [[ -f $f ]] && ln -s "$PWD/$f" ~/$f
done
