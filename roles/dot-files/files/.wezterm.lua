local wezterm = require("wezterm")
local act = wezterm.action
local config = wezterm.config_builder()
-- local status = require("status")

config.font = wezterm.font("JetBrains Mono")
config.font_size = 16
--config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_close_confirmation = "NeverPrompt"
--config.window_background_opacity = 0.8
--config.macos_window_background_blur = 10
config.use_fancy_tab_bar = true
config.show_new_tab_button_in_tab_bar = false
config.tab_max_width = 30
config.window_background_image = "/Users/shariq/Downloads/hack_bg.png"
config.window_background_image_hsb = {
	-- Darken the background image by reducing it to 1/3rd
	brightness = 0.1,

	-- You can adjust the hue by scaling its value.
	-- a multiplier of 1.0 leaves the value unchanged.
	hue = 1.0,

	-- You can adjust the saturation also.
	saturation = 1.0,
}

config.keys = {
	-- Clears the scrollback and viewport, and then sends CTRL-L to ask the
	-- shell to redraw its prompt
	{
		key = "K",
		mods = "CMD",
		action = act.ClearScrollback("ScrollbackAndViewport"),
	},
}

config.mouse_bindings = {
	{
		event = { Down = { streak = 1, button = "Right" } },
		action = act.PasteFrom("Clipboard"),
	},
}

return config
