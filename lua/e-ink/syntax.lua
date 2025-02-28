local M = {}

--- Wrapper for nvim.api.nvim_set_hl
---@param group string
---@param styles any
local function set_hl(group, styles)
   vim.api.nvim_set_hl(0, group, styles)
end

function M.generate_syntax()
   local mono = require("e-ink.palette").mono()
   local everforest = require("e-ink.palette").everforest()
   local set_var = vim.api.nvim_set_var

   set_var("terminal_color_0", mono[1])
   set_var("terminal_color_1", everforest.red)
   set_var("terminal_color_2", everforest.green)
   set_var("terminal_color_3", everforest.yellow)
   set_var("terminal_color_4", everforest.blue)
   set_var("terminal_color_5", everforest.purple)
   set_var("terminal_color_6", everforest.aqua)
   set_var("terminal_color_7", mono[8])
   set_var("terminal_color_8", mono[9])
   set_var("terminal_color_9", everforest.red)
   set_var("terminal_color_10", everforest.green)
   set_var("terminal_color_11", everforest.yellow)
   set_var("terminal_color_12", everforest.blue)
   set_var("terminal_color_13", everforest.purple)
   set_var("terminal_color_14", everforest.aqua)
   set_var("terminal_color_15", mono[16])

   set_hl("ColorColumn", { link = "CursorLine" })
   set_hl("Comment", { fg = mono[7], italic = true })
   set_hl("Constant", { link = "@variable" })
   set_hl("CurSearch", { fg = mono[13], reverse = true })
   set_hl("CursorColumn", { link = "CursorLine" })
   set_hl("CursorLine", { bg = mono[2] })
   set_hl("Delimiter", { fg = mono[16] })
   set_hl("Directory", { fg = mono[15] })
   set_hl("ErrorMsg", { fg = everforest.red })
   set_hl("FloatBorder", { fg = mono[10] })
   set_hl("Function", { fg = mono[16] })
   set_hl("Identifier", { fg = mono[10] })
   set_hl("MoreMsg", { fg = mono[15] })
   set_hl("Normal", { fg = mono[12], bg = mono[1] })
   set_hl("NormalFloat", { link = "Normal" })
   set_hl("Operator", { fg = mono[14] })
   set_hl("Question", { link = "MoreMsg" })
   set_hl("QuickFixLine", { link = "MoreMsg" })
   set_hl("Search", { fg = mono[6], reverse = true })
   set_hl("Special", { fg = mono[11] })
   set_hl("SpellBad", { sp = everforest.red, undercurl = true })
   set_hl("SpellCap", { sp = everforest.blue, undercurl = true })
   set_hl("SpellLocal", { sp = everforest.green, undercurl = true })
   set_hl("SpellRare", { sp = everforest.purple, undercurl = true })
   set_hl("Statement", { fg = mono[12] })
   set_hl("StatusLine", { link = "Normal" })
   set_hl("StatusLineNC", { link = "Normal" })
   set_hl("String", { fg = mono[11] })
   set_hl("Title", { fg = mono[16], bold = true })
   set_hl("Type", { fg = mono[13] })
   set_hl("Visual", { bg = mono[4] })
   set_hl("WarningMsg", { fg = everforest.yellow })
   set_hl("WinSeparator", { fg = mono[9] })

   set_hl("Added", { fg = everforest.green })
   set_hl("Changed", { fg = everforest.blue })
   set_hl("Removed", { fg = everforest.red })

   set_hl("DiagnosticOk", { fg = everforest.green })
   set_hl("DiagnosticHint", { fg = everforest.blue })
   set_hl("DiagnosticInfo", { fg = everforest.aqua })
   set_hl("DiagnosticWarn", { fg = everforest.yellow })
   set_hl("DiagnosticError", { fg = everforest.red })

   set_hl("markdownLinkText", { underline = false })
   set_hl("markdownUrl", { underline = true })

   set_hl("DiffAdd", { bg = everforest.bg_green })
   set_hl("DiffChange", { bg = everforest.bg_blue })
   set_hl("DiffDelete", { bg = everforest.bg_red })
   set_hl("DiffText", { fg = mono[1], bg = everforest.blue })
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
   set_hl("@markup.raw", { fg = mono[8] })
   set_hl("@markup.strong", { fg = mono[16], bold = true })
   set_hl("@tag", { fg = mono[10], bold = true })
   set_hl("@tag.attribute", { fg = mono[14], bold = true })
   set_hl("@tag.delimiter", { fg = mono[8], bold = false })
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
