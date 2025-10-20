local lspconfig = require("lspconfig")
local configs   = require("lspconfig.configs")
local util      = require("lspconfig.util")
local cap       = require("cmp_nvim_lsp").default_capabilities()

if not configs.vhdl_ls then
  configs.vhdl_ls = {
    default_config = {
      capabilities = cap,
      cmd = { vim.fn.exepath("vhdl_ls") }, 
      filetypes = { "vhdl" },
      root_dir = function(fname)
        return util.root_pattern("vhdl_ls.toml", ".git")(fname)
            or util.dirname(fname)
      end,
      single_file_support = true,
      settings = {
        vhdl_ls = { analysis = { full = true } },
      },
    },
  }
end

lspconfig.vhdl_ls.setup({})
