return {
  {
    "GeorgesAlkhouri/nvim-aider",
    cmd = {
      "AiderTerminalToggle",
      "AiderHealth",
    },
    keys = {
      { "<leader>a/", ":AiderTerminalToggle<cr>", desc = "Open Aider" },
      { "<leader>as", ":AiderTerminalSend<cr>", desc = "Send to Aider", mode = { "n", "v" } },
      { "<leader>ac", ":AiderQuickSendCommand<cr>", desc = "Send Command To Aider" },
      { "<leader>ab", ":AiderQuickSendBuffer<cr>", desc = "Send Buffer To Aider" },
      { "<leader>a+", ":AiderQuickAddFile<cr>", desc = "Add File to Aider" },
      { "<leader>a-", ":AiderQuickDropFile<cr>", desc = "Drop File from Aider" },
      { "<leader>ar", ":AiderQuickReadOnlyFile<cr>", desc = "Add File as Read-Only" },
      -- Example nvim-tree.lua integration if needed
      { "<leader>a+", ":AiderTreeAddFile<cr>", desc = "Add File from Tree to Aider", ft = "NvimTree" },
      { "<leader>a-", ":AiderTreeDropFile<cr>", desc = "Drop File from Tree from Aider", ft = "NvimTree" },
    },
    dependencies = {
      "folke/snacks.nvim",
      --- The below dependencies are optional
      -- "catppuccin/nvim",
      -- "nvim-tree/nvim-tree.lua",
      --- Neo-tree integration
      -- {
      --   "nvim-neo-tree/neo-tree.nvim",
      --   opts = function(_, opts)
      --     -- Example mapping configuration (already set by default)
      --     -- opts.window = {
      --     --   mappings = {
      --     --     ["+"] = { "nvim_aider_add", desc = "add to aider" },
      --     --     ["-"] = { "nvim_aider_drop", desc = "drop from aider" }
      --     --   }
      --     -- }
      --     require("nvim_aider.neo_tree").setup(opts)
      --   end,
      -- },
    },
  },
  --
  -- https://github.com/sourcegraph/sg.nvim
  -- {
  --   "sourcegraph/sg.nvim",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     "nvim-telescope/telescope.nvim",
  --   },
  --   config = function()
  --     -- Sourcegraph configuration. All keys are optional
  --     require("sg").setup({
  --       -- Pass your own custom attach function
  --       --    If you do not pass your own attach function, then the following maps are provide:
  --       --        - gd -> goto definition
  --       --        - gr -> goto references
  --       -- on_attach = your_custom_lsp_attach_function
  --     })
  --   end,
  -- },
  {
    "Exafunction/codeium.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("codeium").setup({
        virtual_text = {
          enabled = true,
        },
      })
    end,
  },
}
