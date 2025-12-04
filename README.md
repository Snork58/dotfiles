# dotfiles

macOS 用の開発環境設定ファイル集

## セットアップ

```bash
git clone https://github.com/Snork58/dotfiles.git ~/dotfiles
cd ~/dotfiles
./bootstrap.sh
```

### 個別セットアップ

```bash
# dotfiles のみ適用
./stow-local.sh

# macOS 設定のみ適用
./macos.sh
```

## インストールされるソフトウェア

### Command Line Tools (brew)

| パッケージ       | 用途                                                 |
| ---------------- | ---------------------------------------------------- |
| `git`            | バージョン管理システム                               |
| `asdf`           | 複数言語のバージョン管理ツール（Node.js、Python 等） |
| `docker-compose` | Docker コンテナ オーケストレーション                 |
| `openssl@3`      | SSL/TLS 暗号化ライブラリ                             |
| `eza`            | モダンな`ls`の代替（色付き、アイコン表示）           |
| `fzf`            | ファジーファインダー（ファイル・履歴検索）           |
| `gawk`           | GNU 版 awk（テキスト処理）                           |
| `gh`             | GitHub CLI（プルリクエスト作成等）                   |
| `gnupg`          | GPG 暗号化・署名ツール                               |
| `graphviz`       | グラフ描画ツール（dot 言語）                         |
| `jq`             | JSON 処理・整形ツール                                |
| `mas`            | Mac App Store CLI                                    |
| `ripgrep`        | 高速 grep 代替（`rg`コマンド）                       |
| `stow`           | dotfiles 管理ツール                                  |
| `tmux`           | ターミナルマルチプレクサ                             |
| `wget`           | ファイルダウンロードツール                           |

### Applications (cask)

| アプリケーション        | 用途                         |
| ----------------------- | ---------------------------- |
| `chatgpt`               | ChatGPT デスクトップアプリ   |
| `chatgpt-atlas`         | ChatGPT Atlas アプリ         |
| `deepl`                 | 翻訳アプリ                   |
| `docker-desktop`        | コンテナ開発環境             |
| `figma`                 | デザインツール               |
| `font-jetbrains-mono`   | プログラミング用フォント     |
| `google-chrome`         | Web ブラウザ                 |
| `google-drive`          | クラウドストレージ           |
| `iterm2`                | 高機能ターミナル             |
| `microsoft-auto-update` | Microsoft 製品の自動更新     |
| `microsoft-edge`        | Microsoft Web ブラウザ       |
| `microsoft-excel`       | 表計算ソフト                 |
| `microsoft-powerpoint`  | プレゼンテーションソフト     |
| `microsoft-word`        | 文書作成ソフト               |
| `notion`                | ノート・ドキュメント管理     |
| `onedrive`              | Microsoft クラウドストレージ |
| `raycast`               | ランチャー・生産性ツール     |
| `rectangle`             | ウィンドウ管理ツール         |
| `visual-studio-code`    | コードエディタ               |
| `zoom`                  | ビデオ会議ツール             |

### Mac App Store (mas)

| アプリ         | ID         | 用途                 |
| -------------- | ---------- | -------------------- |
| LINE           | 539883307  | メッセージングアプリ |
| Magnet         | 441258766  | ウィンドウ管理ツール |
| 辞書 by 物書堂 | 1380563956 | 日本語辞書アプリ     |

### VS Code Extensions

#### 開発支援・Git

- `github.copilot` / `github.copilot-chat` - AI コード補完
- `github.codespaces` - GitHub Codespaces
- `github.vscode-pull-request-github` - GitHub 連携
- `eamodio.gitlens` - Git 履歴・差分の可視化
- `formulahendry.code-runner` - 各言語のコード実行

#### コンテナ・リモート開発

- `ms-vscode-remote.remote-containers` - コンテナ開発
- `ms-vscode-remote.remote-wsl` - WSL 開発
- `ms-azuretools.vscode-containers` - Azure コンテナ
- `docker.docker` / `ms-azuretools.vscode-docker` - Docker 支援

#### 言語・フレームワーク

