#Dotfiles-Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

##Test
test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
test -r ~/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bash_profile
echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile

##Install zsh
brew install zsh
sh -c “$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)”

brew install z
brew install fzf
brew install tldr

#Main shell
command -v zsh | sudo tee -a /etc/shells
chsh -s $(which zsh)

#Install powerlevel
brew install romkatv/powerlevel10k/powerlevel10k
echo 'source /home/linuxbrew/.linuxbrew/opt/powerlevel10k/powerlevel10k.zsh-theme'