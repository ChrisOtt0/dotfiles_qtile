#!/usr/bin/bash

sudo pacman -Suy \
	brightnessctl \
	cmatrix \
	fish \
	gnome-keyring \
	gtop \
	htop \
	libreoffice-still \
	libretro-mgba \
	libretro-desmume \
  	lua \
	neofetch \
	neovim \
	pipewire \
	pipewire-jack \
	psutils \
  	python \
	qbittorrent \
  	qt5ct \
	ranger \
  	retroarch \
  	shotgun \
	ttf-fira-code \
	ttf-jetbrains-mono \
  	vimiv \
  	virtualbox \
  	virtualbox-host-modules-arch \
	vlc \
	wezterm \
  	xclip

sudo pacman -R \
	feh

yay -S \
	librewolf-bin \
  	nordvpn-bin \
	pipes.sh \
	qt5-styleplugins \
  	vscodium-bin

curl -sLf https://spacevim.org/install.sh | bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# setup background
cd
cp -r ~/Documents/git/personal/dotfiles_qtile/backgrounds ~/.config/
sudo cp -r ~/Documents/git/personal/dotfiles_qtile/backgrounds /usr/share/

# setup lightdm
sudo cp -r ~/Documents/git/personal/dotfiles_qtile/lightdm/slick-greeter.conf /etc/lightdm/

# setup gtk & icon theme
cp -r ~/Documents/git/personal/dotfiles_qtile/gtkrc-2.0 ~/
mkdir ~/.local/share/icons
cp -r ~/Documents/git/personal/dotfiles_qtile/icons ~/.local/share/
sudo cp -r ~/Documents/git/personal/dotfiles_qtile/icons /usr/share/
mkdir ~/.themes
cd ~/.themes
git clone https://github.com/UnnatShaneshwar/AtomOneDarkTheme
git clone https://github.com/dracula/gtk

cd /usr/share/themes
sudo git clone https://github.com/UnnatShaneshwar/AtomOneDarkTheme
sudo git clone https://github.com/dracula/gtk

# setup .config folder
cp -r ~/Documents/git/personal/dotfiles_qtile/.config ~/

# setup fish
echo /usr/local/bin/fish | sudo tee -a /etc/shells
sudo chsh -s /usr/bin/fish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish