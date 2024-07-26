return {
  "iabdelkareem/csharp.nvim",
  dependencies = {
    "Tastyep/structlog.nvim", -- Optional, but highly recommended for debugging
  },
  config = function ()
      require("csharp").setup()
  end
}
