return {
  -- Colorschemes
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,

    config = function()
      require('catppuccin').setup {
        flavour = 'macchiato',
        transparent_background = true,
        styles = {
          loops = { 'bold' },
          keywords = { 'bold' },
          types = { 'bold' },
        },
      }
      -- vim.cmd.colorscheme 'catppuccin'
    end,
  },
  {
    'sainnhe/sonokai',
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.sonokai_enable_italic = true
      -- vim.cmd.colorscheme 'sonokai'
    end,
  },
  {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.gruvbox_material_enable_italic = true
      vim.g.gruvbox_material_background = 'hard'
      vim.g.gruvbox_material_enable_bold = 1
      vim.g.gruvbox_material_transparent_background = 1
    end,
  },

  {
    'projekt0n/github-nvim-theme',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require('github-theme').setup {
        options = {
          transparent = true,
        },
      }

      -- vim.cmd.colorscheme 'github_dark_high_contrast'
    end,
  },

  {
    'bluz71/vim-nightfly-colors',
    name = 'nightfly',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.nightflyTransparent = true
      -- vim.cmd.colorscheme 'nightfly'
    end,
  },

  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'folke/tokyonight.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      -- vim.cmd.colorscheme 'tokyonight-night'

      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'
    end,
  },
  {
    'rebelot/kanagawa.nvim', -- neorg needs a colorscheme with treesitter support
    config = function()
      require('kanagawa').setup {
        transparent = true,
      }
      vim.cmd.colorscheme 'kanagawa-wave'
    end,
  },
  {
    'marko-cerovac/material.nvim',
    config = function()
      require('material').setup {}
      vim.g.material_style = 'deep ocean'
      -- vim.cmd.colorscheme 'material'
    end,
  },
}
