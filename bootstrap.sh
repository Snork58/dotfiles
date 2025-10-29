#!/usr/bin/env bash
set -euo pipefail
if ! xcode-select -p &>/dev/null; then
  xcode-select --install || true
  echo "Xcode CLT のインストールが完了したら再実行してください。"
  exit 0
fi

if ! command -v brew &>/dev/null; then
  echo "Homebrew をインストールしています..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  if [[ -d /opt/homebrew]]; then
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
  else
    echo 'eval "$(/usr/local/bin/brew shellenv)"' >> ~/.zprofile
    eval "$(/usr/local/bin/brew shellenv)"
  fi
fi

brew update
brew bundle --file="$(dirname "$0")/Brewfile"

bash "$(dirname "$0")/stow-local.sh"

if [[ -f "$(dirname "$0")/macos.sh" ]]; then
  bash "$(dirname "$0")/macos.sh"
fi
echo "Setup complete."