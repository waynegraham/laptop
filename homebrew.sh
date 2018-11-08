#! /bin/bash

HOMEBREW_PREFIX="/usr/local"

if [ -d "$HOMEBREW_PREFIX" ]; then
  if ! [ -r "$HOMEBREW_PREFIX" ]; then
    # sudo chown -R "$LOGNAME:admin" /usr/local
    chown -R "$LOGNAME:admin" /usr/local
  fi
else
  # sudo mkdir "$HOMEBREW_PREFIX"
  # sudo chflags norestricted "$HOMEBREW_PREFIX"
  # sudo chown -R "$LOGNAME:admin" "$HOMEBREW_PREFIX"

  mkdir "$HOMEBREW_PREFIX"
  chflags norestricted "$HOMEBREW_PREFIX"
  chown -R "$LOGNAME:admin" "$HOMEBREW_PREFIX"
fi

if ! command -v brew >/dev/null; then
  curl -fsS \
    'https://raw.githubusercontent.com/Homebrew/install/master/install' | ruby
    fi

    if brew list | grep -Fq brew-cask; then
      brew uninstall --force brew-cask
    fi

    brew update --force # https://github.com/Homebrew/brew/issues/1151

    brew bundle --file=- <<EOF
# Unix
brew "ack"
brew "coreutils"
brew "curl"
brew "git"
brew "node"
brew "openssl"
brew "the_silver_searcher"
# Applications
cask "atom"
cask "box-drive"
cask "adobe-creative-cloud"
cask "firefox"
cask "google-chrome"
cask "google-hangouts"
cask "iterm2"
cask "libreoffice"
cask "microsoft-office"
cask "slack"
cask "zoom"
EOF
