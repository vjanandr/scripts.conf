PROMPT=$'%(?.%F{green}✔.%F{red}✘) %{$fg[white]%}%D{%K:%M} %{$fg[yellow]%}%m:%{$reset_color%}%{$fg[green]%}[%~]%{$reset_color%} $(git_super_status)\
%{$reset_color%}%{$fg[white]%}=>%{$reset_color%} '
# Theming variables for primary prompt
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[white]%}]"
RPROMPT=""
ZSH_THEME_GIT_PROMPT_STASHED="(%{$fg_bold[blue]%}✹%{$reset_color%})"
ZSH_THEME_GIT_PROMPT_BRANCH="%{%{$reset_color%}$fg[magenta]%}"

