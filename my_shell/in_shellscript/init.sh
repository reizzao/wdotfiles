#!/bin/bash

source "$ZSH/custom/github.mod.sh"

ttsh() {
  echo "Esta é a minha primeira função em shell script!"
}

# VARS
alias rr="source ~/.zshrc"
alias hh="cd ~/"
alias wd="cd ~/dotfiles"
alias dev="cd ~/dev"
alias ww="cd ~/www"

# CONFIGS
# CLAUSULA stty ADICIONAR ESTA LINHA SOMENTE NO .BASHRC, PARA ACEITAR ATALHOS MAPEADOS VIM :
stty -ixon

# APP

resultado_test_fn_importada_tttg=$(tttg "este é o meu arg repassado a fn tttg")

tttsh() {
  echo "<<Oi sou o oh-my-zsh.sh>>"
  echo ">> executando o importado git $resultado_test_fn_importada_tttg >>"
}

