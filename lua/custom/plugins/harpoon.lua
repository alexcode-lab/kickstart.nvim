return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup {
      settings = {
        save_on_toggle = true,
      },
    }
    vim.keymap.set('n', '<leader>a', function()
      local res = harpoon:list():add()
      print('Added as: ' .. res._length)
    end, { desc = '[A]dd file to harpoon' })
    vim.keymap.set('n', '<leader>h', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    vim.keymap.set('n', '<leader>1', function()
      harpoon:list():select(1)
    end, { desc = 'Open [1] harpoon file' })
    vim.keymap.set('n', '<leader>2', function()
      harpoon:list():select(2)
    end, { desc = 'Open [2] harpoon file' })
    vim.keymap.set('n', '<leader>3', function()
      harpoon:list():select(3)
    end, { desc = 'Open [3] harpoon file' })
    vim.keymap.set('n', '<leader>4', function()
      harpoon:list():select(4)
    end, { desc = 'Open [4] harpoon file' })
    vim.keymap.set('n', '<leader>5', function()
      harpoon:list():select(4)
    end, { desc = 'Open [5] harpoon file' })

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<C-p>', function()
      harpoon:list():prev()
    end)
    vim.keymap.set('n', '<C-n>', function()
      harpoon:list():next()
    end)
  end,
}
