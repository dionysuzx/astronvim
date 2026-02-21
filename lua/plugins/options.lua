return {
  "AstroNvim/astrocore",
  opts = {
    options = {
      opt = {
        wrap = true,
        clipboard = "unnamedplus",
      },
      g = {
        clipboard = {
          name = "OSC 52",
          copy = {
            ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
            ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
          },
          paste = {
            ["+"] = function() return vim.split(vim.fn.getreg(""), "\n") end,
            ["*"] = function() return vim.split(vim.fn.getreg(""), "\n") end,
          },
        },
      },
    },
  },
}
