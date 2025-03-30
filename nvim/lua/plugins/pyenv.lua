return {
  "AckslD/swenv.nvim",
  config = function()
    require("swenv").setup({
      get_venvs = function()
        -- Replace this with the absolute or relative path to your 'env' directory
        return { "./" }
      end,
      post_set_venv = function(venv)
        print("Activated virtual environment: " .. venv)
      end,
    })
  end,
}
