source ~/antigen.zsh

antigen use oh-my-zsh
antigen bundle jump
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme https://github.com/halfo/lambda-mod-zsh-theme lambda-mod

source ~/.aliases.sh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# BASE16_SHELL=$HOME/.config/base16-shell/
# [ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

BASE16_SHELL="$HOME/.config/base16-shell/scripts/base16-gooey.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

export EDITOR=nvim

antigen apply
