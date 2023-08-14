vim.g.mapleader = " "

local keymap = vim.keymap

-- Clears the search highlighting
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- decrement number under cursor
keymap.set("n", "<leader>-", "<C-x>")
-- increment
keymap.set("n", "<leader>+", "<C-a>")

keymap.set("n", "<leader>sv", "<C-w>v")        -- split vertical
keymap.set("n", "<leader>sh", "<C-w>s")        -- split horizontal
keymap.set("n", "<leader>se", "<C-w>=")        -- even window size
keymap.set("n", "<leader>sx", ":close<CR>")    -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>")   -- open tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close tab
keymap.set("n", "<leader>tn", ":tabn<CR>")     -- next tab
keymap.set("n", "<leader>tp", ":tabp<CR>")     -- prev tab

-- keep cursor in center
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- move it move it
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep that sweet buffer when pasting over v text
keymap.set("n", "<leader>p", "\"_dP")

-- join and keep cursor in place
keymap.set("n", "J", "mzJ`z")

-- replace string under cursor
keymap.set("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make executable
keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

--------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")    -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")     -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")   -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")       -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")     -- list available help tags

keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>")   -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>")  -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>")    -- list current changes per file with diff preview ["gs" for git status]

keymap.set("n", "<leader>rs", ":LspRestart<CR>")                  -- mapping to restart lsp if necessary
keymap.set("n", "<C-f>", ":silent !tmux neww tmux-sessionizer<CR>")
keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
