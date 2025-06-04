# -------------------------------------------------
# MINHAS CUSTOMIZAÇÕES
log_bash_aliases() {
  echo "OK olá << $NOMEFILE >> em .bashaliases" # LOGAR FILE
}

# USE IN SYSTEM
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\]$"

parse_git_branch() {
# show branch github in use in terminal bash - obs: tem que ficar aqui # important
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# CLAUSULA stty ADICIONAR ESTA LINHA SOMENTE NO .BASHRC, PARA ACEITAR ATALHOS MAPEADOS VIM :
stty -ixon

# Vars - Define as Variaveisdo modulo # obs: fica aqui em primeira_visao.
## important: vars export declara Normal mas usa com $


# CHAMA MY PERSONAL SHELL
if [ -f shell_app/.init ]; then
    . shell_app/.init
fi
# -------------------------------------------------

# USE GLOBAL
export NOMEFILE="Test OK" # TODO
# export NOMEFILE=$(basename "$0") # TODO
alias log_shell_app="echo OK olá {{ $NOMEFILE }} em shell_app" # LOGAR FILE

export FOLDER_DEV=dev_rzj # polounico pasta do dev
export EDITOR1="nvim" # editor 1
export DOTFILES="dotfiles" # editor 1

# export URL_NVIM="$HOME/nvim/.config/nvim" # editor 1
# export URL_ALAC="$HOME/$DOTFILES/alacritty/.config/alacritty"
# export URL_MYBASH="$HOME/$DOTFILES/bash_aliases"







