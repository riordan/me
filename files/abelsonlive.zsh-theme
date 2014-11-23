# Based on `kennethreitz.zsh-theme`: https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/themes/kennethreitz.zsh-theme

ZSH_THEME_GIT_PROMPT_PREFIX="🐙  %{$purple%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_CLEAN="%{$reset_color%} ✅ "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%} ❗ "

PROMPT='🏡  %{$limegreen%}%c%{$reset_color%} \
$(git_prompt_info) \
👉  '
RPS1='🌍  %{$turquoise%}%~%{$reset_color%} ⏰  %{$hotpink%}%t%{$reset_color%}'

