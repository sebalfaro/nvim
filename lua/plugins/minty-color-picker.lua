return {
  {
    "nvchad/minty",
    lazy = true,
    dependencies = {
      "nvchad/volt",
    },
    keys = {
      {
        "<Leader>cP",
        function()
          require("minty.huefy").open({ border = true })
        end,
        desc = "Hue picker (Minty)",
      },
      {
        "<Leader>cp",
        function()
          require("minty.shades").open({ border = true })
        end,
        desc = "Shade picker (Minty)",
      },
    },
  },
}
