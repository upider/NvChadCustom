local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

---@diagnostic disable-next-line: different-requires
local lspconfig = require "lspconfig"

local servers = {
    "jdtls",
    "clangd",
    "pyright",
    "gopls",
}

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities,
    }
end

lspconfig.clangd.init_options = {
    init_options = {
        compilationDatabaseDirectory = "build";
    }
}
