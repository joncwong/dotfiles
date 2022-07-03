source ~/.zsh/antigen.zsh
export CLICOLOR=1

# ls right after cd'ing into a directory
function cd {
    builtin cd "$@" && ls -F
}

# Load oh-my-zsh library.
antigen use oh-my-zsh
# Load bundles from the default repo (oh-my-zsh).
antigen bundle git
antigen bundle command-not-found
antigen bundle docker
antigen bundle pip
antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply
