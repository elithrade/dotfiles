source ~/.aliases.sh
source ~/antigen.zsh

antigen use oh-my-zsh
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure
antigen bundle jump

PURE_PROMPT_SYMBOL='→'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

VIRTUALENVWRAPPER_PYTHON='/usr/bin/python3'
source /usr/bin/virtualenvwrapper.sh
export WORKON_HOME=$HOME/.virtualenvs

export EDITOR=nvim

antigen apply
