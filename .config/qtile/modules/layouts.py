from libqtile import layout
from libqtile.config import Match
from .mycolors import *

colors = colors_pink

layouts = [
    layout.MonadTall(margin=6, border_focus=colors[3],
                     border_normal=colors[1],
                     border_width=2),
    layout.Tile(margin=0, border_focus=colors[3], border_normal=colors[1], border_width=2),
    #layout.MonadTall(margin=0, border_focus=colors[3], border_normal=colors[1], border_width=3),
    #layout.Columns(border_focus_stack='#d75f5f'),
    layout.Max(),
    # Try more layouts by unleashing below layouts.
    # layout.Stack(num_stacks=2),
    # layout.Bsp(),
    # layout.Matrix(),
    # layout.MonadTall(),
    # layout.MonadWide(margin=6, border_focus=colors[3], border_normal=colors[1], border_width=3),
    # layout.RatioTile(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy(),
]

floating_layout = layout.Floating(float_rules=[
    # Run the utility of `xprop` to see the wm class and name of an X client.
    *layout.Floating.default_float_rules,
    Match(wm_class='confirmreset'),  # gitk
    Match(wm_class='makebranch'),  # gitk
    Match(wm_class='maketag'),  # gitk
    Match(wm_class='ssh-askpass'),  # ssh-askpass
    Match(title='branchdialog'),  # gitk
    Match(title='pinentry'),  # GPG key password entry
    ],
    border_focus=colors[3], border_normal=colors[1], border_width=2
    )
