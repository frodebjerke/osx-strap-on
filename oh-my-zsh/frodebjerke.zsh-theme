local _gcloud_project=$(echo "$(current-env)" | awk '{split($0,a,"-"); print a[3]}')
local _kube_auth=$(echo "$(current-cluster)" | awk '{split($0,a,"-"); print a[1]}')

local _project=""
if [ "$_gcloud_project" = "$_kube_auth" ]; then
  _project="%{$FG[248]%}$_gcloud_project"
else

  echo $_gcloud_project
  echo $_kube_auth
  _project="%{$FG[214]%}$_gloud_project/$_kube_auth"
fi

local _path="%{$FG[241]%}%c"
local _prompt="$"
PROMPT='$_project$_path$(git_prompt_info)$_prompt%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[234]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[214]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[234]%}"
