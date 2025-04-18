local mono = require("e-ink.palette").mono()

return {
   normal = {
      a = { bg = mono[14], fg = mono[2], gui = "bold" },
      b = { bg = mono[4], fg = mono[14] },
      c = { bg = mono[1], fg = mono[12] },
   },
   insert = {
      a = { bg = mono[11], fg = mono[3], gui = "bold" },
      b = { bg = mono[4], fg = mono[14] },
      c = { bg = mono[1], fg = mono[12] },
   },
   visual = {
      a = { bg = mono[6], fg = mono[14], gui = "bold" },
      b = { bg = mono[4], fg = mono[14] },
      c = { bg = mono[1], fg = mono[12] },
   },
   replace = {
      a = { bg = mono[12], fg = mono[5], gui = "bold" },
      b = { bg = mono[4], fg = mono[14] },
      c = { bg = mono[1], fg = mono[12] },
   },
   command = {
      a = { bg = mono[15], fg = mono[1], gui = "bold" },
      b = { bg = mono[4], fg = mono[14] },
      c = { bg = mono[1], fg = mono[12] },
   },
   terminal = {
      a = { bg = mono[15], fg = mono[1], gui = "bold" },
      b = { bg = mono[4], fg = mono[14] },
      c = { bg = mono[1], fg = mono[12] },
   },
   inactive = {
      a = { bg = mono[1], fg = mono[9], gui = "bold" },
      b = { bg = mono[1], fg = mono[9] },
      c = { bg = mono[1], fg = mono[9] },
   },
}
