# Updates the dotfiles from my common configuration to this repo
# Atom configuration
cd ~
cd .atom
/bin/cp config.cson ~/Documents/dotfiles/atom
/bin/cp snippets.cson ~/Documents/dotfiles/atom
/bin/cp styles.less ~/Documents/dotfiles/atom
cd packages
ls > packages.info
/bin/cp packages.info ~/Documents/dotfiles/atom
echo "Atom dotfiles updated..."
# Bash configuration
cd ~
/bin/cp .bash_logout ~/Documents/dotfiles/bash
/bin/cp .bash_profile ~/Documents/dotfiles/bash
/bin/cp .bashrc ~/Documents/dotfiles/bash
/bin/cp .profile ~/Documents/dotfiles/bash
echo "Bash dotfiles updated..."
# Zsh / Prezto configuration
/bin/cp .zhistory ~/Documents/dotfiles/zsh
/bin/cp .zlogin ~/Documents/dotfiles/zsh
/bin/cp .zlogout ~/Documents/dotfiles/zsh
/bin/cp .zpreztorc ~/Documents/dotfiles/zsh
/bin/cp .zprofile ~/Documents/dotfiles/zsh
/bin/cp .zshenv ~/Documents/dotfiles/zsh
/bin/cp .zshrc ~/Documents/dotfiles/zsh
echo "Zsh Files updated..."
# Emacs configuration
/bin/cp .emacs ~/Documents/dotfiles/
cd ~/Documents/dotfiles
# Apt packages
apt list --installed > aptpackages.info 
echo "Apt packages updated..."
/bin/cp ~/.ipython/profile_default/startup/import.py ~/Documents/dotfiles/ipython
echo "Ipython/Anaconda configuration updated"
# Gnome packages
LOCAL_GNOME=$(ls -b1 ~/.local/share/gnome-shell/extensions/)
UNIVERSAL_GNOME=$(ls -b1 /usr/share/gnome-shell/extensions/)
echo "" > gnomextensions.info
echo " ------ GNOME EXTENSIONS ------\n" >> gnomextensions.info
echo "---System-wide extensions (/usr/share/gnome-shell/extensions/)---\n" >> gnomextensions.info
echo "$UNIVERSAL_GNOME\n" >> gnomextensions.info
echo "---Local user extensions (~/.local/share/gnome-shell/extensions/)---\n" >> gnomextensions.info
echo "$LOCAL_GNOME\n" >> gnomextensions.info
echo "Gnome extensions list updated..."
# Vivaldi Custom CSS
/bin/cp /opt/vivaldi/resources/vivaldi/custom.css ./vivaldi
echo "Vivaldi custom CSS updated..."
