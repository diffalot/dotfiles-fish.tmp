# configuration based on system architecture
switch (uname -m)
case armv7l # raspberry pi
end
# configuration based on distribution
switch (uname)
case Linux
end

# Fundle, a bundler for fish

# colorschemes
fundle plugin 'smh/base16-shell-fish'

# Prompts
#fundle plugin 'matchai/spacefish'
#set -U SPACEFISH_PROMPT_ORDER git venv rust jobs
#set -U SPACEFISH_RPROMPT_ORDER git venv rust jobs

#fundle plugin 'oh-my-fish/theme-edan'
fundle plugin 'pure-fish/pure'
#fundle plugin 'jorgebucaran/hydro'
#fundle plugin 'oh-my-fish/theme-scorphish'
#fundle plugin 'hauleth/agnoster'

# utilities other scripts depend on
fundle plugin 'tuvistavie/fish-completion-helpers'
fundle plugin 'oh-my-fish/plugin-config'
fundle plugin 'tuvistavie/oh-my-fish-core'
fundle plugin 'jorgebucaran/replay.fish'
fundle plugin 'oh-my-fish/plugin-foreign-env'
fundle plugin 'edc/bass'

# ssh agent (keychain can do ssh and gpg)
fundle plugin 'danhper/fish-ssh-agent'
#fundle plugin 'jitakirin/pkg-keychain'
#set -U keychain_init_args --quiet --agents ssh id_rsa

# efficiency tools
fundle plugin 'patrickf3139/Colored-Man-Pages'
fundle plugin 'tuvistavie/fish-fastdir'
fundle plugin 'laughedelic/pisces'
#fundle plugin 'jorgebucaran/autopair.fish'

# environment managers
fundle plugin 'FabioAntunes/fish-nvm'
fundle plugin 'oh-my-fish/plugin-pyenv'
fundle plugin 'oh-my-fish/plugin-rustup'
#fundle plugin 'oh-my-fish/plugin-rbenv'

# OS specific aliases, etc.
#fundle plugin 'oh-my-fish/plugin-osx'
#fundle plugin 'oh-my-fish/plugin-archlinux'

# Utilities that aren't for everyone
fundle plugin 'vincentjames501/fish-kill-on-port'
#fundle plugin 'oh-my-fish/plugin-aws'
#fundle plugin 'tuvistavie/fish-watson'

fundle init

# add .bin to path
set -U fish_user_paths $fish_user_paths $HOME/bin

# set EDITOR environment variable
alias vim="nvim"
# alias emacs="emacsclient --tty --create-frame"
set -U EDITOR nvim

# git convenience aliases
alias wip="git commit -a -m wip"
alias amend="git commit -a --amend -m (git log --oneline --format=%B -n 1 HEAD | head -n 1)"
alias undo="git reset --soft HEAD~1 && git reset HEAD ."
alias oneline="git log --oneline master..."

# use nerd font themeing
set -g theme_nerd_fonts yes

# homeshick dotfile management
source "$HOME/.homesick/repos/homeshick/homeshick.fish"
source "$HOME/.homesick/repos/homeshick/completions/homeshick.fish"
