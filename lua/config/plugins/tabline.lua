return {
  {
    "romgrk/barbar.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons", -- optional for file icons
      "lewis6991/gitsigns.nvim",     -- optional for Git status
    },
    init = function()
      -- recommended keymaps from barbar README
      vim.g.barbar_auto_setup = false
      vim.keymap.set("n", "<Tab>", "<Cmd>BufferNext<CR>", { desc = "Next buffer" })
      vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferPrevious<CR>", { desc = "Previous buffer" })
      vim.keymap.set("n", "<leader>bc", "<Cmd>BufferClose<CR>", { desc = "Close buffer" })
    end,
    config = function()
      require("barbar").setup({
        animation = true,
        clickable = true,
        insert_at_end = true,
        maximum_padding = 2,
        sidebar_filetypes = {
        },
      })
    end,
  }
}

