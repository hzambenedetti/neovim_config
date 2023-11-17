-- This file can be loaded be calling 'lua require('plugins')' from your init.vim
vim.cmd[[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use{
	    'nvim-telescope/telescope.nvim',
        -- tag = '0.1.4', 			     
        branch = '0.1.x',
	    requires = {{'nvim-lua/plenary.nvim'}}
    }

    --rose-pine colorscheme
    use({
	    'rose-pine/neovim',
	    as = 'rose-pine',
    })
	
	--nightfox colorscheme
	use({
	    "EdenEast/nightfox.nvim",
	    as = 'nightfox',
    })

    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use ('nvim-treesitter/playground')
    use ('ThePrimeagen/harpoon')
    use ('mbbill/undotree')
    use ('tpope/vim-fugitive')
    use {
	    'VonHeikemen/lsp-zero.nvim',
	    branch = 'v2.x',
	    requires = {
		    -- LSP Support
		    {'neovim/nvim-lspconfig'},             -- Required
		    {                                      -- Optional
		    'williamboman/mason.nvim',
		    run = function()
			    pcall(vim.cmd, 'MasonUpdate')
		    end,
	    },
	    {'williamboman/mason-lspconfig.nvim'}, -- Optional

	    -- Autocompletion
	    {'hrsh7th/nvim-cmp'},     -- Required
	    {'hrsh7th/cmp-nvim-lsp'}, -- Required
	    {'L3MON4D3/LuaSnip'},     -- Required
    }
}
end)

