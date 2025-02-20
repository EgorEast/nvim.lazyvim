return {
  -- change trouble config
  --{
  --  "folke/trouble.nvim",
  -- opts will be merged with the parent spec
  --  opts = { use_diagnostic_signs = true },
  -- },

  -- disable trouble
  -- { "folke/trouble.nvim", enabled = false },
  {
    "folke/trouble.nvim",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
}
