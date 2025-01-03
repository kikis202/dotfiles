vim.cmd 'let g:netrw_liststyle = 3'

local opt = vim.opt

opt.number = true
opt.relativenumber = true

-- Show which line your cursor is on
opt.cursorline = true

opt.mouse = 'a' -- Enable mouse mode, can be useful for resizing splits for example!

opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`

vim.schedule(function()
  opt.clipboard = 'unnamedplus'
end)

opt.breakindent = true

opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
opt.ignorecase = true
opt.smartcase = true

opt.signcolumn = 'yes'

opt.updatetime = 250

-- Displays which-key popup sooner
opt.timeoutlen = 300

opt.splitright = true
opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
opt.list = true
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Tab sizes
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
opt.autoindent = true

vim.opt.scrolloff = 10
