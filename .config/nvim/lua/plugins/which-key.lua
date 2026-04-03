return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    local wk = require("which-key")
    wk.setup({
      icons = {
        mappings = true,
      },
    })

    wk.add({
      { "<leader>g", group = "Git" },
      { "<leader>gd", group = "Diffview" },
      { "<leader>p", group = "Search" },
      { "<leader>t", group = "Test" },
      { "<leader>c", group = "Code" },
      { "<leader>b", group = "Buffers" },
    })
  end,
}
