-- Config nvim plug


local packer = require("packer")
packer.startup(
  function(use)
   -- Packer 可以管理自己本身
   use 'wbthomason/packer.nvim'
   -- 你的插件列表...
   --------------------------------Colorshchemes-------------------------------
   --use 'folke/tokyonight.nvim'
   use({ "ellisonleao/gruvbox.nvim",
         requires = { "rktjmp/lush.nvim", commit = "979f4d206e7111c2b710aa85cc723f6140d2ec98"} })
--   use 'christianchiarulli/nvcode-color-schemes.vim'
--   use { "briones-gabriel/darcula-solid.nvim", requires = "rktjmp/lush.nvim" }
   -- use 'shaunsingh/nord.nvim'
   -- use 'ful1e5/onedark.nvim'
   -- use 'EdenEast/nightfox.nvim'

   --------------------------------Plugins-------------------------------------
   -- nvim-tree (左侧文件浏览器)
   use({ "yao1818/nvim-tree.lua", branch = "dev",
         requires = {"kyazdani42/nvim-web-devicons", commit = "c873091fe237f22c915905c4c0c3a82cbfce5f4d",
         opt = true} })
   -- bufferline
   use({ "akinsho/bufferline.nvim", commit = "d631817de1b52c7b1947e25ec8b7638492914768",
         requires = { "kyazdani42/nvim-web-devicons", commit = "c873091fe237f22c915905c4c0c3a82cbfce5f4d",
         "moll/vim-bbye" }})
   -- lualine
   use({"nvim-lualine/lualine.nvim", commit = "bfa0d99ba6f98d077dd91779841f1c88b7b5c165"})
   use("arkav/lualine-lsp-progress")
   -- telescope
   use { 'nvim-telescope/telescope.nvim', commit = "cabf991b1d3996fa6f3232327fc649bbdf676496",
         requires = { "nvim-lua/plenary.nvim", commit = "9e7c62856e47053ec7b17f82c5da0f1e678d92c8"} }
   -- telescope extensions
   use "LinArcX/telescope-env.nvim"
   -- dashboard-nvim
   use({"glepnir/dashboard-nvim", commit = "5ccce7b50c8ce81c01956864ff51b455ee6933c4"})
   -- treesitter
   use({ "nvim-treesitter/nvim-treesitter", commit = "507527711fdd8f701544024aeb1a9a068f986d89", run = ":TSUpdate" })

   use ({'nvim-treesitter/playground', after = 'nvim-treesitter'})
   -- LSP
   -- use("williamboman/nvim-lsp-installer")
   -- Lspconfig
   use({ "williamboman/mason.nvim" })
   use({ "williamboman/mason-lspconfig.nvim" })
   use({ "neovim/nvim-lspconfig", commit = "cbf8762f15fac03a51eaa2c6f983d4a5045c95b4"})
    -- 补全引擎  LSP补全不够好，需要这个补全支持
    use({"hrsh7th/nvim-cmp", commit = "ea9eaff5739856f3187d228d2c1181ea49fd4697"})
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
--    use("tami5/lspsaga.nvim")
    use("glepnir/lspsaga.nvim")
 
    -- 代码格式化
--    use("mhartington/formatter.nvim")
    use({ "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" })
    -- TypeScript 增强
    use({ "jose-elias-alvarez/nvim-lsp-ts-utils", requires = "nvim-lua/plenary.nvim" })
    use("jose-elias-alvarez/typescript.nvim")

    use {'simrat39/symbols-outline.nvim'}
    -- Lua 增强
    use("folke/neodev.nvim")
    -- JSON 增强
--    use("b0o/schemastore.nvim")
    -- Rust 增强
--    use("simrat39/rust-tools.nvim")
    -- indent-blankline
    use({"lukas-reineke/indent-blankline.nvim", commit = "fa1ab3047b38f8e3348f1e6b084c81cff860af74"})
 
    -- git 更改的标志
    use {
      'lewis6991/gitsigns.nvim', commit = "9ff7dfb051e5104088ff80556203634fc8f8546d",
      config = function()
        require('gitsigns').setup()
      end
    }

    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }})

    use {'tanvirtin/vgit.nvim', requires = {'nvim-lua/plenary.nvim'}
}
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


