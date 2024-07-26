return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    opts = {
      PATH = "prepend",
    },
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
      local lspconfig = require("lspconfig")
      local util = require("lspconfig/util")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })

      lspconfig.tsserver.setup({
        capabilities = capabilities,
      })

      lspconfig.gopls.setup({
        capabilities = capabilities,
        cmd = { "gopls" },
        filetypes = { "go", "gomod", "gowork", "gotmpl" },
        root_dir = util.root_pattern("go.work", "go.mod", ".git"),
      })
      lspconfig.omnisharp.setup({
        capabilities = capabilities,
      })

      lspconfig.phpactor.setup({
        
        cmd = { "C:/Users/dobo_/AppData/Local/nvim-data/opt/phpactor/bin/phpactor", "language-server" },
        filetypes = { "php" },
        root_dir = lspconfig.util.root_pattern("composer.json", ".git"),        
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
    end,
  },
}
