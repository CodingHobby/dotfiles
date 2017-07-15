# Installing Dependencies
zypper -n in figlet
zypper -n in git

# Installing vim
clear
figlet "Installing vim..."
zypper -n in vim

# Installing packages and updating
clear
figlet "Installing Google Chrome"
zypper -n ar http://dl.google.com/linux/chrome/rpm/stable/x86_64 Google-Chrome
zypper ref
wget https://dl.google.com/linux/linux_signing_key.pub
rpm --import linux_signing_key.pub
zypper -n in google-chrome-stable
clear
figlet "Installing VSCode"
rpm --import https://packages.microsoft.com/keys/microsoft.asc
sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/zypp/repos.d/vscode.repo'
zypper -n refresh
zypper -n in code
clear
figlet "Installing Kingston Office..."
zypper -n in wps-office
clear
figlet "Installing Everything Else"
zypper -n in $(cat ../Arch/packages/Apps.txt)
clear
figlet "Updating System"
zypper -n ref
zypper -n up
zypper -n dup
clear
figlet "Adding wallpapers..."
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