brew install git the_silver_searcher

# zsh
echo 'Setup zsh'
brew install zsh zsh-syntax-highlighting
cd
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
brew install rbenv ruby-build

rbenv install 2.7.1
rbenv global 2.7.1

# elixir
echo 'Setup Elixir via exenv'
brew install exenv elixir-build erlang

exenv install 1.10.3
exenv global 1.10.3

# tmux
brew install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
~/.tmux/plugins/tpm/bin/install_plugins

# spacemacs
## install emacs 24.5 from source
echo 'Setup spacemacs'
brew tap d12frosted/emacs-plus
brew install emacs-plus
ln -s /usr/local/opt/emacs-plus/Emacs.app /Applications
echo "  (add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
  (add-to-list 'default-frame-alist '(ns-appearance . light))" >> ~/.emacs.d/init.el

## clone spacemacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

## link dotfiles
for f in .*; do
  [[ -f $f ]] && ln -s "$PWD/$f" ~/$f
done
