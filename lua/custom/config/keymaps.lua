vim.keymap.set('i', '<C-j>', '<ESC>', { desc = 'Exit from insert mode' })
vim.keymap.set('n', '<C-j>', '<PageDown>', { desc = 'Page down' })
vim.keymap.set('n', '<C-k>', '<PageUp>', { desc = 'Page up' })
vim.keymap.set({ 'n', 'v', 'i' }, '<C-f>', '<ESC>:NvimTreeToggle<CR>', { desc = 'Toggle Nvim [F]ile tree' })
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = 'Toggle [U]ndo tree' })
vim.keymap.set('n', '<F4>', vim.cmd.vsplit)
vim.keymap.set({ 'n', 'v', 'i' }, '<F9>', ':split<CR>:resize 15<CR>:terminal<CR>i')
vim.keymap.set({ 'n', 'v', 'i' }, '<F10>', ':close<CR>')