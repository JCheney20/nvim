return {
  {
    "nvim-java/nvim-java",
    config = function()
      require('java').setup()
      require('lspconfig').jdtls.setup({
        settings = {
          java = {
            configuration = {
              runtimes = {
                {
                  name = "JavaSE-21",
                  path = "/home/jcheney/.sdkman/candidates/java/21.0.4-tem",
                  default = true,
                }
              }
            }
          }
        }
      })
    end,
  },
  {
    "williamboman/mason.nvim",
    -- version = "1.10.0",
    config = function()
      require("mason").setup{
        log_level = vim.log.levels.TRACE
      }
    end,
  },
  {
     "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup{
        ensure_installed = {"lua_ls"},
      }
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      lspconfig.lua_ls.setup({})
      lspconfig.pylsp.setup({})
      lspconfig.clangd.setup({})
    end,
  }
}
