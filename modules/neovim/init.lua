-- Load project-local .nvim.lua
vim.o.exrc = true

-- nixd: Nix language server
vim.lsp.config('nixd', {})
vim.lsp.enable('nixd')

-- which-key: show available keybindings in a popup
local wk = require("which-key")
wk.setup()
wk.add({
  { "<leader>r", group = "replace" },
  { "<leader>rr", function()
      local left = vim.api.nvim_replace_termcodes("<Left>", true, false, true)
      vim.api.nvim_feedkeys(":%s//gc" .. left .. left .. left, "t", true)
    end, desc = "Replace in file (confirm)", mode = "n" },
})

-- gruvbox-nvim: color scheme
require('gruvbox').setup{}
vim.cmd('colorscheme gruvbox')

-- blink.cmp: completion engine
require('blink.cmp').setup {
  keymap = {
    preset = 'none',
    ['<C-space>'] = { 'show', 'fallback' },
    ['<Up>']      = { 'select_prev', 'fallback' },
    ['<Down>']    = { 'select_next', 'fallback' },
    ['<Tab>']     = { 'accept', 'fallback' },
    ['<Esc>']     = { 'cancel', 'fallback' },
  },
  sources = {
    default = { 'lsp', 'buffer', 'path' },
  },
}
