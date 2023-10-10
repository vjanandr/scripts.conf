PROMPT=$'%(?.%F{green}✔.%F{red}✘)%f %{$fg[yellow]%}%m:%{$reset_color%}%{$fg[green]%}[%~]%{$reset_color%} $(git_super_status)\
%{$fg_bold[magenta]%}=>%{$reset_color%} '
# Theming variables for primary prompt
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[white]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[white]%}]"
RPROMPT=""
