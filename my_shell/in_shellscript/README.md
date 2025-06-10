# My_ShellSC

Adicionar_no_Bashrc: `
em ~/.bashrc adicione

# PERSONAL BASHRC_RZJ ----------------------------------

# ADD AO PATH DO SISTEMA AS PASTAS - OBS: SEM A BARRA NO FINAL
export PATH="$PATH:~/dotfiles/my_shell" # MY SHELLSC

# IMPORTAR ARQUIVOS
# IMPORTA MEU INIT DE SHELLSC DO MY_SISTEMA
if [ -f ~/dotfiles/my_shell/in_shellscript/init.sh ]; then
    . ~/dotfiles/my_shell/in_shellscript/init.sh
fi

# ----------------------------------------------------


`