source ~/.aliases.sh
source ~/antigen.zsh

antigen use oh-my-zsh
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure
antigen bundle jump
antigen bundle vi-mode

# Make Vi mode transitions faster (KEYTIMEOUT is in hundredths of a second)
export KEYTIMEOUT=1

# PURE_PROMPT_SYMBOL='→'
# PURE_PROMPT_SYMBOL='λ'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" --no-use # This loads nvm

# Uncomment following lines when run it for the first time, it causes konsole to output ////// characters
# BASE16_SHELL=$HOME/.config/base16-shell/
# [ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

export EDITOR=nvim

antigen apply

# added by Anaconda3 installer
export PATH="/home/hub/anaconda3/bin:$PATH"
. /home/hub/anaconda3/etc/profile.d/conda.sh
export PATH="$PATH:$HOME/bin"

export GOPATH=$HOME/code/go
export PATH=$PATH:$GOPATH/bin

source ~/.aliases.sh
