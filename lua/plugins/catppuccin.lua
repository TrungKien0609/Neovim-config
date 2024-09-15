return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      transparent_background = true,
      show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
      custom_highlights = function(colors)
        vim.api.nvim_set_hl(0, "CmpItemKindCopilot", { fg = colors.green })

        return {
          -- Override LSP hover popup background (NormalFloat)
          NormalFloat = { bg = colors.mantle, fg = colors.text },

          -- Override LSP hover popup border (FloatBorder)
          FloatBorder = { bg = colors.mantle, fg = colors.blue },
        }
      end,

      integrations = {
        cmp = false, -- it not works !!!!!
      },
    })

    vim.cmd.colorscheme("catppuccin")
  end,
}
