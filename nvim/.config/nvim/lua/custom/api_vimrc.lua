     -- API VIMRC --

     -- Vars locais mapeando api vim para usar neste arquivo
     local api = vim.api
     local opt = vim.opt
     local g = vim.g
     local cmd = vim.cmd

     print("vindo do file: custom/api_vimrc")

     cmd([[ syntax on ]])
     -- ajudar na syntaxe das linguagens

     cmd([[ syntax enable  ]])
     -- Habilitar syntax highlighing

     -- AutoSave - TODO NAO FUNCIONANDO --
     cmd([[ set autowriteall ]])

     cmd([[ let extension = expand('%:e') ]])
     cmd([[ let filenamev = expand('%:t') ]])

     -- SET MAPLEADER -> TODO

     cmd([[ set noswapfile ]])
     -- desabilita criação de arquivo  backup .swp

     cmd([[ confirm ]])
     -- pede confirmações antes de ação

     cmd([[ set title ]])
     -- mostra titulo ???

     -- DESIGNS --

     -- CURSOR --
     cmd([[ set guicursor= ]])
     -- definir cursor como nada assume o I-Beam se tiver configurado no terminal.

     cmd([[ set nowrap ]])
     -- Exibir linhas longas como apenas uma linha : Display long lines as just one line

     cmd([[ set encoding=utf-8  ]])
     -- A codificação exibida : The encoding displayed

     cmd([[ set pumheight=10 ]])
     -- Makes popup menu smaller : tornar menu popup menor

     cmd([[ set fileencoding=utf-8  ]])
     -- A codificação gravada no arquivo : The encoding written to file :

     cmd([[ set cmdheight=1 ]])
     -- Mais espaço para exibição de mensagens : More space for displaying messages

     cmd([[ set iskeyword+=- ]])
     -- tratar palavras separadas por travessão como um objeto de texto de palavra : treat dash separated words as a word text object

     cmd([[ set mouse=a ]])
     -- Habilita mouse : Enable your mouse

     cmd([[ set splitbelow ]])
     -- As divisões horizontais estarão automaticamente abaixo : Horizontal splits will automatically be below

     cmd([[ set splitright  ]])
     -- Vertical splits will automatically be to the right

     cmd([[ set t_Co=256 ]])
     -- Suporta 256 cores : Support 256 colors

     cmd([[ set conceallevel=0 ]])

     -- Para que eu possa ver  em arquivos markdown : So that I can see in markdown files

     -- IDENTACAO
     cmd([[ set tabstop=4 ]])
     -- Insert 2 spaces for a tab

     cmd([[ set shiftwidth=2 ]])
     -- Alterar o número de caracteres de espaço inseridos para recuo : Change the number of space characters inserted for indentation

     cmd([[ set smarttab ]])
     -- Torna a tabulação mais inteligente e perceberá que você tem 2 contra 4 : Makes tabbing smarter will realize you have 2 vs 4

     cmd([[ set expandtab ]])
     -- Converte tabulações em espaços  : Converts tabs to spaces

     cmd([[ set smartindent ]])
     -- Torna o recuo inteligente : Makes indenting smart

     cmd([[ set autoindent ]])
     -- Bom recuo automatico : Good auto indent

     cmd([[ set laststatus=0 ]])
     -- Sempre exibir a linha de status : Always display the status line

     cmd([[ set ruler ]])
     -- Mostrar a posição do cursor o tempo todo: Show the cursor position all the time

     -- LINHAS
     cmd([[ set number  ]])
     -- mostrar numero das linhas : Show line numbers

     cmd([[ set showtabline=1 ]])
     -- Sempre mostrar guias e a quantidade de tabs : Always show tabs

     -- AREA TRANSFERENCIA NVIM >> LINUX --
     cmd([[ set clipboard=unnamedplus ]])
     -- compartilhar de área de transferência entre o Vim e o Linux

               -- Maps EDITIONS --

-- Salvar --
cmd([[
  nnoremap <C-s> :w<CR>
  inoremap <C-s> <Esc>:w<CR>l
  vnoremap <C-s> <Esc>:w<CR>
]])

