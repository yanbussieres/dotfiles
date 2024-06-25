require('lazy').setup({
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  --
  { 'numToStr/Comment.nvim', opts = {} },

  require 'plugins/oil',

  require 'plugins/neo-tree',
  require 'plugins/lazygit',

  require 'plugins/neogit',

  require 'plugins/gitsigns',

  require 'plugins/which-key',

  require 'plugins/telescope',

  require 'plugins/lspconfig',

  require 'plugins/conform',

  require 'plugins/cmp',

  require 'plugins/tokyonight',

  require 'plugins/todo-comments',

  require 'plugins/mini',

  require 'plugins/treesitter',
}, {})