- `ms-python.python` / `ms-python.vscode-pylance` - Python 開発
- `ms-python.debugpy` / `ms-python.vscode-python-envs` - Python デバッグ・環境
- `ms-toolsai.jupyter-renderers` - Jupyter Notebook
- `bmewburn.vscode-intelephense-client` - PHP 開発
- `dsznajder.es7-react-js-snippets` - React 開発
- `bradlc.vscode-tailwindcss` - Tailwind CSS
- `ecmel.vscode-html-css` - HTML/CSS 補完

#### 表示・UI

- `oderwat.indent-rainbow` - インデント可視化
- `vincaslt.highlight-matching-tag` - 対応タグハイライト
- `ms-ceintl.vscode-language-pack-ja` - 日本語パック

#### フォーマット・ユーティリティ

- `esbenp.prettier-vscode` - コード整形
- `formulahendry.auto-rename-tag` - タグ名自動変更
- `ritwickdey.liveserver` - ライブサーバー
- `vscodevim.vim` - Vim 操作
- `tomoki1207.pdf` - PDF 表示

#### 図表・ドキュメント

- `hediet.vscode-drawio` - Draw.io 図表作成
- `jebbs.plantuml` - PlantUML 図表
- `bierner.markdown-mermaid` - Mermaid 図表
- `arjun.swagger-viewer` - API 文書表示

#### Web 開発・その他

- `glenn2223.live-sass` - Sass/SCSS ライブコンパイル
- `jock.svg` - SVG 表示・編集
- `redhat.vscode-yaml` - YAML 支援
- `figma.figma-vscode-extension` - Figma 連携
- `natizyskunk.sftp` - SFTP 接続
- `wordpresstoolbox.wordpress-toolbox` - WordPress 開発

## ディレクトリ構成

```
dotfiles/
├── .gitignore              # Git除外ファイル
├── bootstrap.sh            # 全体セットアップスクリプト
├── Brewfile                # Homebrew パッケージ定義
├── macos.sh                # macOS設定スクリプト
├── stow-local.sh           # dotfiles配置スクリプト
├── dotfiles.code-workspace # VS Code ワークスペース
├── git/
│   ├── .gitconfig          # Git設定
│   └── .gitignore_global   # グローバルgitignore
├── ssh/
│   └── .ssh/config         # SSH設定
├── tmux/                   # tmux設定
├── vim/
│   └── .vimrc              # Vim設定
├── zsh/
│   └── .zshrc              # Zsh設定（エイリアス含む）
└── README.md               # このファイル
```

## カスタマイズ

各設定ファイルは用途に応じて編集してください：

- `Brewfile`: インストールするソフトウェアの追加・削除
- `macos.sh`: macOS の設定変更
- `git/.gitconfig`: Git の設定
- `git/.gitignore_global`: グローバル gitignore
- `ssh/.ssh/config`: SSH 接続設定
- `zsh/.zshrc`: Zsh の設定（便利なエイリアス含む）
- `vim/.vimrc`: Vim の設定

### 便利なエイリアス

zsh 設定には以下の便利なエイリアスが含まれています：

- **ファイル操作**: `ls`, `la`, `ld` (eza 使用)
- **検索**: `grep`, `grepi`, `grepn` (ripgrep 使用)
- **Git 操作**: `gs`, `ga`, `gc`, `gp`, `gl` など多数
- **ディレクトリ移動**: `..`, `...`, `....`
- **VS Code**: `ws` (ワークスペース開く)

## 注意事項

- セットアップ後、一部の設定は再ログインが必要です
- VS Code 拡張機能は初回起動時に自動インストールされます
- macOS 設定の変更は`macos.sh`を再実行することで適用できます
- SSH 接続には事前に GitHub への公開鍵登録が必要です
- stow を使用してシンボリックリンクで設定ファイルを管理しています
- `.gitignore`により秘密鍵など機密ファイルは自動的に除外されます

## トラブルシューティング

### SSH 接続エラーの場合

```bash
# SSH鍵の状態確認
ssh-add -l

# GitHub接続テスト
ssh -T git@github.com

# 鍵をKeychainに追加
ssh-add --apple-use-keychain ~/.ssh/id_ed25519_personal
```

### 設定ファイルが反映されない場合

```bash
# zsh設定を再読み込み
source ~/.zshrc

# stowを再実行
./stow-local.sh
```
