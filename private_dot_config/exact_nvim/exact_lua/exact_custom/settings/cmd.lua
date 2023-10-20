local c = vim.cmd

-- Определять .njk файлы как .html
c("autocmd BufRead,BufNewFile *.njk setfiletype html")

-- Определять .rasi файлы как .css и отключить проверку синтаксиса через 800мс
c('autocmd BufRead,BufNewFile *.rasi setfiletype css | call timer_start(800, {-> execute("LspStop")})')

-- Аналоги частых команд на кириллице транслитом
c("cnoreabbrev ц w")
c("cnoreabbrev й q")
c("cnoreabbrev ф a")
c("cnoreabbrev цй wq")
c("cnoreabbrev цйф wqa")
