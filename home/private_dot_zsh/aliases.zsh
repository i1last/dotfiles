# most used
alias q="exit"
alias ":q"="exit"
c () {
  if [[ -z $1 ]]; then 
    cd
  else
    cd $1
    eza --group-directories-first
  fi
}

# eza
alias l="eza --long --group-directories-first --icons --hyperlink --all --no-user --no-filesize --no-time"
alias la="eza --long --group-directories-first --icons --hyperlink --all --header --git --time-style=relative --mounts --no-user"
alias ls="eza --group-directories-first --icons --hyperlink"
lt () {
  if [[ -z $1 ]]; then
    eza --long --group-directories-first --icons --hyperlink --all --no-user --no-filesize --no-time --tree --level=1
  else 
    eza --long --group-directories-first --icons --hyperlink --all --no-user --no-filesize --no-time --tree --level=$1
  fi
}

# man pages
alias mat="tldr"
alias man="man --locale=ru"
alias manb="man --locale=ru --html=firefox"

# archive utils
alias du="ncdu"
alias untar="tar -xvf"
unz() {
    unzip $1 -d ${1%.*}
}

# git
alias ga="git add"
alias gc="git commit -m"
alias gst="git status"
alias gp="git push"

# package manager
alias yi="yay -Sy"
alias yr="yay -Rsc"
alias yu="yay -U"
alias yinf="yay -Si"
alias yq="yay -Q | grep"
alias yf="yay -Qo"

# search utils
alias fd="fd -Hs"

# editor
alias v="nvim"
alias vb="cd $HOME/.config/bspwm/; v"
alias vn="cd $HOME/.config/nvim/; v"

# dotfiles manager
alias cz="chezmoi"
alias cza="chezmoi apply"

# tmux
alias t="tmux"

# useful
alias what-is-git="echo -e '  ?   — untracked change(s);\n  +   — staged change(s);\n  !   — file(s) modified in the repo;\n  »   — renamed file(s);\n  —   — deleted file(s);\n  $   — stashed change(s);\n  #   — unmerged change(s);\n  •|  — behind of remote branch;\n  |•  — ahead of remote branch;\n  ~   — Branches have diverged;'"
alias trt="trans -show-original n -show-original-phonetics n -show-translation-phonetics n -show-prompt-message n -show-dictionary n -show-alternatives n -show-languages n en:ru"
alias cr="clear"

# dev
cc++() {
  clang++ -std=c++20 -Wall $1 -o $1.out
}
cc++d() {
  clang++ --debug $1 -o $1.debug-out
}
