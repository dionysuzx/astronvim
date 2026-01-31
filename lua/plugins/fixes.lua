return {
  -- Disable vim-illuminate (word highlighting under cursor)
  { "RRethy/vim-illuminate", enabled = false },

  -- Disable indent guides for markdown
  {
    "AstroNvim/astrocore",
    opts = {
      autocmds = {
        disable_indent_markdown = {
          {
            event = "FileType",
            pattern = "markdown",
            callback = function() vim.b.snacks_indent = false end,
          },
        },
      },
    },
  },
}
