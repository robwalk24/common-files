export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm



# Load version control information
COLOR_GIT=$'\e[38;5;39m'
COLOR_DIR=$'\e[38;5;197m'
COLOR_DEF=$'\e[0m'

autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '[%b]'





# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
#PROMPT='%n@%m ${PWD/#$HOME/~} ${vcs_info_msg_0_} %# '

PROMPT='%n %F{red}${PWD/#$HOME/~}%f %B%F{cyan}${vcs_info_msg_0_}%f%b %# '

