# added by Anaconda3 5.2.0 installer
# export PATH="/Users/anvarkunanbaev/anaconda3/bin:$PATH"  # commented out by conda initialize
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export CLICOLOR=1
export LSCOLORS=GxBxCxDxexegedabagaced
# export PATH="/Users/anvarkunanbaev/opt/anaconda3/bin:$PATH"  # commented out by conda initialize

POWERLINE_PATH="/Users/anvarkunanbaev/Library/Python/3.8/lib/python/site-packages"
POWERLINE_SCRIPT=$POWERLINE_PATH/powerline/bindings/bash/powerline.sh
if [ -f $POWERLINE_SCRIPT ]; then
      $POWERLINE_PATH/scripts/powerline-daemon -q
        source $POWERLINE_SCRIPT
        fi

# parse_git_branch() {
#    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
# }

# Customizing prompt
# export PS1="\[\e[0;35m\]->> \[\e[1;34m\]\W\[\e[0;32m\]\$(parse_git_branch)\[\e[0;37m $\] " 
# export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[0;32m\]\$(parse_git_branch)\[\033[00m\]\$ "

alias python=/Library/Frameworks/Python.framework/Versions/3.8/bin/python3

export PATH="$HOME/.poetry/bin:$PATH"
source "$HOME/.cargo/env"
export PATH="/usr/local/opt/node@14/bin:$PATH"

# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/anvarkunanbaev/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/anvarkunanbaev/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/anvarkunanbaev/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/anvarkunanbaev/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

