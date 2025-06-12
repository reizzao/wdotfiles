#!/bin/bash

# VARS -- ALTO ACESSO
export MYDIR_DOTFILES="$HOME/wdotfiles"
export MYSHC="/$HOME/wdotfiles/my_shell/in_shellscript"

# EXPORTACOES
# -- TRAZENDO OS MODULOS
source "$MYSHC/system.mod.sh"
source "$MYSHC/aliases.mod.sh"
source "$MYSHC/github.mod.sh"
source "$MYSHC/nvim.mod.sh"

# VARS - SYSTEM
export RC="bashrc" # controla o shell em uso no terminal.

# ADICIONADOS AO PATH
# export PATH="/opt/VSCodium/bin:$PATH" # idea_VsCodium # -- não funciona os flatpak

# CONFIGS
# CLAUSULA stty ADICIONAR ESTA LINHA SOMENTE NO .BASHRC, PARA ACEITAR ATALHOS MAPEADOS VIM :
stty -ixon

# APP

# resultado_test_fn_importada_tttg=$(tttg "este é o meu arg repassado a fn tttg")

testsc() {
  echo "<< 1 :: Oi sou o oh-my-zsh.sh>>"
  # echo ">> executando o importado git $resultado_test_fn_importada_tttg >>"
}
