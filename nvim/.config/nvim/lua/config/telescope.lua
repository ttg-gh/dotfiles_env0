-- lua/config/telescope.lua

local telescope = require("telescope")

telescope.setup({
  defaults = {
    prompt_prefix = "🔍 ",
    selection_caret = " ",
    layout_config = {
      horizontal = { preview_width = 0.6 },
    },
    sorting_strategy = "ascending",
    winblend = 10,
  },
  pickers = {
    find_files = {
      theme = "dropdown",
    },
  },
})
