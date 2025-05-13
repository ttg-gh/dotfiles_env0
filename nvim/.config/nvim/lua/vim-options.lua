vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.wo.relativenumber = true

-- 기본 설정
vim.g.mapleader = " "


vim.diagnostic.config({
  virtual_text = {
    prefix = '●',  -- or '■', '▶', etc.
    spacing = 4,
  },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})
