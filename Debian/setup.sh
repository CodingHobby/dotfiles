# TODO: finish writing script for programs that are not in the repos

# Update system
apt-get-update
# Installing Dependencies
apt-get -y install figlet
apt-get -y install git

# Installing vim
clear
figlet "Installing vim..."
apt-get -y install vim

# Installing packages and updating
clear
figlet "Installing Google Chrome"
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
apt-get update
apt-get install google-chrome-stable

clear
figlet "Installing VSCode"
sudo wget -O - https://tagplus5.github.io/vscode-ppa/ubuntu/gpg.key | sudo apt-key add - && \
sudo wget -O /etc/apt/sources.list.d/vscode.list https://tagplus5.github.io/vscode-ppa/ubuntu/vscode.list && \
sudo apt update &&
sudo apt install code code-insiders

clear
figlet "Installing Kingston Office..."
wget -O wps-office.deb http://kdl.cc.ksosoft.com/wps-community/download/a21/wps-office_10.1.0.5672~a21_amd64.deb
sudo dpkg -i wps-office.deb
sudo apt-get -f install && rm wps-office.deb
wget -O web-office-fonts.deb http://kdl.cc.ksosoft.com/wps-community/download/fonts/wps-office-fonts_1.0_all.deb
sudo dpkg -i web-office-fonts.deb
clear
figlet "Installing Everything Else"
apt-get -y install $(cat /home/corrado/Dotfiles/Arch/packages/Apps.txt)
clear
figlet "Updating System"
apt-get -y update && apt-hry -y upgrade
clear
figlet "Adding wallpaper"
cp ./wallpaper.jpg /usr/share/backgrounds
figlet "Customizing packages..."
../Shell/config.sh
figlet "Installing NPM modules"
../JS/installModules.sh
figlet "Setting up ZSH"
../Shell/zsh-setup.sh