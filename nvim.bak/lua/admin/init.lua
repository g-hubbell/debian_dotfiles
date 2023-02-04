require("admin.remap")
require("admin.set")
--require('monokai').setup {}
--require('monokai').setup { palette = require('monokai').pro }
--require('monokai').setup { palette = require('monokai').soda }
--require('monokai').setup { palette = require('monokai').ristretto }
--vim.cmd("colorscheme monokai")
--
require('lualine').setup{
	options = {theme = 'molokai'}
}




require'netrw'.setup{
  -- Put your configuration here, or leave the object empty to take the default
  -- configuration.
  icons = {
    symlink = '', -- Symlink icon (directory and file)
    directory = '', -- Directory icon
    file = '', -- File icon
  },
  use_devicons = true, -- Uses nvim-web-devicons if true, otherwise use the file icon specified above
  mappings = {}, -- Custom key mappings
}

vim.cmd[[colorscheme kanagawa]]
--require'lspconfig'.phpactor.setup{}
--require'lspconfig'.cssls.setup{}


--local capabilities = vim.lsp.protocol.make_client_capabilities()
--capabilities.textDocument.completion.completionItem.snippetSupport = true

--require'lspconfig'.html.setup{
--	capabilities=capabilities,
	
--}
