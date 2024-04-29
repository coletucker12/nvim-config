return {
    {
        'nvim-lua/plenary.nvim',
        name = 'plenary'
    },
    { 'numToStr/Comment.nvim', opts = {} }, -- "gcc/gcb" to comment line/block in insert mode "gc/gb" to comment visual regions/lines
    'tpope/vim-sleuth',                     -- Detect tabstop and shiftwidth automatically,
    {
        "sontungexpt/url-open",
        event = "VeryLazy",
        cmd = "URLOpenUnderCursor",
        config = function()
            local status_ok, url_open = pcall(require, "url-open")
            if not status_ok then
                return
            end
            url_open.setup({})
        end,
    },
}
