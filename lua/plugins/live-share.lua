return {
  {
    "azratul/live-share.nvim",
    dependencies = {
      "jbyuki/instant.nvim",
    },
    keys = {
      { "<leader>l", "", desc = "+Live Share" },
      { "<leader>ls", ":LiveShareServer<CR>", desc = "Start a Live Share server" },
      { "<leader>lj", ":LiveShareJoin", desc = "Join a Live Share session" },
    },
    config = function()
      vim.g.instant_username = "egoreast"
      require("live-share").setup({
        port_internal = 8765,
        max_attempts = 40, -- 10 seconds
        service = "serveo.net",
      })
    end,
  },
}
