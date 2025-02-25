# e-ink.nvim

A light-mode grayscale colorscheme with a hint of [Everforest](https://github.com/sainnhe/everforest)
for NeoVim.

![palette](https://github.com/user-attachments/assets/38009bf4-b9b0-418b-b855-c9e640e4e03a)

![Screenshot_2025-02-24_19-14-41](https://github.com/user-attachments/assets/2e0de592-ec84-4cd6-9a03-ff03a360ab08)

Good for Note-taking.
![Screenshot_2025-02-24_19-22-16](https://github.com/user-attachments/assets/1e2fa144-949c-4bb2-82e1-4e5825f9a87c)

Lua, Go, & JavaScript.
![Screenshot_2025-02-25_10-11-05](https://github.com/user-attachments/assets/b666239d-8d29-4331-b806-b4d25661ddd9)

&nbsp;

## Installation

**Lazy:**

```lua
return {
   "alexxGmZ/e-ink.nvim",
   priority = 1000,
   config = function ()
      require("e-ink").setup()
      vim.cmd.colorscheme "e-ink"
   end
}
```

&nbsp;

## Highlight Override

For overriding highlight groups, just call the `palette` API and use
`vim.api.nvim_set_hl` after the colorscheme declaration.

```lua
vim.cmd.colorscheme "e-ink"

local set_hl = vim.api.nvim_set_hl
local mono = require("e-ink.palette").mono
--[[
{
   "#CCCCCC",   -- 1
   "#C2C2C2",   -- 2
   "#B8B8B8",   -- 3
   "#AEAEAE",   -- 4
   "#A4A4A4",   -- 5
   "#9A9A9A",   -- 6
   "#909090",   -- 7
   "#868686",   -- 8
   "#7C7C7C",   -- 9
   "#727272",   -- 10
   "#686868",   -- 11
   "#5E5E5E",   -- 12
   "#545454",   -- 13
   "#4A4A4A",   -- 14
   "#474747",   -- 15
   "#333333"    -- 16
}
]]

local everforest = require("e-ink.palette").everforest
--[[
{
   red1 = "#F85552",
   red2 = "#E66868",
   red3 = "#FFE7DE",
   yellow1 = "#DFA000",
   green1 = "#8DA101",
   green2 = "#93B259",
   green3 = "#f3f5d9",
   blue1 = "#3A94C5",
   blue2 = "#ECF5ED",
   cyan1 = "#35A77C",
   magenta1 = "#DF69BA"
}
]]

set_hl(0, "Group", { fg = mono[15] })
set_hl(0, "Group", { fg = everforest.green1 })
```

&nbsp;

## Special Thanks

The inspiration for this colorscheme is from this [r/unixporn post](https://www.reddit.com/r/unixporn/comments/1ivfd53/rectangle_i_really_really_like_eink/)
of [u/TheDangleberry](https://www.reddit.com/user/TheDangleberry/submitted/)
