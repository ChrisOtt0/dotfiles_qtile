sudo pacman -S \
	discord \
	fish \
	gtop \
	htop \
	neofetch \
	neovim \
	pipewire \
	pipewire-jack \
	psutils \
	qbittorrent \
	ranger \
	ttf-fira-code \
	ttf-jetbrains-mono \
	vlc \
	wezterm

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

# setup fish
echo /usr/local/bin/fish | sudo tee -a /etc/shells
sudo chsh -s /bin/fish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
omf update
set -g EDITOR nvim
set -g BROWSER librewolf
exit

# setup .config folder
cp -r ~/Documents/dotfiles_qtile/.config/ ~/

# setup gtk & icon theme
cp ~/Documents/dotfiles_qtile/gtkrc-2.0 ~/
mkdir ~/.local/share/icons
cp ~/Documents/dotfiles_qtile/icons ~/.local/share/icons
mkdir ~/.themes
cp ~/Documents/dotfiles_qtile/.themes ~/
