return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  dependencies = { "nvim-lua/plenary.nvim" },
  cmd = {
    "ObsidianOpen",
    "ObsidianNew",
    "ObsidianQuickSwitch",
    "ObsidianFollowLink",
    "ObsidianBacklinks",
    "ObsidianTags",
    "ObsidianToday",
    "ObsidianYesterday",
    "ObsidianTomorrow",
    "ObsidianDailies",
    "ObsidianTemplate",
    "ObsidianSearch",
    "ObsidianLink",
    "ObsidianLinkNew",
    "ObsidianLinks",
    "ObsidianExtractNote",
    "ObsidianWorkspace",
    "ObsidianPasteImg",
    "ObsidianRename",
    "ObsidianToggleCheckbox",
    "ObsidianNewFromTemplate",
    "ObsidianTOC",
  },
  keys = {
    { "<leader>o", "", mode = { "n", "x" }, desc = "Obsidian" },
    { "<leader>oo", ":ObsidianOpen<CR>", mode = { "n", "x" }, desc = "Open in app" }, -- :ObsidianOpen [QUERY] to open a note in the Obsidian app. This command has one optional argument: a query used to resolve the note to open by ID, path, or alias. If not given, the note corresponding to the current buffer is opened.
    { "<leader>on", ":ObsidianNew<CR>", mode = { "n", "x" }, desc = "New note" }, -- :ObsidianNew [TITLE] to create a new note. This command has one optional argument: the title of the new note.
    { "<leader>oq", ":ObsidianQuickSwitch<CR>", mode = { "n", "x" }, desc = "Quick switch" }, -- :ObsidianQuickSwitch to quickly switch to (or open) another note in your vault, searching by its name using ripgrep with your preferred picker (see plugin dependencies below).
    { "<leader>os", ":ObsidianSearch<CR>", mode = { "n", "x" }, desc = "Search" }, -- :ObsidianSearch [QUERY] to search for (or create) notes in your vault using ripgrep with your preferred picker.
    { "<leader>ow", ":ObsidianWorkspace<CR>", mode = { "n", "x" }, desc = "Workspace" }, -- :ObsidianWorkspace [NAME] to switch to another workspace.
    { "<leader>of", ":ObsidianFollowLink<CR>", mode = { "n", "x" }, desc = "Follow link" }, -- :ObsidianFollowLink [vsplit|hsplit] to follow a note reference under the cursor, optionally opening it in a vertical or horizontal split.
    { "<leader>ob", ":ObsidianBacklinks<CR>", mode = { "n", "x" }, desc = "Backlinks" }, -- :ObsidianBacklinks for getting a picker list of references to the current buffer.
    { "<leader>ot", ":ObsidianTags<CR>", mode = { "n", "x" }, desc = "Tags" }, -- :ObsidianTags [TAG ...] for getting a picker list of all occurrences of the given tags.
    { "<leader>oT", ":ObsidianTemplate<CR>", mode = { "n", "x" }, desc = "Template" }, -- :ObsidianTemplate [TEMPLATE] to create a new note using a template from the templates folder.
    { "<leader>oi", ":ObsidianPasteImg<CR>", mode = { "n", "x" }, desc = "Paste image" }, -- :ObsidianPasteImg [IMGNAME] to paste an image from the clipboard into the note at the cursor position by saving it to the vault and adding a markdown image link. You can configure the default folder to save images to with the attachments.img_folder option.
    { "<leader>ol", "", mode = { "n", "x" }, desc = "Links" }, -- :ObsidianLinks to collect all links within the current buffer into a picker window.
    { "<leader>olL", ":ObsidianLinks<CR>", mode = { "n", "x" }, desc = "Links list" }, -- :ObsidianLinks to collect all links within the current buffer into a picker window.
    { "<leader>oll", ":ObsidianLink<CR>", mode = { "n", "x" }, desc = "Link" }, -- :ObsidianLink [QUERY] to link an inline visual selection of text to a note. This command has one optional argument: a query that will be used to resolve the note by ID, path, or alias. If not given, the selected text will be used as the query.
    { "<leader>oln", ":ObsidianLinkNew<CR>", mode = { "n", "x" }, desc = "Link New" }, -- :ObsidianLinkNew [TITLE] to create a new note and link it to an inline visual selection of text. This command has one optional argument: the title of the new note. If not given, the selected text will be used as the title.
    { "<leader>oe", ":ObsidianExtractNote<CR>", mode = { "n", "x" }, desc = "Extract note" }, -- :ObsidianExtractNote [TITLE] to extract the visually selected text into a new note and link to it.
    { "<leader>or", ":ObsidianRename<CR>", mode = { "n", "x" }, desc = "Rename" }, -- :ObsidianRename [NEWNAME] [--dry-run] to rename the note of the current buffer or reference under the cursor, updating all backlinks across the vault. Since this command is still relatively new and could potentially write a lot of changes to your vault, I highly recommend committing the current state of your vault (if you're using version control) before running it, or doing a dry-run first by appending "--dry-run" to the command, e.g. :ObsidianRename new-id --dry-run.
    { "<leader>oc", ":ObsidianToggleCheckbox<CR>", mode = { "n", "x" }, desc = "Toggle checkbox" }, -- :ObsidianToggleCheckbox to cycle through checkbox options.
    { "<leader>oN", ":ObsidianNewFromTemplate<CR>", mode = { "n", "x" }, desc = "New note from template" }, -- :ObsidianNewFromTemplate [TITLE] to create a new note from a template in the templates folder. Selecting from a list using your preferred picker. This command has one optional argument: the title of the new note.
    { "<leader>oT", ":ObsidianTOC<CR>", mode = { "n", "x" }, desc = "Table of contents" }, -- :ObsidianTOC to load the table of contents of the current note into a picker list.

    { "<leader>oT", ":ObsidianToday<CR>", mode = { "n", "x" }, desc = "Today" }, -- :ObsidianToday for getting a picker list of all notes created today.
    { "<leader>oy", ":ObsidianYesterday<CR>", mode = { "n", "x" }, desc = "Yesterday" }, -- :ObsidianYesterday for getting a picker list of all notes created yesterday.
    { "<leader>oo", ":ObsidianTomorrow<CR>", mode = { "n", "x" }, desc = "Tomorrow" }, -- :ObsidianTomorrow for getting a picker list of all notes created tomorrow.
    { "<leader>od", ":ObsidianDailies<CR>", mode = { "n", "x" }, desc = "Dailies" }, -- :ObsidianDailies for getting a picker list of all daily notes.
  },
  opts = {
    workspaces = {
      {
        name = "obsidian",
        path = "~/Yandex.Disk/Obsidian",
        overrides = {
          attachments = {
            img_folder = "~/Yandex.Disk/Obsidian/Исходники",
          },
        },
      },
    },
    -- Where to put new notes. Valid options are
    --  * "current_dir" - put new notes in same directory as the current buffer.
    --  * "notes_subdir" - put new notes in the default notes subdirectory.
    new_notes_location = "current_dir",

  },
}
