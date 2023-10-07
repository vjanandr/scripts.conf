PROMPT=$'%{$fg_bold[yellow]%}%m %{$reset_color%}%{$fg[green]%}[%~]%{$reset_color%} $(git_super_status)\
%{$fg[cyan]%}$[HISTCMD-1]%{$reset_color%} %{$fg[magenta]%}=>%{$reset_color%} '
# Theming variables for primary prompt
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[white]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[white]%}]"
RPROMPT=""
