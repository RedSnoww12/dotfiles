return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        integrations = {
          cmp = true,
          treesitter = true,
          telescope = true,
        },
      })
      vim.cmd.colorscheme "catppuccin-mocha"
    end
  }
}
