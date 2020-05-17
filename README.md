#Install
$ ./setup.sh 

#parameters
--hard: Remove all folders and clone again

#Manual Setup

#Navigate to configs folder


# Oh My Zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Overwrite zshrc
rm ~/.zshrc & cp zsh/.zshrc ~/.zshrc

# Install zsh plugins

	# Install zsh-syntax-highlighting
	brew install zsh-syntax-highlighting

	# Install zsh-autosuggestions
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install cdimascio-lambda.zsh-theme
# Clone/Download theme: https://github.com/cdimascio/lambda-zsh-theme
# Navigate to downloaded folder and run the following command: 

cp cdimascio-lambda.zsh-theme ~/.oh-my-zsh/themes

# Update zshrc
. ~/.zshrc

# Karabiner
rm -rf ~/.config/karabiner & cp -R karabiner ~/.config

# Neovim
brew install neovim

# iTerm 2
rm ~/Library/Preferences/com.googlecode.iterm2.plist & cp iterm2/com.googlecode.iterm2.plist ~/Library/Preferences

