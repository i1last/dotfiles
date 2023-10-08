local opt = vim.opt
opt.numberwidth = 1
opt.spelllang = { 'en_us', 'ru_ru' }
opt.spell = true
opt.wrap = false
opt.relativenumber = true
opt.scrolloff = 5
opt.sidescrolloff = 28
vim.cmd('autocmd BufRead,BufNewFile *.njk setfiletype html')
vim.cmd('autocmd BufRead,BufNewFile *.rasi setfiletype css | call timer_start(800, {-> execute("LspStop")})')
vim.cmd('cnoreabbrev ц w')
vim.cmd('cnoreabbrev й q')
vim.cmd('cnoreabbrev ф a')
vim.cmd('cnoreabbrev цй wq')
vim.cmd('cnoreabbrev цйф wqa')


local function escape(str)
  -- You need to escape these characters to work correctly
  local escape_chars = [[;,."|\]]
  return vim.fn.escape(str, escape_chars)
end

-- Recommended to use lua template string
local en =       [[`qwertyuiop[]asdfghjkl;'zxcvbnm,./]]
local ru =       [[ёйцукенгшщзхъфывапролджэячсмитьбю.]]
local en_shift = [[~QWERTYUIOP{}ASDFGHJKL:"ZXCVBNM<>?]]
local ru_shift = [[ËЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ,]]

opt.langmap = vim.fn.join({
    -- | `to` should be first     | `from` should be second
    escape(ru_shift) .. ';' .. escape(en_shift),
    escape(ru) .. ';' .. escape(en),
}, ',')
