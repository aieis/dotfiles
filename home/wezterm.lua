-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()
config.initial_cols = 120
config.initial_rows = 28

config.font_size = 26
config.font = wezterm.font 'Iosevka'

config.hide_tab_bar_if_only_one_tab = true

return config
