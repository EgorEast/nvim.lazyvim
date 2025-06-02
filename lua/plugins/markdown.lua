return {
  "MeanderingProgrammer/render-markdown.nvim",
  ---@module 'render-markdown'
  ---@type render.md.UserConfig
  opts = {
    completions = { enabled = true },
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
        scope_highlight = "RenderMarkdownUnchecked",
      },
      checked = {
        -- Replaces '[x]' of 'task_list_marker_checked'.
        icon = "",
        -- Highlight for the checked icon.
        highlight = "RenderMarkdownChecked",
        -- Highlight for item associated with checked checkbox.
        scope_highlight = "RenderMarkdownChecked",
      },
      custom = {
        followup = {
          raw = "[>]",
          rendered = "",
          highlight = "RenderMarkdownBullet",
          scope_highlight = "RenderMarkdownBullet",
        },
        canceled = {
          raw = "[~]",
          rendered = "󰰱",
          highlight = "RenderMarkdownTableHead",
          scope_highlight = "RenderMarkdownTableHead",
        },
        warning = {
          raw = "[!]",
          rendered = "",
          highlight = "RenderMarkdownError",
          scope_highlight = "RenderMarkdownError",
        },
      },
    },
    file_types = { "markdown", "vimwiki" },
  },
}
