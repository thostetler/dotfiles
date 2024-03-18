local vim = vim

-- leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- using nerd font
vim.g.have_nerd_font = true

-- line numbers on
vim.opt.number = true

-- maintain undo history between sessions
vim.opt.undofile = true

-- case-insensitive search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- highlight cursor line
vim.optcursorline = true

-- minimum scroll off
vim.opt.scrolloff = 10

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup('plugins')
