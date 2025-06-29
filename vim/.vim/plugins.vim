" --- Configuração do Gerenciador de Plugins (Vim-plug) ---
" Instalação do Vim-plug (faça APENAS UMA VEZ no terminal):
" 1. Crie o diretório para os plugins se não existir: mkdir -p ~/.vim/autoload
" 2. Baixe o plug.vim:
"    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" 3. Após isso, abra o Vim e execute: :PlugInstall

call plug#begin('~/.vim/plugged')

" --- Lista de Plugins ---

" Plugin para auto-completar pares (chaves, parênteses, aspas, etc.)
Plug 'jiangmiao/auto-pairs'

" Adicione outros plugins aqui conforme necessário, por exemplo:
" Plug 'tpope/vim-fugitive' " Para integração com Git
" Plug 'preservim/nerdtree' " Para explorer de arquivos em árvore

call plug#end()

" --- Fim da Configuração de Plugins ---