if [[ -z "$SSH_AUTH_SOCK" ]] || ! ssh-add -l >/dev/null 2>&1; then
    # SSH-agentが動いていない、または鍵がない場合のみ処理
    
    # 既存のagentプロセスがあるかチェック
    if ! pgrep -u "$USER" ssh-agent > /dev/null; then
        eval "$(ssh-agent -s)" > /dev/null
    fi
    
    # Keychainから鍵を読み込み
    ssh-add --apple-load-keychain >/dev/null 2>&1
    
    # 特定の鍵が読み込まれているかチェック
    if [[ -f "$HOME/.ssh/id_ed25519_personal" ]] && ! ssh-add -l | grep -q "id_ed25519_personal"; then
        ssh-add --apple-use-keychain "$HOME/.ssh/id_ed25519_personal" >/dev/null 2>&1
    fi
fi

. $(brew --prefix asdf)/libexec/asdf.sh

# Workspace
alias ws='code ~/Workspaces/AllProjects.code-workspace'  # VS Code ワークスペースを開く

# eza (改良版 ls)
alias ls='eza --long --header --git --group-directories-first'  # 詳細表示、Git状態付き
alias la='ls --all'         # 隠しファイルも表示
alias ld='ls --tree --level=2'  # ツリー表示（深度2）
alias lda='ld --all'        # ツリー + 隠しファイル

# ripgrep (改良版 grep)
alias grep='rg'             # 高速grep
alias grepi='rg -i'         # 大文字小文字を無視
alias grepn='rg -n'         # 行番号付き
alias grepc='rg --context 2'  # 前後2行も表示

# ディレクトリ移動
alias ..='cd ..'            # 1つ上へ
alias ...='cd ../..'        # 2つ上へ
alias ....='cd ../../..'    # 3つ上へ
alias ~='cd ~'              # ホームへ