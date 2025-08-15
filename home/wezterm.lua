-- Pull in the wezterm API
local wezterm = require 'wezterm'
local act = wezterm.action

-- This will hold the configuration.
local config = wezterm.config_builder()
config.initial_cols = 120
config.initial_rows = 28

config.font_size = 24
config.font = wezterm.font 'Iosevka'

config.keys = {
   {
      key = 'Backspace', mods = 'CTRL',
      action = act.SendKey {key = 'Backspace', mods = 'ALT'}
   }
}
config.hide_tab_bar_if_only_one_tab = true
config.enable_kitty_keyboard = true

return config
