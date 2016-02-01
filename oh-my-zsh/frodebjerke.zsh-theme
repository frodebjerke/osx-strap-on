PROMPT='%{$fg[cyan]%}%c$(git_prompt_info)%{$fg_bold[blue]%} $%{$reset_color%} '
RPROMPT='%{$fg[yellow]%} $(time_since_last_commit) %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
