return {
  { 
    "lukas-reineke/indent-blankline.nvim",
    tag = "v2.20.8",
    config = function()
      vim.g.indent_blankline_char = "│"
      require("indent_blankline").setup({ show_current_context = true })
    end
  },
  
  {
    "junegunn/vim-easy-align",
  }
}
