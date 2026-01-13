vim.api.nvim_create_autocmd("TextYankPost",{
  callback=function() vim.highlight.on_yank({higroup="IncSearch", timeout=120}) end
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    vim.cmd([[%s/\s\+$//e]])
  end,
})
