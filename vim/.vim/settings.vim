" --- Configurações Básicas Essenciais ---

" Ativa o realce de sintaxe
syntax enable

" Ativa o realce de sintaxe baseado no tipo de arquivo
filetype plugin indent on

" Ativa a numeração de linhas
set number

" Ativa a numeração relativa de linhas (útil para navegação e comandos)
" Se você quiser as duas (número normal na linha atual e relativo nas outras):
set number relativenumber

" Habilita a barra de status (mostra informações do arquivo, linha, coluna)
set laststatus=2

" Mostra o comando incompleto na barra de status
set showcmd

" Mostra a linha e coluna atuais na barra de status
set ruler

" --- Indentação e Espaços ---

" Converte tabs em espaços
set expandtab

" Define o número de espaços para cada tab e para a indentação automática
set tabstop=4
set shiftwidth=4

" --- Busca ---

" Realça os resultados da busca
set hlsearch

" Torna a busca incremental (mostra os resultados enquanto você digita)
set incsearch

" Ignora maiúsculas/minúsculas na busca, a menos que haja uma maiúscula na busca
set ignorecase
set smartcase

" --- Aparência e Usabilidade ---

" Ativa o wrap de linha (linhas longas são quebradas visualmente)
set wrap

" Ativa o modo visual com o mouse (útil para selecionar texto)
set mouse=a

" Define o tema de cores (ex: "default", "desert", "molokai", "solarized", etc.)
" Alguns temas podem exigir que você os instale primeiro.
" Ex: color desert
" Ex: colorscheme default

" --- Salvar e Sair Facilmente ---

" Permite salvar sem confirmação mesmo se o arquivo não tiver sido modificado
set autowriteall

" --- Desfazer Avançado (Persistência) ---

" Cria diretórios para persistir histórico de undo (desfazer) entre sessões
" Isso permite que você desfaça alterações mesmo depois de fechar e reabrir o Vim
set undofile
set undodir=~/.vim/undodir

" --- Configurar a tecla <Leader> ---
" Seta a tecla <Leader> para a barra de espaço.
" Isso deve ser feito *antes* de quaisquer mapeamentos que usem <Leader>.
let mapleader = " "

" --- Fim das Configurações ---