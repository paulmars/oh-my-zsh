function last_command() {
  HUFFSHELL_LAST_LINE_EXECUTED="$(history -1)"
  HUFFSHELL_LAST_COMMAND_EXECUTED="$(history -1 | cut -d ' ' -f 3)"
  echo $HUFFSHELL_LAST_COMMAND_EXECUTED
}

PROMPT='%{$fg_bold[green]%}%p%{$fg[green]%}%~ %{$fg_bold[cyan]%}$(git_prompt_info)%{$fg_bold[blue]%}% %{$reset_color%}'
RPROMPT='%{$fg[$NCOLOR]%}%p $(last_command)%{$reset_color%}'

if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="yellow"; fi



ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}[%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}%{$fg[yellow]%}⚡%{$fg[green]%}]%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}] "
