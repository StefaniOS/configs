# Install with Dropbox
$ ./setup.sh 

#parameters
--hard: Remove all folders and clone again

# Manual Setup

Navigate to `configs` folder

#Oh My Zsh

#Install oh-my-zsh

`sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

#Overwrite zshrc

`rm ~/.zshrc & cp zsh/.zshrc ~/.zshrc`

#Install zsh plugins

	# Install zsh-syntax-highlighting
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

	# Install zsh-autosuggestions
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

#Install cdimascio-lambda.zsh-theme
	#Clone/Download theme: https://github.com/cdimascio/lambda-zsh-theme
	#Navigate to downloaded folder and run the following command: 

`cp cdimascio-lambda.zsh-theme ~/.oh-my-zsh/themes`

#Update zshrc
	`. ~/.zshrc`

# Amethyst
`rm ~/Library/Preferences/com.amethyst.Amethyst.plist & cp amethyst/com.amethyst.Amethyst.plist ~/Library/Preferences`

# Karabiner
`rm -rf ~/.config/karabiner & cp -R karabiner ~/.config`

# Neovim
`$ brew install neovim`

#Make Neovim default editor
`export EDITOR="nvim"`

#Install vim-plug for neovim

`sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'`
      
run :PlugInstall in neovim
       
# iTerm 2

`rm ~/Library/Preferences/com.googlecode.iterm2.plist & cp iterm2/com.googlecode.iterm2.plist ~/Library/Preferences`
