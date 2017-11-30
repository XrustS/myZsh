# Get load powerline9k settings
 source ~/.powerline9krc
# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"
 HIST_STAMPS="dd/mm/yyyy"

# You may need to manually set your language environment
 export LANG=ru_RU.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

# Compilation flags
 export ARCHFLAGS="-arch x86_64"

# ssh
 export SSH_KEY_PATH="~/.ssh/rsa_id"

# Antigen settings
 source ~/antigen.zsh
 antigen init .antigenrc

# Xrust settings
# for code ({000..255}) print -P -- "$code: %F{$code}This is how your text would look like%f" --list system colors
#alias cat="cat $1 | colorize"
#alias less="less $@ | colorize"
alias df="df -h"
alias du="du -h"
alias rm="rm -i"
alias ll="ls -lha"
alias -g xcopy='xclip -selection clipboard'
alias -g xpaste='xclip -selection clipboard -o'
alias cp="cp -v"
