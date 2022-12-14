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
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
  overrides = {
      SignColumn = {bg = ""},
      Constant = {fg = "#83a598"}, --emnu 等常量 #689d6a
      Function = {fg = "#fabd2f", bold = true},
      Define = {fg = "#83a598"},

  }
})
vim.cmd("colorscheme gruvbox")

