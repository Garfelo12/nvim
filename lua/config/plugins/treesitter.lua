local parser_config = require('nvim-treesitter.parsers').get_parser_configs()

parser_config.vhdl = {
  install_info = {
    url = "https://github.com/jpt13653903/tree-sitter-vhdl.git",
    files = { 'src/parser.c', 'src/scanner.c' },
    revision = "v1.0.0",
    generate_requires_npm = false,
    requires_generate_from_grammar = false,
  },
  filetype = 'vhd',
}

require'nvim-treesitter.configs'.setup {
    indent = {
        enable = true,
    },
    highlight = {
      enable = true,
      -- Disable specific languages or large files
      disable = function(lang, buf)
        -- Disable Tree-sitter for large files
        local max_filesize = 100 * 1024 -- 100 kB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
          return true
        end
      end,
    },
    ensure_installed = {
        "c", "cpp",
        "lua", "vim",
        "ruby", "python", "perl", "bash", "make",
        "comment", "markdown", "markdown_inline",
        "json", "yaml", "toml", "regex",
        "git_rebase", "gitcommit", "gitattributes",
        "verilog", "vhdl",
    },
}

