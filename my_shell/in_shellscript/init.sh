#!/bin/bash

source "$MYSHC/github.mod.sh"

# VARS -- os textos sao editaveis
export MYDIR_DOTFILES="$HOME/dotfiles"
export MYSHC="/$HOME/dotfiles/my_shell/in_shellscript"

# VARS - SYSTEM
export RC="bashrc" # controla o shell em uso no terminal.

# ALIAS
alias rr="source ~/.$RC"
alias hh="cd ~/"
alias wd="cd ~/dotfiles"
alias dev="cd ~/dev"
alias ww="cd ~/www"

# CONFIGS
# CLAUSULA stty ADICIONAR ESTA LINHA SOMENTE NO .BASHRC, PARA ACEITAR ATALHOS MAPEADOS VIM :
stty -ixon

# APP

resultado_test_fn_importada_tttg=$(tttg "este é o meu arg repassado a fn tttg")

ttsh() {
  echo "<< 1 :: Oi sou o oh-my-zsh.sh>>"
  echo ">> executando o importado git $resultado_test_fn_importada_tttg >>"
}

