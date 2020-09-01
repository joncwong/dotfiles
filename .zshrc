source /Users/jonwong/.zsh/antigen.zsh
export PATH="/usr/local/sbin:$PATH"
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
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
antigen theme cloud

# Load bundles from external repos.
# antigen bundle zsh-users/zsh-completions
# antigen bundle zsh-users/zsh-autosuggestions
# antigen bundle zsh-users/zsh-syntax-highlighting

# Tell Antigen that you're done.
antigen apply
