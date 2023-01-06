local M = {}

M.treesitter = {
    ensure_installed = {
        "vim",
        "lua",
        "html",
        "css",
        "javascript",
        "c",
    },
}

M.mason = {
    ensure_installed = {
        "codespell",

        "lua-language-server",
        "stylua",
        "selene",

        "clangd",
        "clang-format",

        "gopls",
        "gofumpt",
        "revive",

        "pyright",
        "mypy",
        "blue",

        "shfmt",
        "shellcheck",
    },
}

M.server = {
    "sumneko_lua",
    "clangd",
    "pyright",
    "gopls",
}

M.nvim_cmp = {
    -- 增加补全源
    sources = {
        { name = "emoji" },
        { name = "calc" },
        { name = "vim-dadbod-completion" },
        { name = "cmp_tabnine" },

        -- 原补全
        { name = "luasnip" },
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "nvim_lua" },
        { name = "path" },
    },
    window = {
        completion = {},
        documentation = {},
    },
}

-- git support in nvimtree
M.nvimtree = {
    git = {
        enable = true,
    },

    renderer = {
        highlight_git = true,
        icons = {
            show = {
                git = true,
            },
        },
    },
}

return M
