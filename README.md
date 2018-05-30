# CLIR/DLF Mac Setup

[![Build Status](https://travis-ci.org/waynegraham/laptop.svg?branch=master)](https://travis-ci.org/waynegraham/laptop)

This is a script to help set up macOS for CLIR/DLF.

It can be run multiple times on the same machine safely. It installs, upgrades, or skips packages based on if they are already installed on the machine.

This script is largely based on [thoughtbot/laptop](https://github.com/thoughtbot/laptop).

# Install

Download the script:

`curl --remote-name https://raw.githubusercontent.com/waynegraham/laptop/master/mac`

Review the script (avoid running scripts you haven't read!):

`less mac`

Execute the downloaded script:

`sh mac 2>&1 | tee ~/laptop.log`

## Debugging

Your last run will be saved to `~/laptop.log`.

## What it sets up

macOS tools:

- Homebrew

Unix Tools:

- Git
- OpenSSL
- The Silver Searcher

GitHub Tools:

- Hub

Productivity:

- Atom
- Box Drive
- Adobe Creative Cloud
- Firefox
- Google Chrome
- Google Hangouts
- iterm2
- Lastpass
- Libre Office
- Microsoft Office
- mvim
- Slack
- Zoom

## Customize in ~/.laptop.local

```
#!/bin/sh

brew bundle --file=- <<EOF
brew "Caskroom/cask/dockertoolbox"
brew "go"
brew "ngrok"
brew "watch"
EOF

fancy_echo "Cleaning up old Homebrew formulae ..."
brew cleanup
brew cask cleanup
```
