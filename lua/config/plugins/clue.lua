return {
  {
    "echasnovski/mini.clue",
    version = false,
    config = function()
      local clue = require("mini.clue")
      local gen_clues = clue.gen_clues

      clue.setup({
        triggers = {
          { mode = "n", keys = "<Leader>" },
          { mode = "x", keys = "<Leader>" },
          { mode = "i", keys = "<C-x>" },
          { mode = "n", keys = "g" },
          { mode = "x", keys = "g" },
          { mode = "n", keys = "'" },
          { mode = "n", keys = "`" },
          { mode = "x", keys = "'" },
          { mode = "x", keys = "`" },
          { mode = "n", keys = '"' },
          { mode = "x", keys = '"' },
          { mode = "i", keys = "<C-r>" },
          { mode = "c", keys = "<C-r>" },
          { mode = "n", keys = "<C-w>" },
          { mode = "n", keys = "z" },
          { mode = "x", keys = "z" },
        },

        clues = {
          gen_clues.builtin_completion(),
          gen_clues.g(),
          gen_clues.marks(),
          gen_clues.registers(),
          gen_clues.windows(),
          gen_clues.z(),

          { mode = "n", keys = "<Leader>q", desc = "+quit/session" },
          { mode = "n", keys = "<Leader>w", desc = "+window" },
          { mode = "n", keys = "<Leader>b", desc = "+buffer" },
          { mode = "n", keys = "<Leader>bX", desc = "+close all" },
          { mode = "n", keys = "<Leader>t", desc = "+terminal" },
          { mode = "n", keys = "<Leader>i", desc = "+insert" },
          { mode = "n", keys = "<Leader>o", desc = "+open/toggle" },
          { mode = "n", keys = "<Leader>n", desc = "+notes/org" },
          { mode = "n", keys = "<Leader>f", desc = "+find" },
          { mode = "n", keys = "<Leader>s", desc = "+search" },
          { mode = "n", keys = "<Leader>r", desc = "+reach" },
        },

        window = {
          delay = 0,
          config = {
            width = "auto",
            row = "auto",
            col = "auto",
            relative = "win",
            border = "single",
            title_pos = "center",
          },
        },
      })
    end,
  },
}

