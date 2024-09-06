return {
    {
        "simnalamburt/vim-mundo",
        config = function()
            vim.keymap.set('n', '<leader>y', ':MundoToggle<CR>', {})
        end
    }
}


