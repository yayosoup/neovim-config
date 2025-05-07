require("config.lazy")
lmap = function(lhs, rhs, desc)
    vim.keymap.set("n", lhs, rhs {desc = desc, noremap = true, silent = true})
end


vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.number = true
vim.g.mapleader = " "
vim.opt.background = 'dark'

vim.cmd [[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NormalNC guibg=NONE ctermbg=NONE
  highlight EndOfBuffer guibg=NONE ctermbg=NONE
  highlight LineNr guibg=NONE ctermbg=NONE
  highlight SignColumn guibg=NONE ctermbg=NONE
  highlight VertSplit guibg=NONE ctermbg=NONE
]]
-- worked
