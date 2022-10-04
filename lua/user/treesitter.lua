local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    print("treesitter failed to load")
    return
end

configs.setup {
  ensure_installed = "all",
  sync_install = false,
  ignore_install = { "" },
  highlight = {
    enable = true,
    disable = { "" },
    additional_vim_regex_highlighting = true,

  },
  indent = { enable = true, disable = { "" } },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}


