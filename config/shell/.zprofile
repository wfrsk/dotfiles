[ -e $HOME/.ssh-agent ] || eval `ssh-agent -a $HOME/.ssh-agent` > /dev/null 2&>1

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec xinit
fi
