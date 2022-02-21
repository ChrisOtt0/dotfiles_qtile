if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting
neofetch --disable gpu --color_blocks off --colors 14 2 245 2

# Aliases
alias ls='ls -a'
alias neofetch='neofetch --disable gpu --color_blocks off --colors 14 2 245 2'
alias ranger='ranger .'
alias clear='clear && neofetch --disable gpu --colo4r_blocks off --colors 14 2 245 2'
alias cb='xclip -selection clipboard'
alias vsc='vscodium'

fish ~/Documents/dotfiles_qtile/fish_setup.fish
