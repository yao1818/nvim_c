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
--   use 'christianchiarulli/nvcode-color-schemes.vim'
--   use { "briones-gabriel/darcula-solid.nvim", requires = "rktjmp/lush.nvim" }
   -- use 'shaunsingh/nord.nvim'
   -- use 'ful1e5/onedark.nvim'
   -- use 'EdenEast/nightfox.nvim'

   --------------------------------Plugins-------------------------------------
   -- nvim-tree (左侧文件浏览器)
   use({ "kyazdani42/nvim-tree.lua", requires = {"kyazdani42/nvim-web-devicons", opt = true} })
   -- bufferline
--   use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
   use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }})
   -- lualine
   --use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
   use("nvim-lualine/lualine.nvim")
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
    -- 补全引擎  LSP补全不够好，需要这个补全支持
    use("hrsh7th/nvim-cmp")
    -- Snippet 引擎
--    use("L3MON4D3/LuaSnip")
--    use("saadparwaiz1/cmp_luasnip")
    use("hrsh7th/vim-vsnip")
    -- 补全源
    use("hrsh7th/cmp-vsnip")
    use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
    use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
    use("hrsh7th/cmp-path") -- { name = 'path' }
--    use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }
    use("hrsh7th/cmp-nvim-lsp-signature-help") -- { name = 'nvim_lsp_signature_help' }
    -- 常见编程语言代码段
    use("rafamadriz/friendly-snippets")
    -- UI 增强
    use("onsails/lspkind-nvim")
    use("tami5/lspsaga.nvim")
    -- 代码格式化
    use("mhartington/formatter.nvim")
    use({ "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" })
    -- TypeScript 增强
    use({ "jose-elias-alvarez/nvim-lsp-ts-utils", requires = "nvim-lua/plenary.nvim" })
    use("jose-elias-alvarez/typescript.nvim")

    -- Lua 增强
    use("folke/neodev.nvim")
    -- JSON 增强
--    use("b0o/schemastore.nvim")
    -- Rust 增强
--    use("simrat39/rust-tools.nvim")

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


