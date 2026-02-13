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
            ["+"] = require("vim.ui.clipboard.osc52").paste("+"),
            ["*"] = require("vim.ui.clipboard.osc52").paste("*"),
          },
        },
      },
    },
  },
}
