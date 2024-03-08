local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- Enable IME
config.use_ime = true

-- Font
config.font = wezterm.font("UDEV Gothic NFLG")
config.font_size = 12.0

-- Hide scrollbar
config.enable_scroll_bar = false

-- Colorscheme
config.color_scheme_dirs = { "~/.config/wezterm/colorscheme" }
config.color_scheme = "nordfox"

-- config.window_background_opacity = 0.7

-- Window titlebar
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.integrated_title_button_style = "Gnome"

-- Window size
config.initial_rows = 30
config.initial_cols = 120

-- config.default_prog = { "/bin/fish" }
config.default_prog = { "/bin/zsh" }

return config
