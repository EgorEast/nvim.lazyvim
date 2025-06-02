return {
  "epwalsh/pomo.nvim",
  version = "*", -- Recommended, use latest release instead of latest commit
  lazy = true,
  cmd = { "TimerStart", "TimerRepeat", "TimerSession" },
  dependencies = {
    -- Optional, but highly recommended if you want to use the "Default" timer
    "rcarriga/nvim-notify",
  },
  ---@module 'pomo'
  ---@type pomo.Config
  opts = {
    update_interval = 1000,
    -- Configure the default notifiers to use for each timer.
    -- You can also configure different notifiers for timers given specific names, see
    -- the 'timers' field below.
    notifiers = {
      -- The "Default" notifier uses 'vim.notify' and works best when you have 'nvim-notify' installed.
      {
        name = "Default",
        opts = {
          -- With 'nvim-notify', when 'sticky = true' you'll have a live timer pop-up
          -- continuously displayed. If you only want a pop-up notification when the timer starts
          -- and finishes, set this to false.
          sticky = true,

          -- Configure the display icons:
          title_icon = "󱎫",
          text_icon = "󰄉",
          -- Replace the above with these if you don't have a patched font:
          -- title_icon = "⏳",
          -- text_icon = "⏱️",
        },
      },

      -- The "System" notifier sends a system notification when the timer is finished.
      -- Available on MacOS and Windows natively and on Linux via the `libnotify-bin` package.
      { name = "System" },

      -- You can also define custom notifiers by providing an "init" function instead of a name.
      -- See "Defining custom notifiers" below for an example 👇
      -- { init = function(timer) ... end }
    },
    -- Override the notifiers for specific timer names.
    timers = {
      -- For example, use only the "System" notifier when you create a timer called "Break",
      -- e.g. ':TimerStart 2m Break'.
      Break = {
        { name = "System" },
      },
    },
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
    {
      "<leader>pe",
      function()
        local sessionName = vim.fn.input("Enter Session name (optional): ", "pomodoro")
        vim.cmd("TimerSession " .. sessionName)
      end,
      desc = "Pomodoro Session",
    },
    {
      "<leader>pp",
      function()
        local timerId = vim.fn.input("Enter timer id: ")
        vim.cmd("TimerPause " .. timerId)
      end,
      desc = "Pomodoro Pause",
    },
    {
      "<leader>pr",
      function()
        local timerId = vim.fn.input("Enter timer id: ")
        vim.cmd("TiRerResume " .. timerId)
      end,
      desc = "Pomodoro Resume",
    },
    {
      "<leader>pR",
      function()
        local timerId = vim.fn.input("Enter timer options (TIMELIMIT REPETITIONS [NAME]): ")
        vim.cmd("TimerRepeat " .. timerId)
      end,
      desc = "Pomodoro Repeat",
    },
    {
      "<leader>ps",
      function()
        local timerId = vim.fn.input("Enter timer options (TIMELIMIT [NAME]): ")
        vim.cmd("TimerStart " .. timerId)
      end,
      desc = "Pomodoro Start",
    },
    {
      "<leader>pS",
      function()
        local timerId = vim.fn.input("Enter timer id (optional): ")
        vim.cmd("TimerStop " .. timerId)
      end,
      desc = "Pomodoro Stop",
    },
    {
      "<leader>ph",
      function()
        local timerId = vim.fn.input("Enter timer id (optional): ")
        vim.cmd("TimerHide " .. timerId)
      end,
      desc = "Pomodoro Hide",
    },
    {
      "<leader>pH",
      function()
        local timerId = vim.fn.input("Enter timer id (optional): ")
        vim.cmd("TimerShow " .. timerId)
      end,
      desc = "Pomodoro Show",
    },
  },
}
