return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag",
    },

    config = function()
        local treesitter = require("nvim-treesitter.configs")

        treesitter.setup({
            highlight = {
                enable = true,
            },
            indent = {
                enable = true
            },
            autotag = {
                enable = true,
            },
            ensure_installed = {
                'bash',
                'c',
                'c_sharp',
                'cpp',
                'css',
                'csv',
                'desktop',
                'dockerfile',
                'go',
                'helm',
                'html',
                'http',
                'hyprlang',
                'java',
                'javascript',
                'json',
                'json5',
                'lua',
                'markdown',
                'markdown_inline',
                'nginx',
                'passwd',
                'pem',
                'perl',
                'php',
                'php_only',
                'python',
                'rasi',
                'scss',
                'sql',
                'ssh_config',
                'terraform',
                'toml',
                'typescript',
                'xml',
                'yaml',
            }
        })
    end
}
