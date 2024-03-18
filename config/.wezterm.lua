-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.front_end = 'WebGpu'

-- For example, changing the color scheme:
config.color_scheme = '3024 (dark) (terminal.sexy)'
config.font = wezterm.font 'DroidSansMono Nerd Font'
config.audible_bell = 'Disabled'

-- and finally, return the configuration to wezterm
return config
