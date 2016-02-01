
if [ `echo $SHELL` == '/bin/zsh' ]; then
  echo 'oh-my-zsh has probably already been setup. Exiting.'
else
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  rm -rf ~/.oh-my-zsh/custom
  ln -s . ~/.oh-my-zsh/custom
  rm ~/.zshrc
  ln -s zshrc ~/.zshrc
  source ~/.zshrc
fi
