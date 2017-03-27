# Installing Dependencies
yaourt -S figlet --noconfirm
yaourt -S banner --noconfirm
yaourt -S git --noconfirm

# Globally setting git username
clear
figet "Setting git creadentials..."
git config --global user.name="codinghobby@gmail.com"
git config --global user.email="codinghobby@gmail.com"

# Installing vim
clear
figlet "Installing vim..."
yaourt -S vim --noconfirm

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
figlet "Installing Kingston Office..."
yaourt -S wps-office --noconfirm
clear
figlet "Installing Everything Else"
yaourt -S /home/corrado/Dotfiles/Arch/packages/Apps.txt --noconfirm
clear
figlet "Updating System"
yaourt -Syu --noconfirm
clear
figlet "Sudoing"
su
clear
figlet "Installing Yarn"
npm install -g yarn 
clear
figlet "Installing npm Packages"
yarn global add http-server create-react-app babel-cli angular-cli
figlet "Adding wallpaper"
cp ./wallpaper.jpg /usr/share/backgrounds