require('basic')

-- 快捷键映射
require('keybindings')

require("plugins")

-- 主题设置
require("colorscheme")

-- 插件配置
require("plugin-config.nvim-tree")

require("plugin-config.lualine")

require("plugin-config.telescope")

require("plugin-config.nvim-treesitter")

-- 内置LSP
require("lsp.setup")

-- 自动补全
require("lsp.cmp")

-- 程序竖线
--require("plugin-config.indent-blankline")

-- git signs
require("plugin-config.gitsigns")




