# e-ink.nvim

A grayscale colorscheme with a hint of [Everforest](https://github.com/sainnhe/everforest)
for NeoVim.

![palette](https://github.com/user-attachments/assets/38009bf4-b9b0-418b-b855-c9e640e4e03a)

![Screenshot_2025-02-24_19-14-41](https://github.com/user-attachments/assets/2e0de592-ec84-4cd6-9a03-ff03a360ab08)

Good for Note-taking.
![Screenshot_2025-02-24_19-22-16](https://github.com/user-attachments/assets/1e2fa144-949c-4bb2-82e1-4e5825f9a87c)

Lua, Go, & JavaScript.
![Screenshot_2025-02-25_10-11-05](https://github.com/user-attachments/assets/b666239d-8d29-4331-b806-b4d25661ddd9)

Dark Mode
![dark-mode-3](https://github.com/user-attachments/assets/32cde8dc-772f-41d6-99f8-c4e431a40bf0)

![dark-mode-2](https://github.com/user-attachments/assets/86c2abcf-de44-4749-8e2c-da5d9a87a54b)

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

      -- choose light mode or dark mode
      -- vim.opt.background = "dark"
      -- vim.opt.background = "light"
      --
      -- or do
      -- :set background=dark
      -- :set background=light
   end
}
```

&nbsp;

## Highlight Override

For overriding highlight groups, just call the `palette` API and use
`vim.api.nvim_set_hl` after the colorscheme declaration.

```lua
local set_hl = vim.api.nvim_set_hl
local mono = require("e-ink.palette").mono()

--[[
-- light mode
{
   "#CCCCCC", "#C2C2C2", "#B8B8B8", "#AEAEAE", "#A4A4A4", "#9A9A9A", "#909090", "#868686",
   "#7C7C7C", "#727272", "#686868", "#5E5E5E", "#545454", "#4A4A4A", "#474747", "#333333"
}

-- dark mode
{
   "#333333", "#474747", "#4A4A4A", "#545454", "#5E5E5E", "#686868", "#727272", "#7C7C7C",
   "#868686", "#909090", "#9A9A9A", "#A4A4A4", "#AEAEAE", "#B8B8B8", "#C2C2C2", "#CCCCCC"
}
]]

local everforest = require("e-ink.palette").everforest()
--[[
-- light mode
{
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
   purple = "#DF69BA"
}

-- dark mode
{
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
   purple = "#D699B6"
}
]]

set_hl(0, "Group", { fg = mono[15] })
set_hl(0, "Group", { fg = everforest.green })
```

&nbsp;

## Special Thanks

The inspiration for this colorscheme is from this [r/unixporn post](https://www.reddit.com/r/unixporn/comments/1ivfd53/rectangle_i_really_really_like_eink/)
of [u/TheDangleberry](https://www.reddit.com/user/TheDangleberry/submitted/)
