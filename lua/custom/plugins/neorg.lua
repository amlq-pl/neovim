return {
  {
    'nvim-neorg/neorg',
    lazy = false,
    version = '*',
    config = function()
      require('neorg').setup {
        load = {
          ['core.qol.todo_items'] = {
            config = {
              create_todo_parents = true,
            },
          },
          ['core.defaults'] = {},
          ['core.concealer'] = {
            config = {
              icon_preset = 'diamond',
            },
          },
          ['core.dirman'] = {
            config = {
              workspaces = {
                notes = '~/notes',
              },
              default_workspace = 'notes',
            },
          },
        },
      }

      vim.wo.foldlevel = 99
      vim.wo.conceallevel = 2
    end,
  },
}
