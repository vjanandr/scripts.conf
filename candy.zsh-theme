PROMPT=$'%{$fg_bold[yellow]%}%m %{$reset_color%}%{$fg[white]%}[%~]%{$reset_color%} $(git_prompt_info)\
%{$fg[cyan]%}$[HISTCMD-1]%{$reset_color%} %{$fg[magenta]%}=>%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗%{$fg[green]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN=""
