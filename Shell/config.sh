# Globally setting git credentials
clear
figlet "Setting git creadentials..."
git config --global user.name="codinghobby@gmail.com"
git config --global user.email="codinghobby@gmail.com"

# Vimrc customization
clear
figlet "Customizing vim..."
cp /home/corrado/Dotfiles/Shell/.vimrc /home/corrado
