# ~/.zshrc に以下を追加
# SSH Agent の自動設定
if [[ -z "$SSH_AUTH_SOCK" ]]; then
    eval "$(ssh-agent -s)" > /dev/null
fi

# Keychainから鍵を自動読み込み
ssh-add -l &>/dev/null
if [[ $? == 2 ]]; then
    ssh-add --apple-load-keychain &>/dev/null
fi

. $(brew --prefix asdf)/libexec/asdf.sh
alias ws='code ~/Workspaces/AllProjects.code-workspace'
alias ls='eza --long --header --git --group-directories-first'
alias la='ls --all'
alias ld='ls --tree --level=2'
alias lda='ld --all'
alias grep='rg'
alias grepi='rg -i'
alias grepn='rg -n'
alias grepc='rg --context 2'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ~='cd ~'