-- Copiar >> Colar -- Volta em modo insert --
cmd([[
  noremap <C-c> "+y
  inoremap <C-c> "+y<CR>

  noremap <C-v> "+p
  inoremap <C-v> <Esc>"+p<Esc>i
]])

-- Deletar Linha --
cmd([[
  nnoremap dd dd<CR>
  inoremap dd <Esc>dd<CR>
  vnoremap dd dd<Esc>i
]])

-- Refazer : alem de refazer >> tambem é solucao para conflito de zoom do terminator --
cmd([[ map <C-r> g+ ]])
cmd([[ nnoremap <C-r> g+ ]])
cmd([[ inoremap <C-r> <Esc>g+ ]])
cmd([[ vnoremap <C-r> <Esc>g+ ]])

-- Sair Forçado --
cmd([[ map <A-q> :q!<CR> ]])
cmd([[ nnoremap <A-q> :q!<CR> ]])
cmd([[ inoremap <A-q> <Esc>:q!<CR>l ]])
cmd([[ vnoremap <A-q> <Esc>:q!<CR> ]])


-- Selecionar Tudo
cmd([[ map <C-a> ggVG ]])

-- Refazer C-Z --
cmd([[ map <C-z> :undo<CR> ]])
cmd([[ nnoremap <C-z> :undo<CR> ]])
cmd([[ inoremap <C-z> <Esc>:undo<CR>l ]])
cmd([[ vnoremap <C-z> <Esc>:undo<CR> ]])

-- BUFFERS --
-- proximo buffer
cmd([[ map <S-Tab> :bnext<CR> ]])
-- deletar buffer
cmd([[ map <A-w> :bdelete<CR> ]])

-- identar >> iEsta funcionando com  Maior e Menor Que < > sendo com alt ou ctrl ou sozinho rs --
cmd([[
  nnoremap . >>
  nnoremap , <<

  inoremap <C-.> <Esc><gv
  inoremap <C-,> <Esc>>gv

  vnoremap , <gv
  vnoremap . >gv
 ]])

 -- TABS --
 cmd([[
   noremap <Tab> :tabnext<CR>
   ]])



-- TRANSFORMAR -> TOGGLE ==> MAIUSCULA -> MINUSCULA
-- uso: só colocar o cursor no meio do texto e executar o atalho
-- todo: esta funcionando somente Maiusculo
cmd([[
  inoremap <C-u> <ESC>viwUi " pra maiuscula em insert
  nnoremap <C-u> viwU<Esc> " pra minuscula em normal
]])

