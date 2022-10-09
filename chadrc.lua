-- First read our docs (completely) then check the example_config repo

local M = {}

M.ui = {
  theme = "everforest",
  theme_toggle = {"everforest_light","everforest"},
}

M.plugins = require "custom.plugins"


return M
