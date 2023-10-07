unz() {
    unzip $1 -d ${1%.*}
}

alias ls="exa -1"
alias l="exa --long"
alias la="exa --long --all --group"
alias lt="exa --tree --level"
alias mat="tldr"
alias man="man --locale=ru"
alias manb="man --locale=ru --html=firefox"
alias du="ncdu"
alias untar="tar -xvf"
alias ga="git add"
alias gc="git commit -m"
alias yi="yay -Sy"
alias yr="yay -Rsc"
alias yu="yay -U"
alias yinf="yay -Si"
alias yq="yay -Q | grep"
alias fd="fd -Hs"
alias v="nvim"
alias q="exit"
alias vb="cd $HOME/.config/bspwm/; v"
alias vn="cd $HOME/.config/nvim/; v"
alias yf="yay -Qo"
alias what_is_git="echo -e '  ?   — untracked change(s);\n  +   — staged change(s);\n  !   — file(s) modified in the repo;\n  »   — renamed file(s);\n  —   — deleted file(s);\n  $   — stashed change(s);\n  #   — unmerged change(s);\n  •|  — behind of remote branch;\n  |•  — ahead of remote branch;\n  ~   — Branches have diverged;'"
alias trt="trans -show-original n -show-original-phonetics n -show-translation-phonetics n -show-prompt-message n -show-dictionary n -show-alternatives n -show-languages n en:ru"
alias cz="chezmoi"
