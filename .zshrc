
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH=/home/ptolemy/.local/bin:$PATH
# Theme
ZSH_THEME="linuxonly"

CASE_SENSITIVE="false"

HYPHEN_INSENSITIVE="true"

zstyle ':omz:update' mode auto      # update automatically without asking

zstyle ':omz:update' frequency 14

DISABLE_MAGIC_FUNCTIONS="true"

DISABLE_LS_COLORS="true"

ENABLE_CORRECTION="false"

COMPLETION_WAITING_DOTS="true"


HIST_STAMPS="dd.mm.yyyy"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
else
   export EDITOR='nvim'
 fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

venv() {
  if [[ -n "$VIRTUAL_ENV" ]]; then
        deactivate
        echo "Exited virtual environment"
  else
        source .venv/bin/activate
        echo "Entered virtual environment"
  fi
}
rundev() {
  pkill node >/dev/null
  npm run dev >/dev/null & 
  disown
  echo "Server Up"
}
waybar_reload() {
  killall waybar
  waybar -l off &
  disown
}
nano() {
  espeak "you have a nano penis" &&
  nvim $1
}
alias ls="eza --icons -al"
alias py="python3"
alias python="python3"
alias shutdown="shutdown now"
alias reload="source ~/.zshrc" 
alias lvim="nvim"
alias clear-download="rm ~/Downloads/* -rf"
alias nivm="nvim"
alias help="espeak \"You use arch btw figure it out yourself\""
alias :q="exit"
