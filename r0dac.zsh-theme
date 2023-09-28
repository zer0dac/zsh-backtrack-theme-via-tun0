#Author : zer0dac

PROMPT='${debian_chroot:+($debian_chroot)}${VIRTUAL_ENV:+($(basename $VIRTUAL_ENV))}%B%F{red}%n@%m%b%F{reset}$(get_ip_address)%f:%B%F{blue}%~%b%F{reset}%(#.#.$ )'

get_ip_address() {
  if [[ -n "$(ifconfig tun0 2>/dev/null)" ]]; then
    echo ":[%{$fg[green]%}$(ifconfig tun0 | awk '/inet / {print $2}')%{$reset_color%}]"
  else
    echo ""
  fi
}
