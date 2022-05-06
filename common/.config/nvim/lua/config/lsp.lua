local M = {}

local m = require("utils")
local lsp = require("lspconfig")

M.on_attach = function()
  m.nmap('[d', [[<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>]])
  m.nmap(']d', [[<cmd>lua vim.lsp.diagnostic.goto_next()<CR>]])
  m.nmap('<leader>la', [[<cmd>lua vim.lsp.buf.code_action()<CR>]])
  m.nmap('<leader>ld', [[<cmd>lua vim.lsp.buf.definition()<CR>]])
  m.nmap('<leader>lD', [[<cmd>lua vim.lsp.buf.type_definition()<CR>]])
  m.nmap('<leader>li', [[<cmd>lua vim.lsp.buf.implementation()<CR>]])
  m.nmap('<leader>lf', [[<cmd>lua vim.lsp.buf.formatting()<CR>]])
  m.nmap('<leader>lh', [[<cmd>lua vim.lsp.buf.hover()<CR>]])
  m.nmap('<leader>lr', [[<cmd>lua vim.lsp.buf.rename()<CR>]])
  m.nmap('<leader>lx', [[<cmd>lua vim.lsp.buf.references()<CR>]])
  m.nmap('<leader>ls', [[<cmd>lua vim.lsp.buf.signature_help()<CR>]])

  m.nmap("<leader>lds", [[<cmd>lua require("telescope.builtin").lsp_document_symbols()<CR>]])
  m.nmap("<leader>lws", [[<cmd>lua require("telescope.builtin").lsp_dynamic_workspace_symbols()<CR>]])
end

M.setup = function()

  --lsp.kotlin_language_server.setup{
  --  cmd = { "/Users/thanhle/source/kotlin/kotlin-language-server/server/build/install/server/bin/kotlin-language-server" }
  --}

  lsp.sumneko_lua.setup {
    on_attach = M.on_attach,
  }

  local capabilities = vim.lsp.protocol.make_client_capabilities()

  lsp.util.default_config = vim.tbl_extend("force", lsp.util.default_config, {
    handlers = {
      ["textDocument/publishDiagnostics"] = shared_diagnostic_settings,
    },
    capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities),
  })

end

return M
