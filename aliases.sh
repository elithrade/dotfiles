# Git
alias gi="git init"
alias gs="git status"
alias gd="git diff"
alias gdh="git diff HEAD"
alias gc="git clone $1 $2"
alias gcm="git commit -m $1"
alias gaa="git add -A ."
alias gpo="git push origin $1"
alias gll="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gl="git pull"
alias gb="git branch"
alias glrh="git ls-remote --heads"
alias glo="git log --oneline"
alias grhh="git reset --hard HEAD"
alias grh="git reset --hard"
alias gfo="git fetch origin"
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

# Tmux
alias t="env TERM=xterm-256color tmux"
alias e="exit"
alias ta="t attach"
alias tl="tmux ls"

# aws
alias asl="aws s3 ls"
alias ascp="aws s3 cp"
alias ascpr="aws s3 cp --recursive"

# go
alias gosrc="cd $GOPATH/src"
alias gose="cd $GOPATH/src/github.com/elithrade"
alias gosg="cd $GOPATH/src/github.com"

alias yi="yarn install"
alias yas="yarn add -S"
alias yad="yarn add -D"
alias yag="yarn add global"
alias ys="yarn start"
alias yt="yarn test"
alias yb="yarn build"

# Other
alias snip="maim -s --format=png /dev/stdout | xclip -selection clipboard -t image/png -i"

# Dotnet
alias d2="export MSBuildSDKsPath=/usr/share/dotnet/sdk/2.2.109/Sdks"
alias dl="export MSBuildSDKsPath=/usr/share/dotnet/sdk/$(dotnet --version)/Sdks"
alias dbs="dotnet build-server shutdown"
alias db="dotnet build"
alias dr="dotnet run"
alias dv="dotnet --version"
alias dls="dotnet --list-sdks"
