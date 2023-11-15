local G = require('G')


local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
    vim.notify("没有找到 nvim-treesitter")
    return
end

treesitter.setup({
  -- 安装 language parser
  -- :TSInstallInfo 命令查看支持的语言
  ensure_installed = { "c", "html", "lua", "vim", " markdown", "python", "cpp", "cmake"},
  -- 启用代码高亮模块
  highlight = {
    enable = true,
--    disable = { "vim" },
    additional_vim_regex_highlighting = false,
  },

  G.hi({
        ["@function"] = { fg = "#B8BB50", bold = true};
        ["@method"] = { fg = "#B8BB50", bold = true};
        ["@constructor"] = { fg = "#B8BB50", bold = true};
        ["@function.call"] = { fg = "#B8BB50", bold = true};
        ["@storageclass"] = { fg = "#83A598", bold = false};
        ["@constant"] = { fg = "#83A598", bold = false};
        ["@type"] = { fg = "#83A598", bold = false};
        ["@type.builtin"] = { fg = "#83A598", bold = false};
        ["@string"] = { fg = "#83A598", bold = false};
        ["@keyword"] = { fg = "#83A598", bold = false};
        ["@repeat"] = { fg = "#fabd2f", bold = false};
        --["@keyword.return"] = { fg = "#fabd2f", bold = false};
        ["@conditional"] = { fg = "#fabd2f", bold = false};
        ["@punctuation.bracket"] = { fg = "#d5c4a1", bold = false};
        ["@punctuation.delimiter"] = { fg = "#d5c4a1", bold = false};  -- 6AB97C green DEB34D
        ["@number"] = { fg = "#fabd2f", bold = false};
        ["@variable"] = { fg = "#d5c4a1", bold = false};
        ["@parameter"] = { fg = "#d5c4a1", bold = false};
        ["@property"] = { fg = "#d5c4a1", bold = false};
        ["@operator"] = { fg = "#bfc4a1", bold = false};

  }),

})

-- -- 启用增量选择模块
-- incremental_selection = {
--   enable = true,
--   keymaps = {
--     init_selection = "<CR>",
--     node_incremental = "<CR>",
--     node_decremental = "<BS>",
--     scope_incremental = "<TAB>",
--   },
-- },




