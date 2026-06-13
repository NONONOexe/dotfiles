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

