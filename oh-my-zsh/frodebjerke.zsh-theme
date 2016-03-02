local _gcloud_project='%{$fg_no_bold[green]%}gcloud:%{$fg_no_bold[yellow]%} $(current-env)%{$reset_color%}'
local _kube_auth='%{$fg_no_bold[green]%}kube: %{$fg_no_bold[yellow]%}$(current-cluster)%{$reset_color%}'

PROMPT='%{$fg[cyan]%}%c$(git_prompt_info)%{$fg_bold[blue]%} $%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%})$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

RPROMPT="${_gcloud_project} ${_kube_auth} %{$fg[yellow]%} $(time_since_last_commit) %{$reset_color%}"
