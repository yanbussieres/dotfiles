local wezterm = require("wezterm")
local config = {}

config.color_scheme = "Tokyo Night"
config.font_size = 16.0

config.window_close_confirmation = "NeverPrompt"

local act = wezterm.action
config.keys = {
	{
		key = "d",
		mods = "CMD",
		action = act.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "D",
		mods = "SHIFT|CMD",
		action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
}
return config
