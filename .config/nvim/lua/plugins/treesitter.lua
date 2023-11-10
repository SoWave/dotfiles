return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        event = { "VeryLazy" },
        opts = {
            ensure_installed = {
                "bash",
                "c",
                "cpp",
                "diff",
                "json",
                "jsonc",
                "lua",
                "luadoc",
                "markdown",
                "python",
                "regex",
                "vim",
                "vimdoc",
            }
        }
    },
    {
        "nvim-treesitter/nvim-treesitter-context",
        event = "Lazy",
        enabled = false,
        opts = { mode = "cursor", max_lines = 3 },
        keys = {
            {
                "<leader>ut",
                function()
                  local Util = require("lazyvim.util")
                  local tsc = require("treesitter-context")
                  tsc.toggle()
                  if Util.inject.get_upvalue(tsc.toggle, "enabled") then
                    Util.info("Enabled Treesitter Context", { title = "Option" })
                  else
                    Util.warn("Disabled Treesitter Context", { title = "Option" })
                  end
                end,
                desc = "Toggle Treesitter Context",
            },
        },
    }
}
