return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters = {
        markdownlint_cli2 = {
          args = { "--disable", "MD013", "--" },
        },
      },
    },
  },
}
