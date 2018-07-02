# Git
alias gi="git init"
alias gs="git status"
alias gd="git diff"
alias gdh="git diff HEAD"
alias gc="git clone $1 $2"
alias gcm="git commit -m $1"
alias gaa="git add -A ."
alias gpo="git push origin $1"
alias gl="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glo="git log --oneline"
alias grhh="git reset --hard HEAD"
alias gcp="git cherry-pick $1"
alias ga="git add $1"

# Files
alias l="ls -o -hX --group-directories-first"
alias la="ls -o -AhX --group-directories-first"
alias v="nvim"
alias zh="nvim ~/.zsh_history"
alias dot="cd ~/dotfiles"

# Npm
alias ni="npm install"
alias nis="npm i -S "
alias nig="npm i -g "
alias nid="npm i -D "
alias nr="npm run $1"
alias nrs="npm run start"
alias nrb="npm run build"
alias nrt="npm run test"
alias nrc="npm run commit"

# Yaourt/pacman
alias yao="yaourt"
alias autoremove="sudo pacman -Rcns $(pacman -Qdtq)"

# Tmux
alias t="env TERM=xterm-256color tmux"
alias e="exit"
alias ta="t attach"
alias tl="tmux ls"

# aws
alias asl="aws s3 ls"
alias ascp="aws s3 cp"
alias ascpr="aws s3 cp --recursive"
