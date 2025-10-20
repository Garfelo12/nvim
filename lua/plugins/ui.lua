return {
  { "navarasu/onedark.nvim",
    config = function()
      require("onedark").setup({ style = "darker" }); require("onedark").load()
    end,
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function() 
      require("config.plugins.lualine") 
    end,
  },
}
