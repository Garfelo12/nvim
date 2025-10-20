return {
  { "echasnovski/mini.nvim", tag = "v0.15.0",
    config = function()
      -- Enable comment toggling with gc / gcc motions
      require("mini.comment").setup()

      -- Add, delete, or replace surrounding characters like quotes, brackets, etc.
      require("mini.surround").setup()

      -- Automatically insert matching pairs like (), {}, [], ""
      require("mini.pairs").setup()

      -- Provide text objects based on semantic units (e.g. function, argument) for motions/selection
      require("mini.ai").setup()
    end
  },

  { "lukas-reineke/indent-blankline.nvim", tag = "v2.20.8",
    config = function()
      vim.g.indent_blankline_char = "│"
      require("indent_blankline").setup({ show_current_context = true })
    end
  },

}
