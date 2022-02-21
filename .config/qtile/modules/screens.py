from libqtile import bar
from .widgets import *
from libqtile.config import Screen
import os

colors = colors_atom_one_dark

screens = [
    Screen(
        wallpaper = "~/.config/backgrounds/background.jpeg",
        wallpaper_mode = "stretch",
        top=bar.Bar(
            [   
                widget.Sep(padding=8, linewidth=0, background=colors[5]),
                widget.Image(filename='~/.config/qtile/eos-c.png', margin=3, background=colors[5], mouse_callbacks={'Button1': lambda: qtile.cmd_spawn("rofi -show combi")}),
                widget.Sep(padding=4, linewidth=0, background=colors[5]), 
                widget.GroupBox(
                                highlight_method='text',
                                this_screen_border=colors[2],
                                this_current_screen_border=colors[2],
                                active=colors[8],
                                inactive=colors[3],
                                background=colors[5]),
                widget.Sep(padding=3, linewidth=0, background=colors[5]),
                widget.TextBox(
                       text = '',
                       padding = 0,
                       fontsize = 28,
                       foreground=colors[1],
                       background=colors[5],
                       ),    
                widget.Sep(padding=4, linewidth=0, background=colors[1]),
                widget.Prompt(),
                widget.Spacer(length=5),
                widget.WindowName(foreground=colors[10],fmt='{}'),
                widget.Systray(),
                widget.Sep(padding=3, linewidth=0, background=colors[1]),
                widget.TextBox(
                       text = '',
                       padding = 0,
                       fontsize = 28,
                       foreground=colors[5],
                       background=colors[1]
                       ), 
                widget.Sep(padding=8, linewidth=0, background=colors[5]), 
                volume,
                widget.Sep(padding=6, linewidth=0, background=colors[5]), 
                widget.TextBox(                                                                    
                       text = '',
                       padding = 0,
                       fontsize = 28,
                       foreground=colors[1],
                       background=colors[5],
                       ),   
                widget.CurrentLayoutIcon(scale=0.55),
                widget.TextBox(
                       text = '',
                       padding = 0,
                       fontsize = 28,
                       foreground=colors[5],
                       background=colors[1]
                       ),    
                widget.Sep(padding=3, linewidth=0, background=colors[5]), 
                widget.Clock(format=' %Y-%m-%d %a %H:%M %p',
                             background=colors[5],
                             foreground=colors[12]),
                                                widget.TextBox(                                                
                                                
                       text = '',
                       padding = 0,
                       fontsize = 28,
                       foreground=colors[1],
                       background=colors[5],
                       ),   
                widget.Sep(padding=3, linewidth=0, background=colors[1]), 
                widget.TextBox(
                    text='',
                    mouse_callbacks= {
                        'Button1':
                        lambda: qtile.cmd_spawn(os.path.expanduser('~/.config/rofi/powermenu.sh'))
                    },
                    foreground=colors[13]
                ),
                widget.Sep(padding=8, linewidth=0, background=colors[1]), 
                
            ],
            28,  # height in px
            background=colors[1]  # background color
        ),
        bottom=bar.Bar(
            [
                widget.Sep(padding=15, linewidth=0, background=colors[5]),
                widget.Net(
                    background=colors[5],
                    foreground=colors[12],
                    format=' {down} ↓↑ {up}',
                    padding=6,
                    ),
                widget.Sep(padding=15, linewidth=0, background=colors[5]), 
                widget.TextBox(
                       text = '',
                       padding = 0,
                       fontsize = 28,
                       foreground=colors[5],
                       background=colors[1]
                       ),
                widget.Sep(padding=15, linewidth=0, background=colors[1]),
                widget.Spacer(length=1030),
                widget.TextBox(
                       text = '',
                       padding = 0,
                       fontsize = 28,
                       foreground=colors[1],
                       background=colors[5]
                       ),
                widget.CPU(
                    fmt=' {}',
                    background=colors[5],
                    foreground=colors[4],
                    padding=10,
                    ),
                widget.TextBox(
                       text = '',
                       padding = 0,
                       fontsize = 28,
                       foreground=colors[1],
                       background=colors[5]
                       ),
                widget.Memory(
                    background=colors[1],
                    foreground=colors[9],
                    padding=6,
                    fmt=' {}',
                    ),
                widget.TextBox(
                       text = '',
                       padding = 0,
                       fontsize = 28,
                       foreground=colors[5],
                       background=colors[1]
                       ),
                widget.Sep(padding=3, linewidth=0, background=colors[5]), 
                widget.TextBox(
                       text = '',
                       padding = 0,
                       fontsize = 28,
                       foreground=colors[1],
                       background=colors[5]
                       ),
                widget.TextBox(
                       text = '',
                       padding = 0,
                       fontsize = 28,
                       foreground=colors[5],
                       background=colors[1]
                       ),
                widget.Sep(padding=8, linewidth=0, background=colors[5]), 
                widget.WindowCount(
                    color_active=colors[5],
                    color_inactive=colors[5],
                    background=colors[5],
                    foreground=colors[13],
                    padding=0,
                    font_size=16,
                    ),
                widget.Sep(padding=30, linewidth=0, background=colors[5]), 
                ],
            28,
            background=colors[1],
                ),),
]
