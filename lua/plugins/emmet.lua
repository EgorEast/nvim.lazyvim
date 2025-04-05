return {
  "olrtg/nvim-emmet",
  config = function()
    vim.keymap.set({ "n", "v" }, "<leader>ce", require("nvim-emmet").wrap_with_abbreviation, {
      desc = "Wrap with abbreviation",
    })
  end,
}
