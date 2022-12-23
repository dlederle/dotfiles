local status, mason = pcall(require, "mason")
if (not status) then
  print("mason not installed")
  return
end
local status2, lspconfig = pcall(require, "mason-lspconfig")
if (not status2) then
  print("mason-lspconfig not installed")
  return
end

mason.setup()

lspconfig.setup {
  ensure_installed = { "sumneko_lua", "tailwindcss" },
}

