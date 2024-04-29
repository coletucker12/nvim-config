local map = require("helpers.keys").map
local mapnoremap = require("helpers.keys").mapnoremap

-- Open Explorer
map("n", "<leader>pv", vim.cmd.Ex)


-- Blazingly fast way out of insert mode
map("i", "jk", "<esc>")

-- Quick access to some common actions
map("n", "<leader>wf", "<cmd>w<cr>", "Write")
map("n", "<leader>wa", "<cmd>wa<cr>", "Write all")
map("n", "<leader>qq", "<cmd>q<cr>", "Quit")
map("n", "<leader>qa", "<cmd>qa!<cr>", "Quit all")
map("n", "<leader>cw", "<cmd>close<cr>", "Window")

-- Diagnostic keymaps
map('n', 'gx', vim.diagnostic.open_float, "Show diagnostics under cursor")

-- Clear hlsearch when hitting Esc
mapnoremap("n", "<esc>", ":nohlsearch<cr>")

-- Move Lines in Visual Mode
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Better Movement
map("n", "H", "^")
map("n", "J", "}")
map("n", "K", "{")
map("n", "L", "$")
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- Greatest Remaps Ever
map("x", "<leader>p", [["_dp]])
map({ "n", "v" }, "<leader>y", [["+y]])
map("n", "<leader>Y", [["+Y]])
map({ "n", "v" }, "<leader>d", [["_d]])

-- Format File
map("n", "<leader>f", vim.lsp.buf.format)

-- Too Many Letters
map("n", "cw", "ciw")
map("n", "dw", "diw")

-- Idk what these do
map("n", "<C-h>", "<cmd>cnext<CR>zz")
map("n", "<C-l>", "<cmd>cprev<CR>zz")
map("n", "<leader>k", "<cmd>lnext<CR>zz")
map("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Stay in indent mode
map("v", "<", "<gv")
map("v", ">", ">gv")

-- <3 Go
map(
    "n",
    "<leader>ee",
    "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)

-- Init Files
map("n", "<leader><leader>", function()
    vim.cmd("so")
end)
