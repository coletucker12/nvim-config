-- Plugin: Harpoon
-- https://github.com/ThePrimeagen/harpoon
return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim", },
    config = function()
        local harpoon = require("harpoon")
        harpoon:setup({})

        -- Mark / Unmark Files
        vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "Harpoon Mark" })
        vim.keymap.set("n", "<leader>x", function() harpoon:list():remove() end, { desc = "Harpoon Unmark" })

        -- basic telescope configuration
        local conf = require("telescope.config").values
        local function toggle_telescope(harpoon_files)
            local file_paths = {}
            for _, item in ipairs(harpoon_files.items) do
                table.insert(file_paths, item.value)
            end

            require("telescope.pickers").new({}, {
                prompt_title = "Harpoon",
                finder = require("telescope.finders").new_table({
                    results = file_paths,
                }),
                previewer = conf.file_previewer({}),
                sorter = conf.generic_sorter({}),
            }):find()
        end

        vim.keymap.set("n", "<S-e>", function() toggle_telescope(harpoon:list()) end,
            { desc = "Open harpoon window" })

        vim.keymap.set("n", "<A-1>", function() harpoon:list():select(1) end)
        vim.keymap.set("n", "<A-2>", function() harpoon:list():select(2) end)
        vim.keymap.set("n", "<A-3>", function() harpoon:list():select(3) end)
        vim.keymap.set("n", "<A-4>", function() harpoon:list():select(4) end)
        vim.keymap.set("n", "<A-5>", function() harpoon:list():select(5) end)
        vim.keymap.set("n", "<A-6>", function() harpoon:list():select(6) end)
        vim.keymap.set("n", "<A-7>", function() harpoon:list():select(7) end)
        vim.keymap.set("n", "<A-8>", function() harpoon:list():select(8) end)
        vim.keymap.set("n", "<A-9>", function() harpoon:list():select(9) end)

        -- Toggle previous & next buffers stored within Harpoon list
        vim.keymap.set("n", "<A-,>", function() harpoon:list():prev() end)
        vim.keymap.set("n", "<A-.>", function() harpoon:list():next() end)
        vim.keymap.set("n", "<leader>h", function() harpoon:list():prev() end)
        vim.keymap.set("n", "<leader>l", function() harpoon:list():next() end)
    end
}
