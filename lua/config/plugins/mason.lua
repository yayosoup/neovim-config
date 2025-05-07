return {
    {
  "lopi-py/luau-lsp.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("luau-lsp").setup({
      platform = {
        type = "roblox",
      },
      sourcemap = {
        enabled = false, -- true if you're using rojo
      },
      types = {
        roblox_security_level = "PluginSecurity",
      },
    })
  end,
}

}

