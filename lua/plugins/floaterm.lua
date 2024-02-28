return {
    'voldikss/vim-floaterm',
    config = function()
        vim.keymap.set('n', 'fn', ':FloatermNew<CR>')
        vim.keymap.set('n', '<F12>', ':FloatermToggle<CR>')
    end

}
