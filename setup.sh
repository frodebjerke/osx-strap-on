# Install Xcode tools
xcode-select --install;

# Install or update Homebrew
if hash brew 2>/dev/null; then
    brew update;
    brew upgrade
else
    ruby \
    -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" \
    </dev/null
    brew doctor;
fi

# Install Homebrew requirements
cat brew-requirements.txt | xargs brew install
brew cleanup

# Install or update Cask
if hash brew cask 2>/dev/null; then
    :
else
    brew install caskroom/cask/brew-cask;
    brew tap caskroom/versions
    brew cask doctor;
fi

# Install Cask requirements
cat cask-requirements.txt | xargs brew cask install
brew cask cleanup;

# Install kubectl
if hash kubectl 2>/dev/null; then
  :
else
  gcloud components install kubectl
fi

# Install Gitaware
test -d ~/.bash/git-aware-prompt || `mkdir ~/.bash && git clone git://github.com/jimeh/git-aware-prompt.git ~/.bash/git-aware-prompt`

# Install global npm packages
if hash npm 2>/dev/null; then
	cat npm-global-requirements.txt | xargs sudo npm install -g
fi

# Install python packages
cat python-global-requirements.txt | xargs sudo easy_install

# Setup oh-my-zsh
test -f ~/.zshrc || `./oh-my-zsh/setup.sh`

# Make ssh key
test -d ~/.ssh || ssh-keygen -t rsa

# Add dotfiles
test -d ~/.gitconfig || ln -s $PWD/dotfiles/gitconfig ~/.gitconfig
