" --- AutoComandos ---

" Retornar Cursor ao Último Local onde o arquivo foi editado
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" --- Fim dos AutoComandos ---