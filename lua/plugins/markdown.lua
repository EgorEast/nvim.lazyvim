return {
  "MeanderingProgrammer/render-markdown.nvim",
  ---@module 'render-markdown'
  ---@type render.md.UserConfig
  opts = {
    completions = { enabled = true, lsp = { enabled = true }, blink = { enabled = true } },
    enabled = true,
    checkbox = {
      enabled = true,
      right_pad = 6,
      unchecked = {
        -- Replaces '[ ]' of 'task_list_marker_unchecked'.
        icon = "󰄱",
        -- Highlight for the unchecked icon.
        highlight = "RenderMarkdownUnchecked",
        -- Highlight for item associated with unchecked checkbox.
        scope_highlight = nil,
      },
      checked = {
        -- Replaces '[x]' of 'task_list_marker_checked'.
        icon = "",
        -- Highlight for the checked icon.
        highlight = "RenderMarkdownChecked",
        -- Highlight for item associated with checked checkbox.
        scope_highlight = "@markup.strikethrough",
      },
      custom = {
        followup = {
          raw = "[>]",
          rendered = "",
          highlight = "RenderMarkdownBullet",
          scope_highlight = nil,
        },
        canceled = {
          raw = "[~]",
          rendered = "󰰱",
          highlight = "RenderMarkdownTableHead",
          scope_highlight = nil,
        },
        warning = {
          raw = "[!]",
          rendered = "",
          highlight = "RenderMarkdownError",
          scope_highlight = nil,
        },
        todo = {
          raw = "[-]",
          rendered = "󰥔",
          highlight = "RenderMarkdownTodo",
          scope_highlight = nil,
        },
      },
    },
    file_types = { "markdown", "vimwiki" },
  },
}
