# Installing Dependencies
yaourt -S figlet --noconfirm
yaourt -S git --noconfirm

# Installing vim
clear
figlet "Installing vim..."
yaourt -S vim --noconfirm

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
figlet "Installing Kingston Office..."
yaourt -S wps-office --noconfirm
clear
figlet "Installing Everything Else"
yaourt -S /home/corrado/Dotfiles/Arch/packages/Apps.txt --noconfirm
clear
figlet "Updating System"
yaourt -Syu --noconfirm
clear
figlet "Adding wallpaper"
cp ./wallpaper.jpg /usr/share/backgrounds
cp ./wallpaper.jpg /home/corrado/Pictures
figlet "Customizing packages..."
../Shell/config.sh
figlet "Installing NPM modules..."
sudo ../JS/installModules.sh
figlet "Setting up Git..."
../gitSetup.sh
figlet "Setting up ZSH"
../Shell/zsh-setup.sh