return {
  "mfussenegger/nvim-lint",
  optional = false,
  opts = {
    linters_by_ft = {
      markdown = { "markdownlint" },
      args = { "--config", "$HOME/.markdownlint.jsonc", "--" },
    },
  },
}
