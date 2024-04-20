return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    --  config = function() require("todo-comments").setup {} end,
    opts = {},
    event = "User AstroFile",
    cmd = { "TodoQuickFix" },
    keys = {
      { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "Open TODOs in Telescope" },
    },
  },
  -- smooth scroll
  {
    "karb94/neoscroll.nvim",
    event = "User AstroFile",
    opts = { "keys" },
  },
  -- render markdown preview
  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    build = ":call mkdp#util#install()",
    cmd = { "MarkdownPreview" },
    keys = {
      { "<leader>mp", "<cmd>MarkdownPreview<cr>", desc = "Open Markdown Preview" },
    },
  },
  {
    "mfussenegger/nvim-jdtls",
    event = "User AstroFile",
  },
  {
    'glacambre/firenvim',
    lazy = not vim.g.started_by_firenvim,
    build = function()
        vim.fn["firenvim#install"](0)
    end
  }
}
