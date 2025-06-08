#

pre_install_nvim() {
  # rm -rf ~/.config/nvim     # nao usar vai limpar o dir nvim e o .git vai junto rs.
  rm -rf ~/.local/share/nvim &&
  rm -rf ~/.local/state/nvim &&
  rm -rf ~/.cache/nvim
}
# rode essa funcao no shell antes de instalar o nvim
