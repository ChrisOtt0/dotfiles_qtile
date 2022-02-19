local wezterm = require 'wezterm';

local mycolors = {
	"#282c34",
	"#99bbff",
	"#434957",
	"#56b6c2",
	"#21252b",
	"#434957",
	"#4Dff0000",
	"#abb2bf",
	"#c678dd",
	"#56b6c2",
	"#61afef",
	"#98c379",
	"#d19a66",
	"#e5c07b",
}

return {
	color_scheme = "OneHalfDark",
	font = wezterm.font("JetBrains Mono"),
	font_size = 11.5,
	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	colors = {
		tab_bar = {
			background = mycolors[1],
			active_tab = {
				bg_color = mycolors[1],
				fg_color = mycolors[4],
				font_size = 10,
			},
			inactive_tab = {
				bg_color = mycolors[5],
				fg_color = mycolors[9],
			},
			inactive_tab_hover = {
				bg_color = mycolors[1],
				fg_color = mycolors[10],
			},
			new_tab = {
				bg_color = mycolors[5],
				fg_color = mycolors[13],
			},
			new_tab_hover = {
				bg_color = mycolors[1],
				fg_color = mycolors[10],
			},
		}
	},
	window_padding = {
		left = 2,
		right = 2,
		top = 0,
		bottom = 0
	}
}
