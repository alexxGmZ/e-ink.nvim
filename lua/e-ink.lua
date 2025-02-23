local M = {}

M.setup = function()
   vim.cmd([[highlight clear]])
   vim.opt.background = "light"
   vim.opt.termguicolors = true
   vim.g.colors_name = "e-ink"
end

return M
