-- Config nvim plug


local packer = require("packer")
packer.startup(
  function(use)
   -- Packer 可以管理自己本身
   use 'wbthomason/packer.nvim'
   -- 你的插件列表...
   --------------------------------Colorshchemes-------------------------------
   use 'folke/tokyonight.nvim'
   use({ "ellisonleao/gruvbox.nvim", requires = { "rktjmp/lush.nvim" } })
   -- use 'shaunsingh/nord.nvim'
   -- use 'ful1e5/onedark.nvim'
   -- use 'EdenEast/nightfox.nvim'

   --------------------------------Plugins-------------------------------------
   -- nvim-tree (左侧文件浏览器)
   use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
   -- bufferline
   use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }})
   -- lualine
   use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
   use("arkav/lualine-lsp-progress")
   -- telescope
   use { 'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" } }
   -- telescope extensions
   use "LinArcX/telescope-env.nvim"
   -- dashboard-nvim
   use("glepnir/dashboard-nvim")
   -- treesitter
   use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })

   -- LSP
   -- use("williamboman/nvim-lsp-installer")
   -- Lspconfig
   use({ "williamboman/mason.nvim" })
   use({ "williamboman/mason-lspconfig.nvim" })
   use({ "neovim/nvim-lspconfig" })
 
end)



-- 每次保存 plugins.lua 自动安装插件
-- pcall(
--   vim.cmd,
--   [[
--     augroup packer_user_config
--     autocmd!
--     autocmd BufWritePost plugins.lua source <afile> | PackerSync
--     augroup end
--   ]]
-- )


