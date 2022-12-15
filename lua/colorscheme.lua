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
  italic = false,
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
      Constant     = {fg = "#83a598"}, --emnu 等常量 #689d6a
      Function     = {fg = "#fabd2f", bold = true},  --#fabd2f  d79921
      Define       = {fg = "#83a598"}, -- #define
      Include      = {fg = "#83a598"}, -- #include
      Macro        = {fg = "#83a598"}, -- #define XXX
      Type         = {fg = "#8ec07c"},
      Number       = {fg = "#b8bb26"}, -- #d3869d #fe8019 
      Conditional  = {fg = "#d79921"},
      Repeat       = {fg = "#d79921"},
      Special      = {fg = "#d5c4a1"}, -- #d5c4a1
      StorageClass = {fg = "#d5c4a1"},
      Operator     = {fg = "#d5c4a1"},
      -- lsp
      DiagnosticSignWarn  = {bg = "", fg = "#fabd2f"},
      DiagnosticSignError = {bg = "", fg = "#fb4934"},

  }
})
vim.cmd("colorscheme gruvbox")

