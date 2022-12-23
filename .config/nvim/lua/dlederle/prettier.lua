local status, null_ls = pcall(require, "null-ls")
if (not status) then
  print("null-ls not installed")
  return
end

null_ls.setup({
  sources = {
    null_ls.builtins.diagnostics.eslint_d.with({
      diagnostics_format = '[eslint] #{m}\n(#{c})'
    }),
    null_ls.builtins.diagnostics.fish
  }
})

local pstatus, prettier = pcall(require, "prettier")
if (not pstatus) then
  print("prettier not installed")
  return
end

prettier.setup {
  bin = 'prettierd',
  filetypes = {
    "css",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "json",
    "scss",
    "less"
  }
}
