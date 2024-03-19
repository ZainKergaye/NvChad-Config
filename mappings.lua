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

    ["<leader>gh"] = {
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

    ["<leader>mb"] = {
      function()
        require('dap').toggle_breakpoint()
      end,
      "Debug toggle breakpoint",
    },

    ["<leader>md"] = {
      function()
        require('dap').continue()
      end,
      "Start debug",
    },

    ["<leader>ms"] = {
      function()
        require('dap').terminate()
      end,
      "Stop debug",
    },

    ["<leader>mi"] = {
      function()
        require('dap').step_into()
      end,
      "Debug step into",
    },

    ["<leader>mo"] = {
      function()
        require('dap').step_over()
      end,
      "Debug step into",
    },
},
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

return M
