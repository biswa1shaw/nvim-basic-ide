local M = {
  "kyazdani42/nvim-tree.lua",
  commit = "967865cdb7ac56046af01a0cd79f215bda5f59aa",
  event = "VimEnter"
}

function M.config()
  local tree_cb = require("nvim-tree.config").nvim_tree_callback
  require("nvim-tree").setup {
    update_focused_file = {
      enable = true,
      update_cwd = true,
    },
    renderer = {
      icons = {
        glyphs = {
          default = "",
          symlink = "",
          folder = {
            arrow_open = "",
            arrow_closed = "",
            default = "",
            open = "",
            empty = "",
            empty_open = "",
            symlink = "",
            symlink_open = "",
          },
          git = {
            unstaged = "",
            staged = "S",
            unmerged = "",
            renamed = "➜",
            untracked = "U",
            deleted = "",
            ignored = "◌",
          },
        },
      },
    },
    diagnostics = {
      enable = true,
      show_on_dirs = true,
      icons = {
        hint = "",
        info = "",
        warning = "",
        error = "",
      },
    },
    view = {
      width = 30,
      side = "left",
      mappings = {
        list = {
          { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
          { key = "h",                  cb = tree_cb "close_node" },
          { key = "v",                  cb = tree_cb "vsplit" },
        },
      },
    },
  }
end

return M
