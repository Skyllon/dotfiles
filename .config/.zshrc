if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
zstyle ':omz:update' mode auto      # update automatically without asking

# Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User aliases 
alias cls='tput reset'
alias zshconf='nvim ~/.zshrc'
alias sys_upd="sudo pacman -Syu --noconfirm"
alias sys_clean="sudo pacman -Rns $(pacman -Qtdq) --noconfirm"
alias yay_upd="yay -Syu --noconfirm"
alias fixpacman="sudo rm /var/lib/pacman/db.lck"
alias ls='exa --icons --color=auto --group-directories-first'
alias ll='exa --icons -l --color=auto --group-directories-first'
alias la='exa --icons -a --color=auto --group-directories-first'
alias l='exa --icons -l --color=auto --group-directories-first'
alias tree='exa --icons --tree --color=auto'
alias grep='grep --color=auto'

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
