vim.o.breakindent = true
vim.o.clipboard = 'unnamedplus'
vim.o.confirm = true
vim.o.cursorline = true
vim.g.have_nerd_font = true
vim.o.ignorecase = true
vim.o.inccommand = 'nosplit'
vim.o.list = true
vim.o.mouse = 'a'
vim.o.number = true
vim.o.relativenumber = true
vim.o.scrolloff = 15
vim.o.showmode = false
vim.o.signcolumn = 'yes'
vim.o.smartcase = true
vim.o.splitbelow = true
vim.o.timeoutlen = 300
vim.o.undofile = true
vim.o.updatetime = 250
vim.o.splitright = true

-- Sets how neovim will display certain whitespace characters in the editor.
--
--  Notice listchars is set using `vim.opt` instead of `vim.o`.
--   See `:help lua-options`
--   and `:help lua-options-guide`
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
