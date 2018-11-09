# Created by newuser for 5.3.1

export PS1="%1~\$ "

export PATH=/usr/texbin:$PATH

#eval "$(thefuck --alias)"
# map ctrl-z to fg command
fancy-ctrl-z () {
  if [[ $#BUFFER -eq 0 ]]; then
    BUFFER="fg"
    zle accept-line
  else
    zle push-input
    zle clear-screen
  fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z
