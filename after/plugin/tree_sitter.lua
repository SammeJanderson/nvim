require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "rust", "typescript"  },

  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,

    additional_vim_regex_highlighting = false,
  },

  rainbow = {
      enable = true,
      query = 'rainbow-pares',
      strategy = require('ts-rainbow').strategy.global,
  }

}
