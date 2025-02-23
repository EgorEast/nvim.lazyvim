return {
  {
    "azratul/live-share.nvim",
    dependencies = {
      "jbyuki/instant.nvim",
    },
    keys = {
      { "<leader>ls", ":LiveShareServer<CR>", desc = "Start a Live Share server" },
      { "<leader>lj", ":LiveShareJoin", desc = "Join a Live Share session" },
    },
  },
}
