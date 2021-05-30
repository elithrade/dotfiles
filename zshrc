source ~/antigen.zsh
source ~/.history.zsh

antigen use oh-my-zsh
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure
antigen bundle jump
antigen bundle jeffreytse/zsh-vi-mode

# Make Vi mode transitions faster (KEYTIMEOUT is in hundredths of a second)
export KEYTIMEOUT=1

# PURE_PROMPT_SYMBOL='→'
# PURE_PROMPT_SYMBOL='λ'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
export NODE_PATH=$NODE_PATH:`npm root -g` # This is needed to resolve coc error 'cannot find module typescript'

# Uncomment following lines when run it for the first time, it causes konsole to output ////// characters
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

export EDITOR=nvim

antigen apply

export GOPATH=$HOME/code/go
export PATH=$PATH:$(go env GOPATH)/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.dotnet/tools

source ~/.aliases.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# Use `` as the trigger sequence instead of the default **
export FZF_COMPLETION_TRIGGER='``'
# Setting fd as the default source for fzf
# Follow symbolic links, and don't want it to exclude hidden files, use the following command
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export MSBuildSDKsPath=/usr/share/dotnet/sdk/$(dotnet --version)/Sdks

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# https://github.com/jeffreytse/zsh-vi-mode/issues/24
zvm_after_init_commands+=('[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh')
