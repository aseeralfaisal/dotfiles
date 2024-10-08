local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.enable_wayland = true
config.color_scheme = 'Hopscotch (base16)'
config.font = wezterm.font 'FiraCode Nerd Font Mono'
config.font_size = 14.0
config.use_fancy_tab_bar = false 
config.enable_tab_bar = true 
config.initial_rows = 60
config.initial_cols = 140
-- config.window_close_confirmation = 'NeverPrompt'
config.window_decorations = "RESIZE"
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}
config.window_background_opacity = 1

config.colors = {
  tab_bar = {
    background = "#303446", 

    active_tab = {
      bg_color = "#7b68ee",
      fg_color = "#ffffff",
    },

    inactive_tab = {
      bg_color = "#444444",
      fg_color = "#ffffff",
    },

    inactive_tab_hover = {
      bg_color = "#444444",
      fg_color = "#cccccc",
    },

    new_tab = {
      bg_color = "#3c3c3c",
      fg_color = "#888888",
    },

    new_tab_hover = {
      bg_color = "#444444",
      fg_color = "#cccccc",
    },
  },
}

return config
