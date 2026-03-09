#alias brave="brave --high-dpi-support=1 --force-device-scale-factor=2"
function y() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  command yazi "$@" --cwd-file="$tmp"
  IFS= read -r -d '' cwd < "$tmp"
  [ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
  rm -f -- "$tmp"
}

# Set terminal colour scheme
export LS_COLORS="di=01;95:mi=01;30;41"
export PS1="\[\033[01;35m\][\u@\h\[\033[01;37m\] \W\[\033[01;35m\]]\$\[\033[00m\] "

# Shortcut for Flatpak Protontricks
alias protontricks="flatpak run com.github.Matoking.protontricks"
alias protontricks-launch="flatpak run --command=protontricks-launch com.github.Matoking.protontricks"

