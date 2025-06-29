" --- KEYMAPS Personalizados ---

" --- Mapeamento para Fechar Buffer em Foco ---
nnoremap <M-q> :bd<CR>

" --- Mover Linhas ---
" Modo Normal: Mover linha/seleção para baixo
nnoremap <S-Down> :m .+1<CR>==

" Modo Normal: Mover linha/seleção para cima
nnoremap <S-Up> :m .-2<CR>==

" Modo Inserção: Mover linha para baixo (e retorna ao modo inserção)
inoremap <S-Down> <Esc>:m .+1<CR>==gi

" Modo Inserção: Mover linha para cima (e retorna ao modo inserção)
inoremap <S-Up> <Esc>:m .-2<CR>==gi

" Modo Visual: Mover seleção para baixo
vnoremap <S-Down> :m '>+1<CR>gv=gv

" Modo Visual: Mover seleção para cima
vnoremap <S-Up> :m '<-2<CR>gv=gv


" --- Redimensionar Janelas (Modo Normal - Ctrl+Setas) ---
" Modo Normal: Diminuir altura da janela
nnoremap <C-Up> :resize -2<CR>

" Modo Normal: Aumentar altura da janela
nnoremap <C-Down> :resize +2<CR>

" Modo Normal: Diminuir largura da janela
nnoremap <C-Left> :vertical resize -2<CR>

" Modo Normal: Aumentar largura da janela
nnoremap <C-Right> :vertical resize +2<CR>


" --- Início e Fim do Arquivo (Usando <M-...> para Alt) ---
" Modo Normal: Ir para o início do arquivo
nnoremap <M-Up> gg

" Modo Normal: Ir para o fim do arquivo
nnoremap <M-Down> G


" --- Copiar Caminho do Arquivo (<Leader>cf) ---
nnoremap <Leader>cf :let @+=expand("%:p")<CR>


" --- Explorer Netrw (<Leader>e) ---
nnoremap <Leader>e :Ex<CR>


" --- Selecionar Tudo (<Leader>a) ---
nnoremap <Leader>a ggVG


" --- Deletar Linha (Usando <M-d> para Alt+d) ---
nnoremap <M-d> dd
vnoremap <M-d> dd
inoremap <M-d> <Esc>ddi


" --- Indentar ---
" Indentar linha atual para direita (modo Normal)
nnoremap . >>

" Indentar linha atual para esquerda (modo Normal)
nnoremap , <<

" Indentar para direita no modo Inserção
inoremap <C-.> <Esc>>>a

" Indentar para esquerda no modo Inserção
inoremap <C-,> <Esc><<a

" Indentar seleção para direita (modo Visual)
vnoremap . >

" Indentar seleção para esquerda (modo Visual)
vnoremap , <


" --- Toggle Case (Maiúscula/Minúscula da palavra/seleção) ---
" Mapeamento para modo Normal: Alternar case da palavra (usa a função ToggleWordCase)
nnoremap <expr> <M-m> ToggleWordCase()

" Mapeamento para modo Inserção: Alternar case da palavra (usa a função ToggleWordCase)
inoremap <expr> <M-m> "\<Esc>" . ToggleWordCase() . "a"

" Mapeamento para modo Visual: Alternar case da seleção (usa a função ToggleVisualCase)
vnoremap <expr> <M-m> ToggleVisualCase()


" --- Substituição de Todas Ocorrências (Usando <M-s>/<M-sc>) ---
" Modo Normal: Substituir todas as ocorrências no arquivo
nnoremap <M-s> :%s///g<Left><Left>

" Modo Normal: Substituir todas (com confirmação)
nnoremap <M-sc> :%s///gc<Left><Left><Left>

" Modo Visual: Substituir na seleção
vnoremap <M-s> :<C-u>s///g<Left><Left>
xnoremap <M-s> :<C-u>s///g<Left><Left>

" Modo Visual: Substituir na seleção (com confirmação)
vnoremap <M-sc> :<C-u>s///gc<Left><Left><Left>
xnoremap <M-sc> :<C-u>s///gc<Left><Left><Left>

" Modo Visual: Buscar seleção (literalmente)
vnoremap * y/\\V<C-R>"<CR>


" --- Mapeamento Ctrl+t para Alternar Terminal (usa a função ToggleTermVsplitBash) ---
nnoremap <C-t> :call ToggleTermVsplitBash()<CR>

" --- Comandos Adicionais para o Terminal ---
" Mapeamento para duplo-clique em links no modo terminal
" Entra em modo Normal do terminal (<C-\><C-n>), executa 'gx' (abrir link), e volta para modo Terminal
tnoremap <2-LeftMouse> <C-\><C-n>gx

" Dica: Para entrar no modo Normal enquanto no terminal, use <Ctrl-\><Ctrl-n>.
" De lá, você pode mover o cursor e usar 'gx' para abrir um link manualmente.


" --- Redimensionar Janelas do Terminal (a partir do modo Terminal - Meta+Setas) ---
tnoremap <M-Left> <C-\><C-n>:vertical resize -2<CR>
tnoremap <M-Right> <C-\><C-n>:vertical resize +2<CR>
tnoremap <M-Up> <C-\><C-n>:resize -2<CR>
tnoremap <M-Down> <C-\><C-n>:resize +2<CR>


" --- Duplicar Linha e Seleção (Ctrl+Shift+Setas) ---
" Modo Normal: Duplicar a linha atual para CIMA
nnoremap <C-S-Up> yyP

" Modo Normal: Duplicar a linha atual para BAIXO
nnoremap <C-S-Down> yyp

" Modo Visual: Duplicar a seleção para CIMA
vnoremap <C-S-Up> yPgv

" Modo Visual: Duplicar a seleção para BAIXO
vnoremap <C-S-Down> ypgv

" --- Fim dos Keymaps ---