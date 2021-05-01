# configuration based on system architecture
switch (uname -m)
case armv7l # raspberry pi
end

# configuration based on distribution
switch (uname)
case Linux
end

# use nerd font themeing
set -g theme_nerd_fonts yes

# setup ssh-agent
set -U keychain_init_args --quiet --agents ssh id_rsa

# homeshick dotfile management
source "$HOME/.homesick/repos/homeshick/homeshick.fish"
source "$HOME/.homesick/repos/homeshick/completions/homeshick.fish"

# set EDITOR environment variable
# alias vim="nvim"
# alias emacs="emacsclient --tty --create-frame"
set -Ux EDITOR vim

# git convenience aliases
alias wip="git commit -a -m wip"
alias amend="git commit -a --amend -m (git log --oneline --format=%B -n 1 HEAD | head -n 1)"
alias undo="git reset --soft HEAD~1 && git reset HEAD ."
alias oneline="git log --oneline master..."

# nodejs familiar toolchain
set -U default_npm_packages \
    yarn \
    snowpack \
    http-server \
    parcel \
    onchange \
    lerna \
    npmrc \
    @ceejbot/tarot

function toolchain-node
    npm i -g $default_npm_packages
end
