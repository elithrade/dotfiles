source ~/antigen.zsh

# https://github.com/jeffreytse/zsh-vi-mode/issues/24#issuecomment-873029329
# Doing initialization at the plugin sourcing (Instantly)
ZVM_INIT_MODE=sourcing

antigen use oh-my-zsh
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle jump
antigen bundle jeffreytse/zsh-vi-mode

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

source ~/.history.zsh

# Make Vi mode transitions faster (KEYTIMEOUT is in hundredths of a second)
export KEYTIMEOUT=1

# pure prompt
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export NODE_PATH=$NODE_PATH:`npm root -g` # This is needed to resolve coc error 'cannot find module typescript'

# Uncomment following lines when run it for the first time, it causes konsole to output ////// characters
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

export EDITOR=nvim

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
