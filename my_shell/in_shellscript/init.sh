#!/bin/bash

# VARS -- os textos sao editaveis : tem que ficar no alto- estasendo usado no source abaixo.
export MYDIR_DOTFILES="$HOME/wdotfiles"
export MYSHC="/$HOME/wdotfiles/my_shell/in_shellscript"

# EXPORTACOES
source "$MYSHC/github.mod.sh"
source "$MYSHC/nvim.mod.sh"

# VARS - SYSTEM
export RC="bashrc" # controla o shell em uso no terminal.

# ALIAS
alias rr="source ~/.$RC"
alias home="cd ~/"
alias mysc="cd $MYSHC" # Meu shell script do sistema
alias dot="cd $MYDIR_DOTFILES"
alias conf_nvim="cd ~/.config/nvim/"
alias conf_vscode="cd ~/.config/User/"
# alias vscode="cd ~/wdotfiles/Code/.config/User/"
alias v="nvim" # abre o editor nvim <v de vim>

# CONFIGS
# CLAUSULA stty ADICIONAR ESTA LINHA SOMENTE NO .BASHRC, PARA ACEITAR ATALHOS MAPEADOS VIM :
stty -ixon

# APP

# resultado_test_fn_importada_tttg=$(tttg "este é o meu arg repassado a fn tttg")

testsc() {
  echo "<< 1 :: Oi sou o oh-my-zsh.sh>>"
  # echo ">> executando o importado git $resultado_test_fn_importada_tttg >>"
}
