# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix nvm)/nvm.sh" ] && \. "$(brew --prefix nvm)/nvm.sh"

# Add Java to path
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# Enable colours for the ls command
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# If we are in git repo, find the current branch name
git_branch() {
    git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Evaluate commands and variables in the prompt each time it is displayed
setopt PROMPT_SUBST

# Customised prompt
PROMPT="%F{yellow}%n%f " # Username
PROMPT+="%F{magenta}%1~%f" # Current directory
PROMPT+="%F{green}\$(git_branch)%f" # Current git branch (if applicable)
PROMPT+=" >> "
