vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

local keymap = vim.keymap

keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Clear search highlights' })

keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [[ Git keymaps ]]
keymap.set('n', '<leader>gd', ':Gitsigns diffthis<CR>', { desc = 'Git diff' })
keymap.set('n', '<leader>gp', ':Gitsigns preview_hunk<CR>', { desc = 'Git preview hunk' })
keymap.set('n', '<leader>gl', ':Gitsigns toggle_linehl<CR>', { desc = 'Toggle Git line highlight' })
-- Navigation
keymap.set('n', ']g', ':Gitsigns next_hunk<CR>', { desc = 'Next git hunk' })
keymap.set('n', '[g', ':Gitsigns prev_hunk<CR>', { desc = 'Previous git hunk' })
-- Actions
keymap.set('n', '<leader>gs', ':Gitsigns stage_hunk<CR>', { desc = 'Git stage hunk' })
keymap.set('n', '<leader>gr', ':Gitsigns reset_hunk<CR>', { desc = 'Git reset hunk' })
keymap.set('n', '<leader>gu', ':Gitsigns undo_stage_hunk<CR>', { desc = 'Git undo stage hunk' })

keymap.set('n', '<leader>wv', '<C-w>v', { desc = 'Split window vertically' })
keymap.set('n', '<leader>wh', '<C-w>s', { desc = 'Split window horizontally' })
keymap.set('n', '<leader>we', '<C-w>=', { desc = 'Make splits equal size' })
keymap.set('n', '<leader>wq', '<cmd>close<CR>', { desc = 'Close current split' })
