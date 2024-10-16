return {
  url = "https://gitlab.com/schrieveslaach/sonarlint.nvim",
  cond = not vim.g.vscode,
  config = function()
    require("sonarlint").setup({
      server = {
        cmd = {
          "sonarlint-language-server",
          "-stdio",
          "-analyzers",
          vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarjs.jar"),
        },
      },
      filetypes = {
        "typescript",
        "typescriptreact",
        "javascript",
        "javascriptreact",
        "ts",
        "tsx",
      },
    })
  end,
}