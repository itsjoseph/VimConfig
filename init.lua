vim.g.mapleader = " "

-- Opciones básicas
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.clipboard = "unnamedplus"
vim.opt.mouse = "a"
vim.opt.background = "dark"

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { "nvim-telescope/telescope.nvim", tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function() require("telescope").setup({}) end
  },
  { "preservim/nerdtree" },
  { "tpope/vim-commentary" },
  { "morhetz/gruvbox", config = function() vim.cmd("colorscheme gruvbox") end },
  { "neoclide/coc.nvim", branch = "release" },
  { "tpope/vim-surround" },
  { "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
  { "tpope/vim-fugitive" },
  { "lewis6991/gitsigns.nvim" },
  { "honza/vim-snippets" },
  { "neoclide/coc-snippets" },
  { "akinsho/bufferline.nvim", version = "*" },
  { "lukas-reineke/indent-blankline.nvim" },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  { "hiphish/rainbow-delimiters.nvim" },
})

-- Atajos Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Buscar archivos' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Buscar texto en archivos' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Buscar buffers abiertos' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Buscar ayuda' })

-- Atajos NERDTree
vim.keymap.set('n', '<C-n>', ':NERDTreeToggle<CR>')

-- Atajos coc
vim.keymap.set('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', { expr = true })
vim.keymap.set('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<S-Tab>"', { expr = true })
vim.keymap.set('n', 'gd', '<Plug>(coc-definition)', { silent = true })
vim.keymap.set('n', 'K', ':call CocActionAsync("doHover")<CR>', { silent = true })
vim.keymap.set('n', '<leader>rn', '<Plug>(coc-rename)')
vim.keymap.set('n', '<leader>a', '<Plug>(coc-codeaction)'vim.g.mapleader = " "

-- Opciones básicas
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.clipboard = "unnamedplus"
vim.opt.mouse = "a"
vim.opt.background = "dark"

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { "nvim-telescope/telescope.nvim", tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function() require("telescope").setup({}) end
  },
  { "preservim/nerdtree" },
  { "tpope/vim-commentary" },
  { "morhetz/gruvbox", config = function() vim.cmd("colorscheme gruvbox") end },
  { "neoclide/coc.nvim", branch = "release" },
  { "tpope/vim-surround" },
  { "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
  { "tpope/vim-fugitive" },
  { "lewis6991/gitsigns.nvim" },
  { "honza/vim-snippets" },
  { "neoclide/coc-snippets" },
  { "akinsho/bufferline.nvim", version = "*" },
  { "lukas-reineke/indent-blankline.nvim" },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  { "hiphish/rainbow-delimiters.nvim" },
})

-- Atajos Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Buscar archivos' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Buscar texto en archivos' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Buscar buffers abiertos' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Buscar ayuda' })

-- Atajos NERDTree
vim.keymap.set('n', '<C-n>', ':NERDTreeToggle<CR>')

-- Atajos coc
vim.keymap.set('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', { expr = true })
vim.keymap.set('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<S-Tab>"', { expr = true })
vim.keymap.set('n', 'gd', '<Plug>(coc-definition)', { silent = true })
vim.keymap.set('n', 'K', ':call CocActionAsync("doHover")<CR>', { silent = true })
vim.keymap.set('n', '<leader>rn', '<Plug>(coc-rename)')
vim.keymap.set('n', '<leader>a', '<Plug>(coc-codeaction)'))
