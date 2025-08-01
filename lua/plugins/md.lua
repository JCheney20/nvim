return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {},
   dependencies = {"echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
    config = function ()
      local wk = require('which-key')
      wk.add({
        {'<leader>mdp','<cmd>MarkdownPreview<CR>', mode = 'n', desc = '[M]ark[d]own[P]review'}
      })
    end
  },
}
