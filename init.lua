-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    os.execute("kitty @ set-spacing padding-left=0 padding-top=0")
  end,
})

vim.api.nvim_create_autocmd("VimLeave", {
  callback = function()
    os.execute("kitty @ set-spacing padding-left=default padding-top=default")
  end,
})
