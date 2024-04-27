" Ensure the Lua part of the plugin is loaded
lua require('quotes')

" Define a Neovim command that allows the user to display a new quote
command! ShowQuote lua require('quotes').display_quote()

" Optionally, you can set up an autocommand to display a quote at startup
" Uncomment the following line to enable it
" autocmd VimEnter * lua require('quotes').display_quote()

