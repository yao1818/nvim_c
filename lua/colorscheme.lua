-- Config nvim colorsheme

--vim.cmd 'set termguicolors'

local colorscheme = "gruvbox"
--local colorscheme = "tokyonight"
--local colorscheme = "darcula-solid"
--local colorscheme = "nvcode"



-- tokyonight
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not find！")
  return
end

require("gruvbox").setup({
  undercurl = true,
  underline = false,
  bold = true,
  italic =  {
     strings = false,
     operators = false,
     comments = false,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "hard", -- can be "hard", "soft" or empty string
  dim_inactive = false,
  palette_overrides = {},
  transparent_mode = false,
  overrides = {
      SignColumn   = {bg = ""},
      Character     = {fg = "#fabd2f"}, --emnu 等常量 #689d6a
      Constant     = {fg = "#83a598"}, --emnu 等常量 #689d6a    #b16286粉色
      Function     = {fg = "#b8bb50", bold = true},  --#fabd2f  d79921
      Define       = {fg = "#83a598"}, -- #define
      Include      = {fg = "#83a598"}, -- #Include
      String       = {fg = "#83a598"},
      Keyword      = {fg = "#83a598"},
      Macro        = {fg = "#83a598"}, -- #define XXX
      Type         = {fg = "#8ec07c"},
      Number       = {fg = "#fabd2f"}, -- #d3869d #fe8019 
      Conditional  = {fg = "#d79921"}, --d79921 橘色  fabd2f 黄色
      Identifier   = {fg = "#d5c4a1"}, -- 局部变量
--      Boolean      = {fg = "#fabd2f"},
      Repeat       = {fg = "#d79921"},
      Special      = {fg = "#d5c4a1"}, -- #d5c4a1 白色偏深
      StorageClass = {fg = "#83a598"}, -- struct等
      Operator     = {fg = "#d5c4a1"},  -- 等于号 等
      Search       = {fg = "#928374"}, -- 搜索的背景颜色
      IncSearch    = {fg = "#d79921"}, -- 光标指向搜索文字时颜色
      CursorLine   = {bg = "#282828"},

--      MatchParen    = {fg = "#b16286"},  --光标在括号上显示的颜色
      SpecialKey    = {fg = "#d79921"},
      Exception     = {fg = "#d79921"},
      PreCondit     = {fg = "#83a598"},  -- ifdef
      PreProc       = {fg = "#b16286"},
      SpecialChar   = {fg = "#d79921"},
      SpecialComment= {fg = "#b16286"},
      Statement     = {fg = "#d79921"},
      Structure     = {fg = "#8ec07c"}, -- struct 变量颜色
      Todo          = {fg = "#8ec07c"},
      Typedef       = {fg = "#b16286"},
      Label         = {fg = "#d79921"},



      -- lsp
      DiagnosticSignWarn  = {bg = "", fg = "#fabd2f"},
      DiagnosticSignError = {bg = "", fg = "#fb4934"},
      -- git signs
      GitSignsAdd    = {bg = "", fg = "#b8bb26"},    --"#98971a"
      GitSignsChange = {bg = "", fg = "#83a598"},    --"#458588"
      GitSignsDelete = {bg = "", fg = "#fb4934"},    --"#cc241d"

  }
})
vim.cmd("colorscheme gruvbox")

