figlet "Installing npm Packages"
npm i -g http-server babel-cli scaffoldme create-react-app yarn
figlet "Installing Zsh"
yaourt -S zsh --noconfirm
figlet "Adding scaffoldme templates"
# Add scaffoldme templates
for dir in $(ls -d /*);
	do
		cd $dir
		scaffoldme add
		cd ..
	done