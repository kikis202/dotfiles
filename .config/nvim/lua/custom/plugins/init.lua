return {
  'nvim-lua/plenary.nvim', -- lua funcitons, that many plugins use
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  'knubie/vim-kitty-navigator', -- kitty split window navigator
  { 'Bilal2453/luvit-meta', lazy = true },
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } }, -- Highlight todo, notes, etc in comments
}
