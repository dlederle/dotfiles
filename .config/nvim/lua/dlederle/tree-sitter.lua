local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then
  print("treesitter not installed")
  return
end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "tsx",
    "toml",
    "fish",
    "php",
    "json",
    "yaml",
    "swift",
    "css",
    "html",
    "lua",
    "elixir",
    "bash",
    "dockerfile",
    "erlang",
    "eex",
    "heex",
    "ruby",
    "python",
    "yaml",
    "svelte",
    "php"
  },
  autotag = {
    enable = true,
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }