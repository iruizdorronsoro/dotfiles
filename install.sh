#Dotfiles-Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

#install all files
brew bundle

##Install zsh
sh -c “$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)”

#Add siblings
ln -s ~/dotfiles/.zshrc/ ~/.zshrc
ln -s ~/dotfiles/.gitconfig/ ~/.gitconfig

chsh -s /bin/zsh
