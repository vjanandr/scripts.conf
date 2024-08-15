#PROMPT=$'%{$fg[yellow]%}%m %{$reset_color%}%F{39}[%~]%f%{$reset_color%} %{$fg[magenta]%}$(git_super_status) $(git_remote_status)%{$fg[magenta]%}\'
PROMPT=$'%{$fg[yellow]%}%m %{$reset_color%}%{$fg[cyan]%}[%~]%{$reset_color%} %{$fg[magenta]%}$(git_super_status) $(git_remote_status)%{$fg[magenta]%}\
%(?.%F{green}.%F{red})%T%{$reset_color%}%{$fg[white]%} =>%{$reset_color%} '
# Theming variables for primary prompt
#ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%}["
#ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[magenta]%}]"
ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
RPROMPT=""
ZSH_THEME_GIT_PROMPT_STASHED="%{$fg[red]%}%{#%G%}"
#ZSH_THEME_GIT_PROMPT_STASHED="📌"
ZSH_THEME_GIT_PROMPT_BRANCH="%{%{$reset_color%}$fg[magenta]%}"

ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_DETAILED=true
ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_PREFIX="%{$fg[magenta]%}("
ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_SUFFIX="%{$fg[magenta]%})%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[yellow]%}%{✚%G%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}%{✗%G%}"
ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$fg[red]%}%{✖%G%}"

# More symbols to choose from:
# # ☀ ✹ ☄ ♆ ♀ ♁ ♐ ♇ ♈ ♉ ♚ ♛ ♜ ♝ ♞ ♟ ♠ ♣           ♺ ♻ ♼ ☰ ☱ ☲ ☳ ☴ ☵ ☶ ☷
# # ✡ ✔ ✖ ✚ ✱ ✤ ✦ ❤ ➜ ➟ ➼ ✂ ✎ ✐ ⨀ ⨁ ⨂ ⨍ ⨎ ⨏ ⨷ ⩚ ⩛ ⩡ ⩱ ⩲ ⩵  ⩶ ⨠
# #                   〒 ǀ ǁ ǂ ĭ Ť Ŧ
# %F{color_code}My_Text%f
#for COLOR in {0..255}
#do
#     for STYLE in "38;5"
#     do
#             TAG="\033[${STYLE};${COLOR}m"
#             STR="${STYLE};${COLOR}"
#             echo -ne "${TAG}${STR}${NONE}  "
#     done
#     echo
#done
# it also shows you the code for each color in the form 38;5;x
# where x is the code for one of the 256 available colors.
# Also, note that changing the "38;5" to "48;5" will show
# you the background color equivalent. You can then use any colors
# you like to make up the prompt as previously mentioned.
