return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    local treesitterConfigs = require("nvim-treesitter.configs")
    treesitterConfigs.setup({
      ensure_installed = { "lua", "vim", "vimdoc", "query", "vue", "javascript", "html", "css", "json", "tsx", "typescript", "yaml" },
      sync_install = false,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = true
      },
      indent = { enable = true, disable = { "yaml" } },
    })
  end
}
