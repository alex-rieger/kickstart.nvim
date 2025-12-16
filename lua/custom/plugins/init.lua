-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

require 'custom.plugins.rose-pine'
require 'custom.plugins.go'
require 'custom.plugins.dap'
require 'custom.plugins.dap-go'

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = 'number'

vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

vim.g.have_nerd_font = true

-- go format on save
local format_sync_grp = vim.api.nvim_create_augroup('GoFormat', {})
vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*.go',
  callback = function()
    require('go.format').gofmt()
  end,
  group = format_sync_grp,
})

return {}
