return {
  "renerocksai/telekasten.nvim",

  dependencies = { "nvim-telescope/telescope.nvim" },
  opts = {
    home = vim.fn.expand("~/Dev/ovet/notes"),
  },
  keys = {
    { "<leader>zp", "<cmd>Telekasten panel<CR>", desc = "notes" },
    { "<leader>zt", "<cmd>Telekasten goto_today<CR><CR>", desc = "notes" },
  },
}
