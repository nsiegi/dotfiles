-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()
local mux = wezterm.mux

wezterm.on("gui-startup", function(cmd)
  local _, _, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

-- config.default_prog = { "/opt/homebrew/bin/tmux", "new", "-A", "-s", "main" }

config.font = wezterm.font("RobotoMono Nerd Font Mono")
config.font_size = 15

config.color_scheme = "Catppuccin Mocha"

config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.98

return config
