local wezterm = require 'wezterm'

return {
  font = wezterm.font("JetBrainsMono Nerd Font"),
  font_size = 13.0,

  -- Enable ligatures
  harfbuzz_features = { "calt=1", "clig=1", "liga=1" },

  -- Use bold/italic if available
  font_rules = {
    {
      italic = true,
      font = wezterm.font("JetBrainsMono Nerd Font", { italic = true }),
    },
    {
      intensity = "Bold",
      font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Bold" }),
    },
    {
      intensity = "Bold",
      italic = true,
      font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Bold", italic = true }),
    },
  },
}
