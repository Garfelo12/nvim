require("nvim-tree").setup {
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
    icons = {
      show = {
        git = false, 
        file = true,
        folder = true,
        folder_arrow = true,
      },
    },
  },
  git = {
    enable = false,
  },
  filters = {
    dotfiles = true,
  },
}
