#!/bin/bash

# VARS -- os textos sao editaveis
export MYDIR_DOTFILES="$HOME/wdotfiles"
export MYSHC="/$HOME/wdotfiles/my_shell/in_shellscript"

source "$MYSHC/github.mod.sh"
source "$MYSHC/nvim.mod.sh"


# VARS - SYSTEM
export RC="bashrc" # controla o shell em uso no terminal.

# ALIAS
alias rr="source ~/.$RC"
alias home="cd ~/"
alias mysc="cd $MYSHC"
alias dot="cd $MYDIR_DOTFILES"
alias dev="cd ~/dev"
alias www="cd ~/www"
alias neovim="cd ~/.config/nvim/"
alias vscode="cd ~/.config/Code/User/"
alias v="nvim" # abre o editor nvim <v de vim>

# CONFIGS
# CLAUSULA stty ADICIONAR ESTA LINHA SOMENTE NO .BASHRC, PARA ACEITAR ATALHOS MAPEADOS VIM :
stty -ixon

# APP

resultado_test_fn_importada_tttg=$(tttg "este é o meu arg repassado a fn tttg")

testsc() {
  echo "<< 1 :: Oi sou o oh-my-zsh.sh>>"
  echo ">> executando o importado git $resultado_test_fn_importada_tttg >>"
}

