function last_command() {
  echo `history | tail -1 | cut -d ' ' -f 3-20 | /usr/bin/ruby -I~/Development/realiaser/lib ~/Development/realiaser/bin/realiaser`
}

PROMPT='%{$fg_bold[green]%}%p%{$fg[green]%}%~ %{$fg_bold[cyan]%}$(git_prompt_info)%{$fg_bold[blue]%}% %{$reset_color%}'
RPROMPT='%{$fg[$NCOLOR]%}%p $(last_command)%{$reset_color%}'

if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="yellow"; fi

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}[%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}%{$fg[yellow]%}⚡%{$fg[green]%}]%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}] "
