local M = {}
local mono = require("e-ink.palette").mono
local everforest = require("e-ink.palette").everforest
local set_hl = vim.api.nvim_set_hl

local config = {
   transparent_bg = false
}

M.setup = function(plugin_opts)
   vim.cmd([[highlight clear]])
   vim.opt.background = "light"
   vim.opt.termguicolors = true
   vim.g.colors_name = "e-ink"
end

return M
