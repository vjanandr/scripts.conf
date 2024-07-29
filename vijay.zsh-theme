PROMPT=$'%{$fg[yellow]%}%m:%{$reset_color%}%{$fg[green]%}[%~]%{$reset_color%} %{$fg[magenta]%}$(git_super_status) $(git_remote_status)%{$fg[magenta]%}\
%(?.%F{green}.%F{red})%D{%K:%M}%{$reset_color%}%{$fg_bold[magenta]%} ➤%{$reset_color%} '
# Theming variables for primary prompt
#ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%}["
#ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[magenta]%}]"
ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
RPROMPT=""
ZSH_THEME_GIT_PROMPT_STASHED="(%{$fg_bold[blue]%}✹%{$reset_color%})"
ZSH_THEME_GIT_PROMPT_BRANCH="%{%{$reset_color%}$fg[magenta]%}"

ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_DETAILED=true
ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_PREFIX="%{$fg[magenta]%}("
ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_SUFFIX="%{$fg[magenta]%})%{$reset_color%}"

