---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        vim.cmd("Neoformat");
      end,
      "Formatting",
    },

    ["<leader>fj"] = {
      function()
        vim.lsp.buf.format({bufnr = 0});
      end,
      "Java Formatting",
    }

  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

-- more keybinds!

return M
