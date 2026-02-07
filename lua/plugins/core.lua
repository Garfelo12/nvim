return {
  {
    "folke/lazy.nvim",
    version = "*",
  },
  {
    "lewis6991/gitsigns.nvim",
    tag = "v0.6",
    config = function()
      require("gitsigns").setup()
    end
  },

  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies =
    {
      "nvim-lua/plenary.nvim"
    },
    config = function()
      require("config.plugins.telescope")
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    tag = "v0.8.5.2",
    build = ":TSUpdate",
    config = function()
      require("config.plugins.treesitter")
    end,
  },

  {
    "neovim/nvim-lspconfig",
    tag = "v1.0.0",
    config = function()
      -- Select only one LSP
      --require("config.plugins.lspconfig.vhdl_ls")
      require("config.plugins.lspconfig.dvt")
    end,
  },

  {
    "hrsh7th/nvim-cmp",
    commit = "5dce1b778b85c717f6614e3f4da45e9f19f54435",
    event = "InsertEnter",
    dependencies = {
      {
        "hrsh7th/cmp-nvim-lsp",
        commit = "44b16d11215dce86f253ce0c30949813c0a90765"
      },
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "saadparwaiz1/cmp_luasnip",
      {
      	"L3MON4D3/LuaSnip",
      	version = "v2.4.1",
        config = function()
          -- For personnal snippets
          require("luasnip.loaders.from_vscode").lazy_load({
            paths = { "./snippets" },
            --paths = { vim.fn.stdpath("config") .. "/snippets" },
          })
        end,
      },
    },
    config = function()
      require("config.plugins.cmp")
    end,
  },

  {
   "folke/trouble.nvim",
   tag = "v2.10.0",
   dependencies = { "nvim-tree/nvim-web-devicons" },
   opts = {},
  },

  {
    "rmagatti/goto-preview",
    tag = "v1.1.0",
    config = function()
      require("config.plugins.goto")
    end,
  },
}
