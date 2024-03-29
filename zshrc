# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerlevel10k/powerlevel10k"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias rhttpd='ruby -run -e httpd . -p 5000'

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"
DISABLE_UPDATE_PROMPT=true

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

export FZF_BASE=/usr/local/opt/fzf

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(docker brew bundler cd-gitroot colored-man-pages gem git git-prune k macos zsh-syntax-highlighting vi-mode fzf)

source $ZSH/oh-my-zsh.sh

# User configuration

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='code -w'
fi

# history settings
setopt hist_ignore_all_dups inc_append_history
HISTFILE=~/.zhistory
HISTSIZE=4096
SAVEHIST=4096
export PATH="${HOME}/bin:${HOME}/.nodenv/bin:${PATH}"

# awesome cd movements from zshkit
setopt autocd autopushd pushdminus pushdsilent pushdtohome cdablevars
DIRSTACKSIZE=5

# __env
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which plenv > /dev/null; then eval "$(plenv init -)"; fi
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi
if which swiftenv > /dev/null; then eval "$(swiftenv init -)"; fi
if which goenv > /dev/null; then eval "$(goenv init -)"; fi

# Aliases
alias cdg='cd-gitroot'
if type trash >/dev/null 2>&1; then
  alias rm='trash'
fi

alias ag='pt'
alias autocop='bundle exec rake rubocop:lint_unpushed:auto_correct'

zstyle ':completion:*:descriptions' format $'\n%B%F{cyan}%d completions:%f%b\n'

# Vi Mode Overrides
bindkey -M vicmd "^v" edit-command-line
bindkey -M vicmd "v" visual-mode
export KEYTIMEOUT=1
function vi_mode_prompt_info() {
  echo "${${${KEYMAP/vicmd/"%F{blue}[NORMAL]%f"}/visual/"%F{blue}[VISUAL]%f"}/(main|viins)/}"
}


[ -f "$HOME/.private_env" ] && source "$HOME/.private_env"
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

#To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