-- SUBSTITUIÇÃO TODAS OCORRENCIAS DIGITADAS
-- para usar execute o atalho -> volte uma barra com a seta e digite A PROCURA -> após a proxima barra digite o que  vai substituir a procura encontrada
cmd([[
  nnoremap <A-s> :%s///g<Left><Left>
  nnoremap <A-sc> :%s///gc<Left><Left><Left>

  xnoremap <A-s> :s///g<Left><Left>
  xnoremap <A-sc> :s///gc<Left><Left><Left>

  vnoremap * y/\V<C-R>=escape(@",'/\')<CR><CR>

]])

-- Movimentacoes --
-- Mover linhas --
cmd([[
  nnoremap <S-down> :m .+1<CR>==
  nnoremap <S-up> :m .-2<CR>==
  inoremap <S-down> <Esc>:m .+1<CR>==gi
  inoremap <S-up> <Esc>:m .-2<CR>==gi
  vnoremap <S-down> :m '>+1<CR>gv=gv
  vnoremap <S-up> :m '<-2<CR>gv=gv
]])

-- Redimensionar janelas >Somente com SETAS LATERAIS em Normal mode > tanto painel e terminal --
cmd([[
  nnoremap <C-up>    :resize -2<CR>
  nnoremap <C-down>  :resize +2<CR>
  nnoremap <C-left>  <Esc>:vertical resize -2<CR>
  nnoremap <C-right> <Esc>:vertical resize +2<CR>
]])

-- INICIAL -- Cursor DeOndeParou --
cmd([[
  hi! MatchParen cterm=NONE,bold gui=NONE,bold guibg=NONE guifg=#FFFF00
  if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
  endif
]])


-- carregar automaticamente o packer e compilar - nao precisa ficar abrindo e fechando a novas instalacaoes. --
cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

-- BASH - Auto preenche arquivos .sh que não existirem com a SheBang --
cmd([[ autocmd BufNewFile *.sh :call append(0, '#!/usr/bin/env bash') ]])

-- Se não existir o arquivo C++ de extensão .cpp ele preenche da forma abaixo --
-- altere para sua(s) linguagens preferidas --
cmd([[
	function! AutoCpp()
	  call append(0, '#include <iostream>')
	  call append(1, '')
	  call append(2, 'int main( int argc , char **argv ){')
	  call append(3, "  std::cout << \"Hello, World!\" << '\\n';")
	  call append(4, '  return 0;')
	  call append(5, '}')
	  call cursor(4, 17)
	endfunction
        autocmd BufNewFile *.cpp :call AutoCpp()
]])

cmd([[
  function! AutoC()
    call append(0, '#include <stdio.h>')
    call append(1, '')
    call append(2, 'int main( int argc , char **argv ){')
    call append(3, "  printf(\"Hello, World!\\n\");")
    call append(4, '  return 0;')
    call append(5, '}')
    call cursor(4, 17)
  endfunction
  autocmd BufNewFile *.c :call AutoC()
]])

  -- Maps PLUGINS --

-- Comentario --
cmd([[ filetype plugin on ]])
-- ativa os plug-ins de tipo de arquivo - Essencial para comentario
-- NERDCo

cmd([[
  map cc <plug>NERDCommenterToggle
  nmap cc <plug>NERDCommenterToggle
  inoremap cc <C-o>:call NERDComment(0,"toggle")<C-m>
]]) -- maps comentario NERDCommenter

-- EXPLORER
-- explorer Float -> NeoTreeFloatToggle
cmd([[ nnoremap <A-e> :NeoTreeFloatToggle<CR> ]])
cmd([[ inoremap <A-e> :NeoTreeFloatToggle<CR> ]])
cmd([[ vnoremap <A-e> :NeoTreeFloatToggle<CR> ]])

-- FIND FLOAT
-- Find -> Telescope -- TODO -- ESTA DANDO ERRO - PARECE QUE O PROBLEMA ESTA NO PROPRIO TELESCOPE
-- Find com telescope
cmd([[ nnoremap <A-f> :Telescope find_files<CR> ]])
cmd([[ inoremap <A-f> :Telescope find_files<CR> ]])
cmd([[ vnoremap <A-f> :Telescope find_files<CR> ]])
-- Find buffers com -> telescope
cmd([[ nnoremap <A-b> :Telescope buffers<CR> ]])
cmd([[ inoremap <A-b> :Telescope buffers<CR> ]])
cmd([[ vnoremap <A-b> :Telescope buffers<CR> ]])

-- Telescope - procurar com grep
cmd([[ nnoremap <C-k> :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ") })<CR>
]])

-- by VIM_AIRLINE :
cmd([[
  let g:airline_left_sep = ''
  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
]])
-- definir o tema em uso do vim airline
cmd([[
  let g:airline_theme='violet'
]])

-- Maps TERMINAL --

-- terminal float
cmd([[ nnoremap <S-t> :FloatermNew<CR> ]])
cmd([[ inoremap <S-t> <Esc>:FloatermNew<CR>l ]])
cmd([[ vnoremap <S-t> <Esc>:FloatermNew<CR> ]])


-- TERMINAL Vsplit Vertical --
cmd([[ nmap tt :vsplit term://bash<CR> ]])

cmd [[
  autocmd TermOpen * setlocal listchars= nonumber norelativenumber nocursorline
  autocmd TermOpen * startinsert
  autocmd BufLeave term://* stopinsert
]]

-- test test bla bla tt ooott t ooooo t
-- escolher bash do vsplit terminal : mudar entre [ bash || zsh]

-- cmd([[ noremap <C-l> :let @/=<CR>]]) -- Limpa Clean  --> TODO

-- FUNÇÃO -> ABRE TERMINAL VSPLIT
-- cmd([[
-- function! Run()
--   :echo 'Compiling...'
--   :terminal make
--   :bwipeout
-- endfunction

-- nnoremap <C-t> :call Run()<CR>
-- inoremap <C-t> :call Run()<CR>
-- vnoremap <C-t> :call Run()<CR>
-- ]])


