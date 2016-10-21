source ~/antigen.zsh

antigen use oh-my-zsh
antigen bundle jump

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen theme https://github.com/halfo/lambda-mod-zsh-theme lambda-mod

source ~/.aliases.sh

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

antigen apply
