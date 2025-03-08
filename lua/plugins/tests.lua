return {
  "nvim-neotest/neotest",
  event = "VeryLazy",
  config = function()
    require("neotest").setup({
      adapters = {
        -- require("neotest-jest")({
        -- jestCommand = "npm test --",
        -- jestConfigFile = "jest.config.ts",
        -- env = { CI = true },
        -- cwd = function(path)
        -- return vim.fn.getcwd()
        -- end,
        -- }),
        require("neotest-vitest")({
          -- Filter directories when searching for test files. Useful in large projects (see Filter directories notes).
          filter_dir = function(name, rel_path, root)
            return name ~= "node_modules"
          end,
        }),
      },
    })
  end,
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "haydenmeade/neotest-jest",
    "marilari88/neotest-vitest",
  },
}
