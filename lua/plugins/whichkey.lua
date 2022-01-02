local wk = require('which-key')
local mappings = {
  s = {":so %<cr>", "Source File"},
  e = {":NvimTreeToggle<cr>", "File Explorer"},
  f = {
    name = "Telescope",
    f = {"<cmd>Telescope find_files<cr>", "Find Files"},
    b = {"<cmd>Telescope buffers<cr>", "Find Files"}
  },
  -- harpoon
  a = {":lua require('harpoon.mark').add_file()<cr>", "Mark File by Harpoon"},
  l = {":lua require('harpoon.ui').toggle_quick_menu()<cr>", "Harpoon Toggle"}
}

local opts = {prefix = '<leader>'}

wk.register(mappings, opts)

require('which-key').setup {
  plugins = {
    presets = {
      operators = false, -- adds help for operators like d, y, ... and registers them for motion / text object completion
      motions = false, -- adds help for motions
      text_objects = false, -- help for text objects triggered after entering an operator
      windows = true, -- default bindings on <c-w>
      nav = true, -- misc bindings to work with windows
      z = true, -- bindings for folds, spelling and others prefixed with z
      g = true -- bindings for prefixed with g
    }
  }
}

