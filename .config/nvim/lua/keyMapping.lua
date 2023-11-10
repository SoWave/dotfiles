local key_mapper = function(mode, key, result)
  vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    {noremap = true, silent = true}
  )
end

key_mapper('', '<up>', '<nop>')
key_mapper('', '<down>', '<nop>')
key_mapper('', '<left>', '<nop>')
key_mapper('', '<right>', '<nop>')
key_mapper('i', 'jj', '<ESC>')
key_mapper('i', 'Jj', '<ESC>')
key_mapper('i', 'jJ', '<ESC>')

key_mapper('n', '<leader>ff', '<cmd>lua require("telescope.builtin").find_files()<cr>')
key_mapper('n', '<leader>fg', '<cmd>lua require("telescope.builtin").live_grep()<cr>')
key_mapper('n', '<leader>fb', '<cmd>lua require("telescope.builtin").buffers()<cr>')
key_mapper('n', '<leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<cr>')


key_mapper('n', '<C-u>', '<C-u>zz');
key_mapper('n', '<C-d>', '<C-d>zz');


-- clipboard

key_mapper('v', '<leader>y', '"+y')
key_mapper('n', '<leader>Y', '"+yg_')
key_mapper('n', '<leader>y', '"+y')

key_mapper('v', '<leader>p', '"+p')
key_mapper('n', '<leader>P', '"+P')
key_mapper('n', '<leader>p', '"+p')
