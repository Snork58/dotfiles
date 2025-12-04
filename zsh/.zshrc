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

# cd コマンド補完
alias cdgoogle='cd ~/Library/CloudStorage/GoogleDrive-kachoufuugetsu2501@gmail.com/マイドライブ'
alias cdw='cd ~/Works'
alias cddot='cd ~/dotfiles'
alias cdsb='cd ~/SandBox'

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

# Git - 基本操作
alias g='git'               # gitのショートカット
alias gs='git status'       # 状態確認
alias gss='git status -s'   # 簡潔な状態表示
alias ga='git add'          # ステージに追加
alias gaa='git add --all'   # 全ファイルをステージ
alias gc='git commit'       # コミット
alias gcm='git commit -m'   # メッセージ付きコミット
alias gca='git commit --amend'  # 直前のコミットを修正

# Git - ブランチ操作
alias gb='git branch'       # ブランチ一覧
alias gba='git branch -a'   # リモート含む全ブランチ
alias gco='git checkout'    # ブランチ切り替え
alias gcob='git checkout -b'  # 新ブランチ作成して切り替え
alias gcm='git checkout main'  # mainブランチへ
alias gcom='git checkout main'  # mainブランチへ（別名）
git_delete_branch() {
    git branch -d "$1" && git push origin --delete "$1"
} # ローカルとリモートの両方からブランチを削除
alias gdb='git_delete_branch'  # 上記関数のエイリアス

# Git - リモート操作
alias gp='git push'         # プッシュ
alias gpo='git push origin' # origin へプッシュ
alias gpom='git push origin main'  # main をプッシュ
alias gpl='git pull'        # プル
alias gplo='git pull origin'  # origin からプル
alias gf='git fetch'        # フェッチ
alias gfa='git fetch --all' # 全リモートをフェッチ

# Git - ログ・履歴
alias gl='git log --oneline --graph --decorate'  # グラフ付きログ
alias gla='git log --oneline --graph --decorate --all'  # 全ブランチのログ
alias gll='git log --graph --pretty=format:"%C(yellow)%h%Creset %C(blue)%an%Creset %s %C(green)(%cr)%Creset" --abbrev-commit'  # 詳細ログ
alias gd='git diff'         # 差分表示
alias gds='git diff --staged'  # ステージの差分

# Git - 便利機能
alias gst='git stash'       # 一時保存
alias gstp='git stash pop'  # 一時保存を戻す
alias gstl='git stash list' # 一時保存リスト
alias gclean='git clean -fd'  # 未追跡ファイルを削除
alias greset='git reset --hard HEAD'  # 変更を全て破棄
alias gundo='git reset --soft HEAD~1'  # 直前のコミットを取り消し
# HomeBrew
alias brewup='brew update && brew upgrade && brew cleanup'  # Homebrewの一括更新
alias brewbundle='brew bundle dump --file=~/dotfiles/Brewfile --force' # Brewfileを更新
