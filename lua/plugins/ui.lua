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

--{
--  "karb94/neoscroll.nvim",
--  opts = {},
--  config = function()
--    require("config.plugins.neoscroll")
--  end,
--},

  {
    'jyscao/ventana.nvim'
  },

  {
    "nvim-treesitter/nvim-treesitter-context",
    tag = "compat/0.7",
    dependencies =
    {
      "nvim-treesitter/nvim-treesitter"
    },
    config = function()
      require("config.plugins.treesitter-context")
    end
  }
}
