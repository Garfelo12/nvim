local lspconfig = require'lspconfig'
local configs   = require'lspconfig.configs'
local util      = require'lspconfig.util'

local handlers = {
    ["dvt/server/ping"] = vim.lsp.with(function() return {} end, {}),
    ["dvt/diagrams/refreshDiagrams"] = vim.lsp.with(function () return {} end, {}),
}

configs.dvt = {
    default_config = {
        cmd = {"dvt_ls-stdio", "start .", "-lang vhdl"},
        filetypes = {'vhdl'},
        root_dir = util.root_pattern(".dvt") or
                   util.find_git_ancestor,
        single_file_support = true,
    }
}

lspconfig.dvt.setup{
    handlers = handlers,
}
