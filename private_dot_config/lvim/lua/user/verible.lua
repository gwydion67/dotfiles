local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
  return
end

-- import cmp-nvim-lsp plugin safely
local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
  return
end




local capabilities = cmp_nvim_lsp.default_capabilities()

-- configure for svlangserver
lspconfig["svlangserver"].setup({
  capabilities = capabilities,
  filetypes = { "verilog", "systemverilog" },

});
