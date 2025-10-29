#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

if ! command -v stow &>/dev/null; then
  echo "GNU Stow をインストールしています..."
  brew install stow
fi
mkdir -p "$HOME/Library/Application Support/Code/User"
for package in */; do
  if [[ -d "$package" ]]; then
  package_name="${package%/}"
  if stow --target="$HOME" --restow "$package_name" 2>/dev/null; then
    echo "設定ファイルを適用しました: $package_name"
  else
    echo "警告: $package_name の設定ファイルの適用に失敗しました。手動で確認してください。"
  fi
done