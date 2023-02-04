-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
  		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	
	use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

	use {
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = { 
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		}
	}
    
    use 'preservim/nerdtree'

    --use 'nvim-tree/nvim-web-devicons'
	use ('nvim-treesitter/playground')
    
    use 'prichrd/netrw.nvim'
    
    use 'ggandor/lightspeed.nvim'

	use('mbbill/undotree')

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},         -- Required
			{'hrsh7th/cmp-nvim-lsp'},     -- Required
			{'hrsh7th/cmp-buffer'},       -- Optional
			{'hrsh7th/cmp-path'},         -- Optional
			{'saadparwaiz1/cmp_luasnip'}, -- Optional
			{'hrsh7th/cmp-nvim-lua'},     -- Optional

			-- Snippets
			{'L3MON4D3/LuaSnip'},             -- Required
			{'rafamadriz/friendly-snippets'}, -- Optional
		}
	}


    use 'kyazdani42/nvim-web-devicons'

	use {
  		'nvim-lualine/lualine.nvim',
  		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

    use({
        "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
        config= function()
            require("lsp_lines").setup()
        end,
    })
    use 'rebelot/kanagawa.nvim'

	use 'folke/tokyonight.nvim'
	
	use 'tanvirtin/monokai.nvim'
end)
