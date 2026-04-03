return {
  {
    "hrsh7th/cmp-nvim-lsp",
  },
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local servers = {
        "ts_ls",        -- TypeScript / JavaScript / React
        "pyright",      -- Python
        "html",         -- HTML
        "cssls",        -- CSS
        "jsonls",       -- JSON
        "yamlls",       -- YAML
        "dockerls",     -- Dockerfile
        "docker_compose_language_service", -- docker-compose
        "bashls",       -- Bash / sh
        "lua_ls",       -- Lua (pour ta config nvim)
      }
      for _, server in ipairs(servers) do
        vim.lsp.config(server, {
          capabilities = capabilities,
        })
      end
      vim.lsp.enable(servers)

      -- Gradle LSP
      vim.lsp.config("gradle_ls", {
        capabilities = capabilities,
        init_options = {
          settings = {},
        },
      })
      vim.lsp.enable("gradle_ls")

      vim.diagnostic.config({
        virtual_text = true,
        signs = {
          text = {
            [vim.diagnostic.severity.ERROR] = "✖",
            [vim.diagnostic.severity.WARN] = "⚠",
            [vim.diagnostic.severity.INFO] = "ℹ",
            [vim.diagnostic.severity.HINT] = "➤",
          },
        },
        float = {
          border = "rounded",
        },
        update_in_insert = true,
        severity_sort = true,
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}

