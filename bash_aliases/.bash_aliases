
# VARS
export MYDIR_DOTFILES="dotfiles"

# ALIAS
alias rr="source ~/.bashrc" # reconectar mudanças no bash


# IMPORTS
if [ -f ~/$MYDIR_DOTFILES/my_bash/.init ]; then
     . ~/$MYDIR_DOTFILES/my_bash/.init
fi

if [ -f ~/$MYDIR_DOTFILES/my_bash/.github ]; then
     . ~/$MYDIR_DOTFILES/my_bash/.github
fi
