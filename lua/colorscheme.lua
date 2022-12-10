-- Config nvim colorsheme

local colorscheme = "gruvbox"
-- tokyonight
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not find！")
  return
end



