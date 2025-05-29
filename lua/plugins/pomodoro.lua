return {
  "epwalsh/pomo.nvim",
  version = "*", -- Recommended, use latest release instead of latest commit
  lazy = true,
  cmd = { "TimerStart", "TimerRepeat", "TimerSession" },
  dependencies = {
    -- Optional, but highly recommended if you want to use the "Default" timer
    "rcarriga/nvim-notify",
  },
  opts = {
    sessions = {
      pomodoro = {
        { name = "Work", duration = "20m" },
        { name = "Short Break", duration = "5m" },
        { name = "Work", duration = "20m" },
        { name = "Short Break", duration = "5m" },
        { name = "Work", duration = "20m" },
        { name = "Short Break", duration = "5m" },
        { name = "Work", duration = "20m" },
        { name = "Long Break", duration = "10m" },
      },
    },
  },
  keys = {
    { "<leader>p", "", desc = "Pomodoro" },
    { "<leader>ps", ":TimerStart<cr>", desc = "Pomodoro Start" },
    { "<leader>pr", ":TimerRepeat<cr>", desc = "Pomodoro Repeat" },
    { "<leader>pe", ":TimerSession<cr>", desc = "Pomodoro Session" },
    { "<leader>pp", ":TimerPause<cr>", desc = "Pomodoro Pause" },
    { "<leader>pS", ":TimerStop<cr>", desc = "Pomodoro Stop" },
  },
}
