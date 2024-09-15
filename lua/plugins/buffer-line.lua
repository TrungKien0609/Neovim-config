return {
  "akinsho/bufferline.nvim",
  version = "*",
  config = function()
    require("bufferline").setup({
      options = {
        indicator_icon = " * ",
      },
    })
    vim.keymap.set("n", "<leader>tc", ":bdelete<CR>:BufferLineCyclePrev<CR>", { noremap = true, silent = true })
  end,
}
