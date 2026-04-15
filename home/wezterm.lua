-- Pull in the wezterm API
local wezterm = require 'wezterm'
local act = wezterm.action

-- This will hold the configuration.
local config = wezterm.config_builder()
config.initial_cols = 120
config.initial_rows = 28
config.enable_wayland = false

config.font_size = 20
config.font = wezterm.font 'Iosevka'

local padding = 30
config.window_padding = {
   left = padding, right = padding, top = padding, bottom = padding
}

config.keys = {
   {
      key = 'Backspace', mods = 'CTRL',
      action = act.SendKey {key = 'Backspace', mods = 'ALT'}
   }
}
config.hide_tab_bar_if_only_one_tab = true
config.enable_kitty_keyboard = true


config.color_scheme = 'Dark Violet (base16)'


-- Color Scheme
config.colors = {
  background = '#141218',
  foreground = '#e6e0e9',
  cursor_bg = '#d0bcff',
  cursor_fg = '#141218', -- Contrast for the text under the cursor
  selection_bg = '#4f378b',
  selection_fg = '#e6e0e9',

  -- The standard 8 ANSI colors
  ansi = {
    '#141218', -- black
    '#df5141', -- red
    '#6ed675', -- green
    '#dbd97b', -- yellow
    '#926ce2', -- blue
    '#a397bf', -- magenta
    '#d0bcff', -- cyan
    '#abb2bf', -- white
  },

  -- The 8 "bright" variants
  brights = {
    '#5c6370', -- black
    '#e06a5f', -- red
    '#86e08b', -- green
    '#e8e697', -- yellow
    '#dfc9ff', -- blue
    '#7c6acd', -- magenta
    '#8b6ab5', -- cyan
    '#ffffff', -- white
  },
}

return config
