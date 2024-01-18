sudo -v

read -p "Enter 1password email: " email
read -p "Enter 1password secret key: " secretkey

NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

eval "$(/opt/homebrew/bin/brew shellenv)"

brew install --cask 1password-cli

eval "$(op account add --address my.1password.com --email $email --secret-key $secretkey)"

brew install chezmoi

chezmoi init --apply https://github.com/janpuc/dotfiles.git
