sudo pacman -S \
	discord \
	gtop \
	htop \
	neovim \
	pipewire \
	pipewire-jack \
	psutils \
	qbittorrent \
	ranger \
	ttf-fira-code \
	ttf-jetbrains-mono \
	vlc

sudo pacman -R \
	feh

yay -S \
	librewolf \
	qt5-styleplugins

# setup background
cd
sudo cp -r ~/Documents/dotfiles_qtile/backgrounds ~/.config/
sudo cp -r ~/Documents/dotfiles_qtile/backgrounds /usr/share/

# setup lightdm
sudo cp -r ~/Documents/dotfiles_qtile/lightdm/slick-greeter.conf /etc/lightdm/

# setup gtk & icon theme
cp ~/Documents/dotfiles_qtile/gtkrc-2.0 ~/

# setup .config folder
cp -r ~/Documents/dotfiles_qtile/.config/ ~/


