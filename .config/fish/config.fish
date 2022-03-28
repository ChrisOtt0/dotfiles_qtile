if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting
neofetch --disable gpu --color_blocks off --colors 13 206 208 13

# Aliases
alias ls='ls -a'
alias neofetch='neofetch --disable gpu --color_blocks off --colors 14 2 245 2'
alias cb='xclip -selection clipboard'
alias vsc='vscodium'
alias py='python'
alias passmn='python ~/Documents/git/personal/passmn/main.py'
alias msave='fish ~/Documents/scripts/fish/msave.fish'
alias mload='fish ~/Documents/scripts/fish/mload.fish'