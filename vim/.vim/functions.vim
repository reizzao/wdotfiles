" --- Funções Personalizadas ---

" Função Vimscript para alternar o case de uma palavra
function! ToggleWordCase()
    let current_word = expand("<cword>")
    if empty(current_word)
        return ""
    endif
    if current_word ==? toupper(current_word) && current_word =~ '[A-Z]'
        return "viwu" " Se toda maiúscula, torna minúscula
    else
        return "viwU" " Se minúscula/misto, torna maiúscula
    endif
endfunction

" Função Vimscript para alternar o case da seleção
function! ToggleVisualCase() range
    let selected_text = getreg('v')
    if selected_text =~ '[A-Z]'
        return "u"
    else
        return "U"
    endif
endfunction

" --- Toggle Vertical Split Terminal (Bash) com atalho ---
" Variável global para armazenar o número do buffer do nosso terminal principal
" Inicialmente definida como -1 (nenhum terminal gerenciado)
let g:toggle_terminal_bufnr = -1

" Função para abrir/fechar um terminal em vsplit (gerenciando uma única instância)
function! ToggleTermVsplitBash()
    " 1. Verifica se o buffer do terminal que gerenciamos existe e é válido
    if bufexists(g:toggle_terminal_bufnr) && getbufvar(g:toggle_terminal_bufnr, '&buftype') ==? 'terminal'
        " Se o buffer existe, verifica se ele está visível em alguma janela
        let l:term_win_id = bufwinid(g:toggle_terminal_bufnr)

        if l:term_win_id != -1
            " Terminal está visível: fecha a janela
            execute l:term_win_id . 'wincmd q'
            " Após fechar, resetamos a variável para indicar que não há terminal visível/gerenciado
            let g:toggle_terminal_bufnr = -1
        else
            " Terminal está oculto (buffer existe, mas não está em uma janela): torna-o visível
            " Abre uma nova janela vertical à direita com 80 colunas de largura inicial
            rightbelow vnew 80
            execute 'buffer' g:toggle_terminal_bufnr " Mostra o buffer do terminal existente nela
            " O Vim geralmente entra em modo inserção automaticamente para terminais
            startinsert! " Garante que entre no modo inserção
        endif
    else
        " O buffer do terminal não existe ou é inválido: cria um novo
        " Abre uma nova janela vertical à direita com 80 colunas de largura inicial
        rightbelow vnew 80
        execute 'terminal bash'
        " Armazena o número do buffer do novo terminal criado para gerenciamento futuro
        let g:toggle_terminal_bufnr = bufnr('%')
        " O Vim geralmente entra em modo inserção automaticamente para terminais
        startinsert! " Garante que entre no modo inserção
    endif
endfunction

" --- Fim das Funções ---