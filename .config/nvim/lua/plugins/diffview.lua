return {
  "sindrets/diffview.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("diffview").setup()

    vim.keymap.set("n", "<leader>gdo", ":DiffviewOpen<CR>", { desc = "Diff view open" })
    vim.keymap.set("n", "<leader>gdc", ":DiffviewClose<CR>", { desc = "Diff view close" })
    vim.keymap.set("n", "<leader>gdh", ":DiffviewFileHistory %<CR>", { desc = "File history" })
    vim.keymap.set("n", "<leader>gdH", ":DiffviewFileHistory<CR>", { desc = "Branch history" })
  end,
}
