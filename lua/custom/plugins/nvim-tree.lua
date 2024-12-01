return {
  'nvim-tree/nvim-tree.lua',
  config = function()
    require('nvim-tree').setup {
      filters = {
        dotfiles = true,
      },
      renderer = {
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = false,
            git = true,
          },
        },
      },
    }
  end,
}
