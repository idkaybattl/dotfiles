return {
    {
        "williamboman/mason.nvim",

        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "omnisharp",
                    "clangd",
                    "cssls",
                    "gopls",
                    "html",
                    "pyright",
                    "eslint",
                    "texlab",
                    "rust_analyzer",
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            local function on_attach(client, bufnr)
                vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr })
                vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr })
                vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { buffer = bufnr })
            end

            vim.lsp.config("*", {
                capabilities = capabilities,
            })

            vim.lsp.config("omnisharp", {
                capabilities = capabilities,
                cmd = { "omnisharp", "--languageserver", "--hostPID", tostring(vim.fn.getpid()) },
                enable_import_completion = true,
                enable_editorconfig_support = true,
                enable_roslyn_analyzers = true,
                organize_imports_on_format = true,
            })
            vim.lsp.config("pyright", {
                settings = {
                    python = {
                        analysis = {
                            typeCheckingMode = "basic",

                            reportOptionalMemberAccess = false,
                            reportUnusedVariable = false,
                            reportUnknownMemberType = false,
                        },
                    },
                },
            })
        end,
    },
}
