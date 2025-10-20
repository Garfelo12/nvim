local telescope = require("telescope")
local builtin = require("telescope.builtin")

telescope.setup({
  defaults = {
    sorting_strategy = "ascending",
    layout_config = { prompt_position = "top" },
    file_ignore_patterns = { "node_modules", "%.git/" },
  },
  pickers = {
    find_files = { theme = "dropdown" },
    live_grep  = { theme = "dropdown" },
    buffers    = { theme = "dropdown", sort_mru = true, ignore_current_buffer = true },
  },
})
