local api = vim.api

api.nvim_set_keymap('i', 'jj', '<esc>', { noremap = true })
api.nvim_set_keymap('i', 'っj', '<esc>', { noremap = true })
api.nvim_set_keymap('n', '<c-h>', '<c-w><c-h>', { noremap = true })
api.nvim_set_keymap('n', '<c-j>', '<c-w><c-j>', { noremap = true })
api.nvim_set_keymap('n', '<c-k>', '<c-w><c-k>', { noremap = true })
api.nvim_set_keymap('n', '<c-l>', '<c-w><c-l>', { noremap = true })
api.nvim_set_keymap('n', '<c-c>', ':noh<cr><esc>', { noremap = true })
