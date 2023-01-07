return {

    -- Override plugin definition options
    ["goolord/alpha-nvim"] = {
        disable = false,
    }, -- enables dashboard

    ["folke/which-key.nvim"] = {
        disable = false,
    },

    ["neovim/nvim-lspconfig"] = {
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.plugins.lspconfig"
        end,
    },

    -- overrde plugin configs
    ["nvim-treesitter/nvim-treesitter"] = {
        override_options = {
            ensure_installed = {
                "json",
                "yaml",
                "markdown",
                "vim",
                "lua",
                "c",
                "cpp",
                "go",
                "gomod",
                "python",
                "cmake",
            },
        },
    },

    ["williamboman/mason.nvim"] = {
        override_options = {
            ensure_installed = {
                "codespell",
                "json-lsp",
                "dockerfile-language-server",
                "yaml-language-server",
                "yaml-fmt",

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
                "isort",

                "bash-language-server",
                "shfmt",
            },
        },
    },

    ["kyazdani42/nvim-tree.lua"] = {
        override_options = {
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
        },
    },

    -- Install a plugin
    ["max397574/better-escape.nvim"] = {
        event = "InsertEnter",
        config = function()
            require("better_escape").setup()
        end,
    },

    ["iamcco/markdown-preview.nvim"] ={
        run = function() vim.fn["mkdp#util#install"]() end,
    },

    ["ekickx/clipboard-image.nvim"] = {},

    ["mfussenegger/nvim-dap"] = {},

    ["Civitasv/cmake-tools.nvim"] = {
        config = function()
            require("cmake-tools").setup {
                cmake_command = "cmake",
                cmake_build_directory = "build/",
                cmake_build_directory_prefix = "", -- when cmake_build_directory is "", this option will be activated
                cmake_generate_options = { "-D", "CMAKE_EXPORT_COMPILE_COMMANDS=1" },
                cmake_build_options = {},
                cmake_console_size = 10, -- cmake output window height
                cmake_show_console = "always", -- "always", "only_on_error"
                cmake_dap_configuration = { name = "cpp", type = "codelldb", request = "launch" }, -- dap configuration, optional
                cmake_dap_open_command = require("dap").repl.open, -- optional
                cmake_variants_message = {
                    short = { show = true },
                    long = { show = true, max_length = 40 }
                },
            }
        end,
    },
}
