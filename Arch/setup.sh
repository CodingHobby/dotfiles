# Installing Dependencies
pacman -S figlet --noconfirm
pacman -S banner --noconfirm

# Installing vim
clear
figlet "Installing vim..."
pacman -S vim --noconfirm

# Vimrc customization
clear
figlet "Customizing vim..."
cp /home/corrado/Dotfiles/Shell/.vimrc /home/corrado

# Yaourtrc
clear
figlet "Customizing yaourt..."
cp /home/corrado/Dotfiles/Arch/.yaourtrc /home/corrado

# Installing packages and updating
clear
figlet "Installing Google Chrome"
yaourt -S google-chrome --noconfirm
clear
figlet "Installing VSCode"
yaourt -S visual-studio-code --noconfirm
clear
figlet "Installing Everything Else"
yaourt -S /home/corrado/Dotfiles/Arch/packages/Apps.txt --noconfirm
clear
figlet "Updating System"
pacman -Syu --noconfirm