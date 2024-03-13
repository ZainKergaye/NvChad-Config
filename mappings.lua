---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        vim.cmd "Neoformat"
      end,
      "Format file",
    },

    ["<leader>fj"] = {
      function()
        vim.lsp.buf.format { bufnr = 0 }
      end,
      "Java Formatting",
    },

    ["<leader>gp"] = {
      function()
        vim.cmd "Gitsigns preview_hunk"
      end,
      "Git preview hunk",
    },

    ["<leader>gb"] = {
      function()
        vim.cmd "Gitsigns toggle_current_line_blame"
      end,
      "Git toggle line blame",
    },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

return M
