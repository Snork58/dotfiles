#!/usr/bin/env bash
set -euo pipefail

# キーリピート高速化
defaults write -g KeyRepeat -int 1
defaults write -g InitialKeyRepeat -int 15

# スクロールバー常時表示
defaults write -g AppleShowScrollBars -string "Always"

# Finder：拡張子表示
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# 反映（必要なら再起動/ログアウト）
echo "⚙️ macOS defaults applied (再ログインで反映されるものがあります)"