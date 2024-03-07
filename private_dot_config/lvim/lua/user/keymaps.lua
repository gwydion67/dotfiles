
local opts = {noremap = true, silent = true }
local keymap = vim.keymap.set


lvim.keys.insert_mode['kj'] = "<Esc>"
lvim.keys.insert_mode['jj'] = "<Esc>"
lvim.builtin.terminal.open_mapping = "<c-t>"

keymap("n", "ss", ":w<cr>", opts)
-- someth
keymap({"n","i"}, "<C-s>", "<Esc>:w<CR>i", opts)
-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Stay in indent mode
keymap("v", "<", "<gv^", opts)
keymap("v", ">", ">gv^", opts)
keymap("v", "p", '"_dP', opts)

keymap({"n", "v"}, "<leader>y", [["+y]])
keymap("n", "leader>Y", [["+Y]])

keymap("n", "<C-x>", ":BufferKill<CR>", opts)

