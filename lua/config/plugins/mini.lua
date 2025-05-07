local header = [[ 
██▒   █▓  ██▓  ███▄ ▄███▓
██░   █▒ ▓██▒ ▓██▒▀█▀ ██▒
 ▓██  █▒░ ▒██▒ ▓██    ▓██░
  ▒██ █░░ ░██░ ▒██    ▒██
   ▒▀█░   ░██░ ▒██▒   ░██▒
   ░ ▐░   ░▓   ░ ▒░   ░  ░
   ░ ░░    ▒░  ░  ░      ░
     ░░    ▒░  ░      ░
      ░    ░          ░
     ░                  ]]

return {
    {
        "echasnovski/mini.nvim",
        version = false,
        config = function()
            require("mini.animate").setup({
                scroll = { enable = false },
            })
            require("mini.indentscope").setup()

            local starter = require("mini.starter")
            local sections = starter.sections
            local gen_hook = starter.gen_hook

            starter.setup({
                evaluate_single = true,
                header = header,
                footer = "",
                items = {
                    sections.builtin_actions(),
                    sections.sessions(5, true)
                },
                content_hooks = {
                    gen_hook.adding_bullet(),
                    gen_hook.padding(3, 2),
                    gen_hook.aligning("center", "center"),
                },
            })
            require("mini.statusline").setup()
            require("mini.sessions").setup({
                autoread = false,
                autowrite = true,
                hooks = {
                    pre = {
                        write = function()
                            return vim.api.nvim_exec_autocmds('User', {
                                pattern = 'SessionSavePro'
                            })
                        end
                    }
                }
            })
            vim.keymap.set("n", 
            "<leader>qr", 
            '<Cmd>lua MiniSessions.select("read")<CR>', 
            { desc = "Read session", 
            noremap = true, 
            silent = true }
            )
            -- Write to existing session
            vim.keymap.set("n",
            "<leader>qw", 
            '<Cmd>lua MiniSessions.select("write")<CR>', 
            { desc = "Write to existing session", 
            noremap = true, silent = true }
            )
            -- New Session Keyboard
            vim.keymap.set(
                "n", 
                "<leader>qn", 
                '<Cmd>lua MiniSessions.write(vim.fn.input("Name of your new session: "))<CR>', 
                { desc = "New session", noremap = true, silent = true }
            )
            -- Delete Session Keybind
            vim.keymap.set("n",
            "<leader>qd", 
            '<Cmd>lua MiniSessions.select("delete")<CR>',
            { desc = "Delete session", noremap = true, silent = true }
            )
        end,
    }
}
 
