local M = {}

local mono = {
   dark = {
      "#333333", -- 1
      "#474747", -- 2
      "#4A4A4A", -- 3
      "#545454", -- 4
      "#5E5E5E", -- 5
      "#686868", -- 6
      "#727272", -- 7
      "#7C7C7C", -- 8
      "#868686", -- 9
      "#909090", -- 10
      "#9A9A9A", -- 11
      "#A4A4A4", -- 12
      "#AEAEAE", -- 13
      "#B8B8B8", -- 14
      "#C2C2C2", -- 15
      "#CCCCCC"  -- 16
   },
   light = {
      "#CCCCCC", -- 1
      "#C2C2C2", -- 2
      "#B8B8B8", -- 3
      "#AEAEAE", -- 4
      "#A4A4A4", -- 5
      "#9A9A9A", -- 6
      "#909090", -- 7
      "#868686", -- 8
      "#7C7C7C", -- 9
      "#727272", -- 10
      "#686868", -- 11
      "#5E5E5E", -- 12
      "#545454", -- 13
      "#4A4A4A", -- 14
      "#474747", -- 15
      "#333333"  -- 16
   }
}

local everforest = {
   dark = {
      red = "#E67E80",
      statusline3 = "#E67E80",
      bg_red = "#4C3743",
      yellow = "#DBBC7F",
      green = "#A7C080",
      statusline1 = "#A7C080",
      bg_green = "#3C4841",
      blue = "#7FBBB3",
      bg_blue = "#384B55",
      aqua = "#83C092",
      purple = "#D699B6",
      orange = "#E69875"
   },
   light = {
      red = "#F85552",
      statusline3 = "#E66868",
      bg_red = "#FFE7DE",
      yellow = "#DFA000",
      green = "#8DA101",
      statusline1 = "#93B259",
      bg_green = "#f3f5d9",
      blue = "#3A94C5",
      bg_blue = "#ECF5ED",
      aqua = "#35A77C",
      purple = "#DF69BA",
      orange = "#F57D26"
   }
}

--- Function returning the mono (greyscale) palette.
---@return table - Mono palette depending on the background type.
function M.mono()
   return mono[vim.o.background]
end

--- Function returning the everforest palette.
---@return table - Everforest palette depending on the background type.
function M.everforest()
   return everforest[vim.o.background]
end

return M
