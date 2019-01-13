#!/bin/bash

echo "Setup config files started..."

#oh-my-zsh
ln -sfv $(pwd)/zsh/.zshrc ~/.zshrc

OH_MY_ZSH_CUSTOM=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}
if [ "$1" == "--hard" ]; then
	rm -rf $OH_MY_ZSH_CUSTOM/themes/powerlevel9k
	rm -rf $OH_MY_ZSH_CUSTOM/themes/lambda-zsh-theme
	
	rm -rf $OH_MY_ZSH_CUSTOM/plugins/zsh-autosuggestions
	rm -rf $OH_MY_ZSH_CUSTOM/plugins/zsh-syntax-highlighting
fi

#install themes
git clone https://github.com/bhilburn/powerlevel9k.git $OH_MY_ZSH_CUSTOM/themes/powerlevel9k
git clone https://github.com/cdimascio/lambda-zsh-theme.git $OH_MY_ZSH_CUSTOM/themes/lambda-zsh-theme

#install plugins
git clone https://github.com/zsh-users/zsh-autosuggestions $OH_MY_ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $OH_MY_ZSH_CUSTOM/plugins/zsh-syntax-highlighting

#nvim
		#curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
		#https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

nvim_dir="$HOME/.config/nvim"
if [ ! -d  $nvim_dir ]; then
	mkdir -p $nvim_dir
fi
ln -sfv $(pwd)/nvim/init.vim ~/.config/nvim/init.vim

#tmux
ln -sfv $(pwd)/tmux/.tmux.conf ~
ln -sfv $(pwd)/tmux/.tmux.conf.local ~

if [[ "$(uname)" == "Darwin" ]]; then
	# MacOS

	#Install fonts
	cp $(pwd)/fonts/* ~/Library/Fonts

	#karabiner
	rm -rf ~/.config/karabiner
	ln -sfn $(pwd)/karabiner ~/.config
else
  # Linux
  font_dir="$HOME/.local/share/fonts"
  mkdir -p $font_dir
	cp $(pwd)/fonts/* $font_dir
fi

#echo "Configuration done!"
