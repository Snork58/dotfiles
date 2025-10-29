# dotfiles

macOS 用の開発環境設定ファイル集

## セットアップ

```bash
git clone https://github.com/YOUR_USERNAME/dotfiles.git ~/dotfiles
cd ~/dotfiles
./bootstrap.sh
```

## インストールされるソフトウェア

### Command Line Tools (brew)

| パッケージ  | 用途                                                 |
| ----------- | ---------------------------------------------------- |
| `git`       | バージョン管理システム                               |
| `asdf`      | 複数言語のバージョン管理ツール（Node.js、Python 等） |
| `openssl@3` | SSL/TLS 暗号化ライブラリ                             |
| `eza`       | モダンな`ls`の代替（色付き、アイコン表示）           |
| `fzf`       | ファジーファインダー（ファイル・履歴検索）           |
| `gh`        | GitHub CLI（プルリクエスト作成等）                   |
| `gnupg`     | GPG 暗号化・署名ツール                               |
| `jq`        | JSON 処理・整形ツール                                |
| `mas`       | Mac App Store CLI                                    |
| `ripgrep`   | 高速 grep 代替（`rg`コマンド）                       |
| `stow`      | dotfiles 管理ツール                                  |
| `wget`      | ファイルダウンロードツール                           |

### Applications (cask)

| アプリケーション        | 用途                         |
| ----------------------- | ---------------------------- |
| `deepl`                 | 翻訳アプリ                   |
| `docker-desktop`        | コンテナ開発環境             |
| `figma`                 | デザインツール               |
| `font-jetbrains-mono`   | プログラミング用フォント     |
| `google-chrome`         | Web ブラウザ                 |
| `google-drive`          | クラウドストレージ           |
| `iterm2`                | 高機能ターミナル             |
| `microsoft-auto-update` | Microsoft 製品の自動更新     |
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
| Magnet         | 441258766  | ウィンドウ管理ツール |
| 辞書 by 物書堂 | 1380563956 | 日本語辞書アプリ     |

### VS Code Extensions

#### 開発支援

- `github.copilot` / `github.copilot-chat` - AI コード補完
- `github.vscode-pull-request-github` - GitHub 連携
- `formulahendry.code-runner` - 各言語のコード実行
- `ms-vscode-remote.remote-containers` - コンテナ開発
- `docker.docker` / `ms-azuretools.vscode-docker` - Docker 支援

#### 言語・フレームワーク

- `ms-python.python` / `ms-python.vscode-pylance` - Python 開発
- `bmewburn.vscode-intelephense-client` - PHP 開発
- `dsznajder.es7-react-js-snippets` - React 開発
- `bradlc.vscode-tailwindcss` - Tailwind CSS
- `ecmel.vscode-html-css` - HTML/CSS 補完

#### 表示・テーマ

- `oderwat.indent-rainbow` - インデント可視化
- `vincaslt.highlight-matching-tag` - 対応タグハイライト
- `ms-ceintl.vscode-language-pack-ja` - 日本語パック

#### ユーティリティ

- `esbenp.prettier-vscode` - コード整形
- `formulahendry.auto-rename-tag` - タグ名自動変更
- `ritwickdey.liveserver` - ライブサーバー
- `vscodevim.vim` - Vim 操作
- `tomoki1207.pdf` - PDF 表示
- `hediet.vscode-drawio` - 図表作成

#### その他

- `figma.figma-vscode-extension` - Figma 連携
- `natizyskunk.sftp` - SFTP 接続
- `wordpresstoolbox.wordpress-toolbox` - WordPress 開発
- `arjun.swagger-viewer` - API 文書表示
- `bierner.markdown-mermaid` - Mermaid 図表
- `redhat.vscode-yaml` - YAML 支援
- `glenn2223.live-sass` - Sass/SCSS
- `jock.svg` - SVG 表示

## ディレクトリ構成

```
dotfiles/
├── bootstrap.sh     # セットアップスクリプト
├── Brewfile         # Homebrew パッケージ定義
├── macos.sh         # macOS設定スクリプト
├── stow-local.sh    # dotfiles配置スクリプト
├── git/             # Git設定
├── zsh/             # Zsh設定
└── README.md        # このファイル
```

## カスタマイズ

各設定ファイルは用途に応じて編集してください：

- `Brewfile`: インストールするソフトウェアの追加・削除
- `macos.sh`: macOS の設定変更
- `git/gitconfig`: Git の設定
- `zsh/zshrc`: Zsh の設定

## 注意事項

- セットアップ後、一部の設定は再ログインが必要です
- VS Code 拡張機能は初回起動時に自動インストールされます
- macOS 設定の変更は`macos.sh`を再実行することで適用できます
