# CLIR/DLF Mac Setup

This is a script to help set up macOS for CLIR/DLF.

It can be run multiple times on the same machine safely. It installs, upgrades, or skips packages based on if they are already installed on the machine.

This script is largely based on [thoughtbot/laptop](https://github.com/thoughtbot/laptop).

# Install

[Open the terminal](https://support.apple.com/guide/terminal/open-or-quit-terminal-apd5265185d-f365-44cb-8b09-71a064a42125/)

Install XCode Command Line Tools by pasting the following:

`xcode-select --install`

Answer any questions you are prompted to.

Install [Homebrew](https://brew.sh/)

`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

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

- Asana
- Box Drive (and box tools)
- Adobe Creative Cloud
- Firefox
- Google Chrome
- iterm2
- 1Password
- Libre Office
- Microsoft Office 365
- Visual Studio Code
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
