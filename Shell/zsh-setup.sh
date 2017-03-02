# Installing oh-my-zsh
figlet "Installing OH-MY-ZSH..."
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Customizing oh-my-zsh
figlet "Customizing OH-MY-ZSH..."
cp /home/corrado/Dotfiles/Shell/.zshrc /home/corrado
mkdir /home/corrado/.oh-my-zsh/custom/themes
cp /home/corrado/Dotfiles/Shell/arrow.zsh-theme /home/corrado/.oh-my-zsh/custom/themes

source /home/corrado/.zshrc