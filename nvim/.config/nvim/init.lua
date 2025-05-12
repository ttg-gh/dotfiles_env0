-- init.lua

-- 기본 설정
vim.g.mapleader = " "

-- lazy.nvim bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- 최신 stable 버전
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- 플러그인 불러오기
require("plugins")
require("config.telescope")


local builtin = require("telescope.builtin")


vim.keymap.set("n", "<leader>ff", function()
  require("telescope.builtin").find_files({ hidden = true })
end, { desc = "Find Files (with dotfiles)" })
