local M = {}

--- Wrapper for nvim.api.nvim_set_hl
---@param group string
---@param styles any
local function set_hl(group, styles)
   vim.api.nvim_set_hl(0, group, styles)
end

function M.generate_syntax()
   local mono = require("e-ink.palette").mono
   local everforest = require("e-ink.palette").everforest
   local set_var = vim.api.nvim_set_var

   set_var("terminal_color_0", mono[1])
   set_var("terminal_color_1", everforest.red1)
   set_var("terminal_color_2", everforest.green1)
   set_var("terminal_color_3", everforest.yellow1)
   set_var("terminal_color_4", everforest.blue1)
   set_var("terminal_color_5", everforest.magenta1)
   set_var("terminal_color_6", everforest.cyan1)
   set_var("terminal_color_7", mono[8])
   set_var("terminal_color_8", mono[9])
   set_var("terminal_color_9", everforest.red1)
   set_var("terminal_color_10", everforest.green1)
   set_var("terminal_color_11", everforest.yellow1)
   set_var("terminal_color_12", everforest.blue1)
   set_var("terminal_color_13", everforest.magenta1)
   set_var("terminal_color_14", everforest.cyan1)
   set_var("terminal_color_15", mono[16])

   set_hl("ColorColumn", { link = "CursorLine" })
   set_hl("Comment", { fg = mono[7], italic = true })
   set_hl("Constant", { link = "@variable" })
   set_hl("CurSearch", { fg = mono[13], reverse = true })
   set_hl("CursorColumn", { link = "CursorLine" })
   set_hl("CursorLine", { bg = mono[2] })
   set_hl("Delimiter", { fg = mono[16] })
   set_hl("Directory", { fg = mono[15] })
   set_hl("ErrorMsg", { fg = everforest.red1 })
   set_hl("FloatBorder", { fg = mono[10], bg = mono[1] })
   set_hl("Function", { fg = mono[16] })
   set_hl("Identifier", { fg = mono[8] })
   set_hl("MoreMsg", { fg = mono[15] })
   set_hl("Normal", { fg = mono[12], bg = mono[1] })
   set_hl("NormalFloat", { link = "Normal" })
   set_hl("Operator", { fg = mono[14] })
   set_hl("Question", { link = "MoreMsg" })
   set_hl("QuickFixLine", { link = "MoreMsg" })
   set_hl("Search", { fg = mono[6], reverse = true })
   set_hl("Special", { fg = mono[11] })
   set_hl("SpellBad", { sp = everforest.red1, undercurl = true })
   set_hl("SpellCap", { sp = everforest.blue1, undercurl = true })
   set_hl("SpellLocal", { sp = everforest.green1, undercurl = true })
   set_hl("SpellRare", { sp = everforest.magenta1, undercurl = true })
   set_hl("Statement", { fg = mono[12] })
   set_hl("StatusLine", { link = "Normal" })
   set_hl("StatusLineNC", { link = "Normal" })
   set_hl("String", { fg = mono[11] })
   set_hl("Title", { fg = mono[16], bold = true })
   set_hl("Type", { fg = mono[13] })
   set_hl("Visual", { bg = mono[4] })
   set_hl("WarningMsg", { fg = everforest.yellow1 })
   set_hl("WinSeparator", { fg = mono[9] })

   set_hl("Added", { fg = everforest.green1 })
   set_hl("Changed", { fg = everforest.blue1 })
   set_hl("Removed", { fg = everforest.red2 })

   set_hl("DiagnosticOk", { fg = everforest.green1 })
   set_hl("DiagnosticHint", { fg = everforest.blue1 })
   set_hl("DiagnosticInfo", { fg = everforest.cyan1 })
   set_hl("DiagnosticWarn", { fg = everforest.yellow1 })
   set_hl("DiagnosticError", { fg = everforest.red1 })

   set_hl("markdownLinkText", { underline = false })
   set_hl("markdownUrl", { underline = true })

   set_hl("DiffAdd", { bg = everforest.green3 })
   set_hl("DiffChange", { bg = everforest.blue2 })
   set_hl("DiffDelete", { bg = everforest.red3 })
   set_hl("DiffText", { bg = everforest.blue1 })
   set_hl("diffAdded", { link = "DiagnosticOk" })
   set_hl("diffChanged", { link = "DiagnosticHint" })
   set_hl("diffRemoved", { link = "DiagnosticError" })
   set_hl("@diff.plus", { link = "DiagnosticOk" })
   set_hl("@diff.delta", { link = "DiagnosticHint" })
   set_hl("@diff.minus", { link = "DiagnosticError" })

   -- nvim-notify
   set_hl("NotifyInfoIcon", { link = "DiagnosticOk" })
   set_hl("NotifyWarnIcon", { link = "DiagnosticWarn" })
   set_hl("NotifyErrorIcon", { link = "DiagnosticError" })
   set_hl("NotifyInfoTitle", { link = "DiagnosticOk" })
   set_hl("NotifyWarnTitle", { link = "DiagnosticWarn" })
   set_hl("NotifyErrorTitle", { link = "DiagnosticError" })
   set_hl("NotifyInfoBorder", { link = "DiagnosticOk" })
   set_hl("NotifyWarnBorder", { link = "DiagnosticWarn" })
   set_hl("NotifyErrorBorder", { link = "DiagnosticError" })

   -- treesitter
   set_hl("@markup.link", { underline = false })
   set_hl("@markup.link.label", { bold = true, underline = false })
   set_hl("@markup.link.url", { bold = false, underline = true, italic = true })
   set_hl("@markup.quote", { fg = mono[8] })
   set_hl("@markup.strong", { fg = mono[16], bold = true })
   set_hl("@variable", { fg = mono[16] })

   -- treesitter-context
   set_hl("TreesitterContextBottom", { underline = true })

   -- eyeliner
   set_hl("EyelinerPrimary", { fg = mono[12], bold = true, reverse = true })
   set_hl("EyelinerSecondary", { fg = mono[6], bold = true, reverse = true })

   -- FzfLua
   set_hl("FzfLuaBufNr", { fg = mono[5] })
   set_hl("FzfLuaHeaderBind", { fg = mono[5] })
   set_hl("FzfLuaLivePrompt", { fg = mono[12] })
   set_hl("FzfLuaLiveSym", { fg = mono[12] })
   set_hl("FzfLuaPathLineNr", { fg = mono[5] })
   set_hl("FzfLuaTabMarker", { fg = mono[15] })
end

return M
