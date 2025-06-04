     -- API VIMRC --
-- print("vindo do file:: debug.getinfo(1).source")

-- Vars locais mapeando api vim para usar neste arquivo
-- local api = vim.api
-- local opt = vim.opt
-- local g = vim.g
-- local cmd = vim.cmd

local M = {}

function M.setup_options()
  -- Opções Globais (vim.o / vim.opt)
  -- Essas configurações afetam o Neovim como um todo.

  -- DESIGNS --
  vim.cmd([[ set guicursor= ]])        -- assume o I-Beam(após vc configurar no terminal em uso o cursor como I-Beam) > Esconde o cursor piscando (se estiver usando GUI)
  vim.opt.background = "dark"         -- Define o fundo como escuro (pode ser "light")
  -- LINHAS
  vim.opt.relativenumber = true       -- Mostra números de linha relativos
  vim.cmd([[ set number  ]])          -- mostrar numero das linhas : Show line numbers
  vim.cmd([[ set showtabline=1 ]])    -- Sempre mostrar guias e a quantidade de tabs : Always show tabs
  vim.cmd([[ set nowrap ]])           -- Exibir linhas longas como apenas uma linha : Display long lines as just one line
  -- vim.cmd([[ set cursorline ]])       -- Ativar destaque da linha atual : TODO: ESTA FAZENDO LINHA - MELHOR DESTACAR MASI GORDINHA
  -- vim.opt.colorcolumn = "80"       -- Destaca a coluna 80 (para guias de código)
  -- vim.opt.syntax = "on"            -- Habilita o realce de sintaxe

  vim.cmd([[ syntax enable  ]])       -- Habilitar syntax highlighing
  vim.cmd([[ set autowriteall ]])     -- AutoSave - TODO NAO FUNCIONANDO --
  vim.cmd([[ let extension = expand('%:e') ]])
  vim.cmd([[ let filenamev = expand('%:t') ]])
  -- SET MAPLEADER -> TODO
  -- vim.cmd([[ set noswapfile ]])            -- desabilita criação de arquivo  backup .swp
  vim.cmd([[ confirm ]])                      -- pede confirmações antes de ação
  vim.cmd([[ set title ]])                    -- mostra titulo ???
  -- CODIFICACA
  vim.cmd([[ set encoding=utf-8  ]])          -- A codificação exibida : The encoding displayed
  vim.cmd([[ set pumheight=10 ]])             -- Makes popup menu smaller : tornar menu popup menor
  vim.cmd([[ set fileencoding=utf-8  ]])      -- Codificação de arquivo (específico)
  vim.cmd([[ set cmdheight=1 ]])              -- Mais espaço para exibição de mensagens : More space for displaying messages
  vim.cmd([[ set iskeyword+=- ]])             -- tratar palavras separadas por travessão como um objeto de texto de palavra : treat dash separated words as a word text object

  vim.cmd([[ set mouse=a ]])                   --  Habilita o mouse em todos os modos
  vim.cmd([[ set splitbelow ]])                -- As divisões horizontais estarão automaticamente abaixo : Horizontal splits will automatically be below
  vim.cmd([[ set splitright  ]])               -- Vertical splits will automatically be to the right

  vim.cmd([[ set t_Co=256 ]])                  -- Suporta 256 cores : Support 256 colors
  vim.cmd([[ set conceallevel=0 ]])            -- Para que eu possa ver  em arquivos markdown : So that I can see in markdown files
  -- IDENTACAO
  vim.cmd([[ set tabstop=4 ]])                 -- Insert 2 spaces for a tab
  vim.cmd([[ set shiftwidth=2 ]])              -- Alterar o número de caracteres de espaço inseridos para recuo : Change the number of space characters inserted for indentation

  vim.cmd([[ set smarttab ]])                 -- Torna a tabulação mais inteligente e perceberá que você tem 2 contra 4 : Makes tabbing smarter will realize you have 2 vs 4
  vim.cmd([[ set expandtab ]])                -- Usa espaços em vez de tabs : Converts tabs to spaces
  vim.cmd([[ set smartindent ]])              -- Torna o recuo inteligente : Makes indenting smart
  vim.cmd([[ set autoindent ]])               -- Bom recuo automatico : Good auto indent
  vim.cmd([[ set laststatus=0 ]])             -- Sempre exibir a linha de status : Always display the status line
  vim.cmd([[ set ruler ]])                    -- Mostrar a posição do cursor o tempo todo: Show the cursor position all the time

  vim.opt.termguicolors = false        -- Habilita cores verdadeiras no terminal
  -- vim.opt.signcolumn = "yes"          -- Sempre mostra a coluna de sinais
  vim.opt.wrap = false                -- Quebra de linha
  vim.opt.linebreak = true            -- Quebra de linha em caracteres completos
  vim.opt.showbreak = "↳ "            -- Caractere para indicar quebra de linha

  vim.opt.undofile = true             -- Persiste o histórico de undo
  vim.opt.undodir = os.getenv("HOME") .. "/.cache/nvim/undo" -- Onde armazenar os arquivos de undo
  vim.opt.ignorecase = true           -- Ignora maiúsculas/minúsculas em buscas
  vim.opt.smartcase = true            -- Smartcase (ignora maiúsculas/minúsculas a menos que haja maiúsculas na busca)

  vim.opt.updatetime = 300            -- Tempo para gravar swapfile e emitir CursorHold
  vim.opt.timeoutlen = 500            -- Tempo limite para keycodes mapeados
  vim.opt.writebackup = false         -- Não cria arquivo de backup antes de sobrescrever
  vim.opt.swapfile = true            -- Não cria arquivos de swap
  vim.opt.backspace = "indent,eol,start" -- Comportamento da tecla backspace
  vim.opt.history = 500               -- Quantidade de comandos na história

  -- COMPARTILHAMENTO - INTEGRACOES --
  vim.cmd([[ set clipboard=unnamedplus ]])    -- compartilhar de área de transferência entre o Vim e o Linux



    -- TABS VER O MELHOR
    -- vim.opt.tabstop = 2                 -- Tamanho do tab
    -- vim.opt.shiftwidth = 2              -- Tamanho do indent
    -- vim.opt.autoindent = true           -- Indentação automática
    -- vim.opt.smartindent = true          -- Indentação inteligente


    -- TODO: NAO SEI O SIGNIFICADO
    -- vim.opt.hlsearch = true             -- Realça resultados de busca
    -- vim.opt.incsearch = true            -- Busca incremental
    -- vim.opt.inccommand = "split"        -- Preview de substituições em tempo real
    -- vim.opt.scrolloff = 8               -- Linhas de contexto acima/abaixo do cursor
    -- vim.opt.sidescrolloff = 8           -- Colunas de contexto à esquerda/direita
    -- vim.opt.clipboard = "unnamedplus"   -- Sincroniza o clipboard do sistema
    -- vim.opt.conceallevel = 0            -- Nível de ocultação de caracteres




  -- Opções de Janela (vim.wo / vim.opt_local)
  -- Estas afetam apenas a janela atual. Usamos vim.opt aqui, mas se você precisar definir
  -- para um buffer específico, usaria vim.bo.
  -- Para a maioria das configurações de UI, vim.opt é suficiente e aplica globalmente.

  -- Exemplo: (geralmente não é necessário definir w/b opções aqui a menos que
  -- você tenha um script que abre janelas ou buffers específicos com opções específicas)
  -- vim.opt_local.list = true
  -- vim.opt_local.listchars = "tab:» ,trail:·"

  -- Define uma função de comando personalizada se quiser um atalho para ativar/desativar algo
  -- Isso não é uma "opção", mas um comando customizado.
  vim.api.nvim_create_user_command("ToggleRelativeNumber", function()
    vim.opt.relativenumber = not vim.opt.relativenumber:get()
  end, { desc = "Toggle relative line numbers" })

  -- Define atalhos para comandos customizados, se quiser
  vim.keymap.set("n", "<leader>r", ":ToggleRelativeNumber<CR>", { desc = "Toggle relative line numbers" })

  -- Confirma que as opções foram carregadas
  vim.notify("Aviso: Opções básicas do Neovim configuradas!", vim.log.levels.INFO, { title = "Config" })
end

return M

