local set = vim.opt

--
set.encoding = "utf-8"
set.mouse = "a"
set.termguicolors = true
set.hidden = true

-- direct connection to the system clipboard
set.clipboard = "unnamedplus"

-- number settings
set.number = true
set.relativenumber = true

-- search settings 
set.hlsearch = true
set.ignorecase = true
set.incsearch = true
set.smartcase = true -- search uppercase word, be case sensitive

-- files settings
set.backup = true
set.backupdir = vim.fn.stdpath("data") .. "/backup"
set.writebackup = true
set.undodir = vim.fn.stdpath("data") .. "/undo"
set.undofile = true
set.swapfile = false

-- cursor settings
set.cursorcolumn = false
set.cursorline = true
set.scrolloff = 5 -- cursor off in 5th line

-- Inddent Settings
set.expandtab = true
set.smartcase = true
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
