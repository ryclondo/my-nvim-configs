vim.cmd[[packadd packer.nvim]]
return require('packer').startup(function(use)
        use 'wbthomason/packer.nvim'
        use 'nvim-lualine/lualine.nvim'
        use ({
                'rose-pine/neovim',
                as = 'rose-pine',
                config = function()
                        vim.cmd('colorscheme rose-pine')
                end
        })
        use {
                'nvim-treesitter/nvim-treesitter',
                run = ':TSUpdate'
        }
	-- go dev
	use 'ray-x/go.nvim' -- Modern Go plugin
	use 'ray-x/guihua.lua' -- UI component dependency for go.nvim
	-- LSP Support
	use 'neovim/nvim-lspconfig' -- LSP configuration
	use 'williamboman/mason.nvim' -- Package manager for LSP servers
	use 'williamboman/mason-lspconfig.nvim' -- Bridge between mason and lspconfig
	-- go debuggin
	use 'mfussenegger/nvim-dap' -- Debug Adapter Protocol client
	use 'rcarriga/nvim-dap-ui' -- UI for nvim-dap
	use 'leoluz/nvim-dap-go' -- Go integration for nvim-dap
end)
