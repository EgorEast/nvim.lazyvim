-- https://github.com/m4xshen/hardtime.nvim
return {
  "m4xshen/hardtime.nvim",
  dependencies = { "MunifTanjim/nui.nvim" },
  opts = {},
  config = function()
    require("hardtime").setup()
  end,
}
