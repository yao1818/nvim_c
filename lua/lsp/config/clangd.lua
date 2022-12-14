local common = require("lsp.common-config")
local opts = {
  capabilities = common.capabilities,
  settings = {
    clangd = {
        analysis = {
            diagnosticMode = false,
            typeCheckingMode = "off",
        }
    }
  },
  flags = common.flags,
  on_attach = function(client, bufnr)
    common.disableFormat(client)
    common.keyAttach(bufnr)
  end,
}

return {
  on_setup = function(server)
    server.setup(opts)
  end,
}
