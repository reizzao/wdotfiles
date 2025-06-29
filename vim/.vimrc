" Define o modo de compatibilidade com o vi, importante para muitos plugins funcionarem corretamente.
set nocompatible

" --- Configuração do Gerenciador de Plugins (Vim-plug) ---
" Este bloco DEVE ser o primeiro a ser carregado.
" Ele inicializa o Vim-plug e carrega os plugins listados em plugins.vim.
source ~/.vim/plugins.vim

" --- Carrega as Configurações Básicas ---
" Opções gerais do Vim (númeração de linha, indentação, mouse, busca, etc.)
source ~/.vim/settings.vim

" --- Carrega as Funções Customizadas ---
" Definições de funções Vimscript que são usadas pelos mapeamentos.
" Deve ser carregado antes dos keymaps.
source ~/.vim/functions.vim

" --- Carrega os Mapeamentos de Teclas ---
" Todos os seus atalhos personalizados.
source ~/.vim/keymaps.vim

" --- Carrega os AutoComandos ---
" Comandos que são executados automaticamente em eventos específicos.
source ~/.vim/autocmds.vim

" --- Fim do .vimrc principal ---