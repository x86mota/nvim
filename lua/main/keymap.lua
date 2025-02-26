vim.g.mapleader = " "

local keymap = vim.keymap

-- NvimTree
keymap.set('n', '<leader>ee', '<cmd>NvimTreeToggle<CR>', { desc = 'Toggle file explorer' })
keymap.set('n', '<leader>ef', '<cmd>NvimTreeFindFileToggle<CR>', { desc = 'Toggle file explorer on current file' })
keymap.set('n', '<leader>ec', '<cmd>NvimTreeCollapse<CR>', { desc = 'Collapse file explorer' })
keymap.set('n', '<leader>er', '<cmd>NvimTreeRefresh<CR>', { desc = 'Refresh file explorer' })
keymap.set('n', '<leader>eo', function()
    local path = vim.fn.input('Path: ', '', 'file')
    if path ~= '' then
        vim.cmd('cd ' .. path)
        require'nvim-tree.api'.tree.open(path)
    end
    vim.cmd('echo ""')
end, { desc = 'Open directory' })

-- LazyGit
keymap.set('n', '<leader>lg', '<cmd>LazyGit<CR>', { desc = 'LazyGit' })
