sudo pacman -Suy \
	cmatrix \
	discord \
	fish \
	gtop \
	htop \
  libreoffice-still \
  libretro-mgba \
  libretro-desmume \
  lua \
	neofetch \
	neovim \
  nordvpn \
	pipewire \
	pipewire-jack \
	psutils \
  python \
	qbittorrent \
	ranger \
  retroarch \
	ttf-fira-code \
	ttf-jetbrains-mono \
  virtualbox \
  virtualbox-host-modules-arch \
	vlc \
	wezterm \
  xclip

sudo pacman -R \
	feh

yay -S \
	librewolf \
	pipes.sh \
	qt5-styleplugins \
  vscodium-bin

curl -sLf https://spacevim.org/install.sh | bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

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

# setup spacevim config
cp ~/Documents/dotfiles_qtile/.SpaceVim.d/ ~/
