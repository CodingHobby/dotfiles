# Installing oh-my-zsh
figlet "Installing OH-MY-ZSH..."
pacman -S zsh --noconfirm
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Customizing oh-my-zsh
figlet "Customizing OH-MY-ZSH..."
cp /home/corrado/Dotfiles/Shell/.zshrc /home/corrado
if ! [ -d "/home/corrado/.oh-my-zsh/custom/themes" ]; then
	mkdir /home/corrado/.oh-my-zsh/custom/themes
fi
	cp /home/corrado/Dotfiles/Shell/arrow.zsh-theme /home/corrado/.oh-my-zsh/custom/themes

source /home/corrado/.zshrc