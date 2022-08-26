# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export RANGER_LOAD_DEFAULT_RC=false

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export EDITOR="vim"
export BROWSER=firefox ddgr
export TERM=xterm-kitty

#====================FZF=========================
export FZF_DEFAULT_OPTS=" \
--color=bg+:#363a4f,bg:#24273a,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
--color=marker:#f4dbd6,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796 \
--info=inline \
--multi \
--preview-window=:hidden \
--preview '([[ -f {} ]] && (bat --style=numbers --color=always {} || cat {})) || ([[ -d {} ]] && (tree -C {} | less)) || echo {} 2> /dev/null | head -200' \
--prompt='∼ ' --pointer='▶' --marker='✓' \
--bind '?:toggle-preview'"

export FZF_COMPLETION_TRIGGER='..'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND --type d"

ZSH_THEME="powerlevel10/powerlevel10k"

 HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

plugins=(zsh-autosuggestions
        zsh-syntax-highlighting
        extract)

fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
source $ZSH/oh-my-zsh.sh


# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='vim'
 fi
#=============================ALIASES==========================
alias '?'='duck'
alias '??'='google'

alias home='cd ~'
alias download='cd ~/Downloads'
alias document='cd ~/Documents'

alias ssh-keygen='ssh-keygen -t ed25519'
alias locate='mlocate'
alias ls='exa -lG --icons --group-directories-first --color=always'
alias V='kitty  --class 'vim' --detach 'vim''
alias getpath='copypath $(find -type d | fzf)'

alias ghidra='/opt/ghidra/ghidraRun'
alias config='/usr/bin/git --git-dir=/home/yuri/dotfiles/ --work-tree=/home/yuri'
#==============================Functions=============================
fcd (){
    cd ~ && cd "$(find -type d | fzf)"
}

copypath (){
  local file="${1:-.}"
  [[ $file = /* ]] || file="$PWD/$file"
  print -n "${file:a}" | clipcopy || return 1
  echo ${(%):-"%B${file:a}%b copied to clipboard."}
}
#
# find-in-file - usage: fif <SEARCH_TERM>
fif() {
  if [ ! "$#" -gt 0 ]; then
    echo "Need a string to search for!";
    return 1;
  fi
  rg --files-with-matches --no-messages --ignore-case "$1" | fzf $FZF_PREVIEW_WINDOW --preview "rg --ignore-case --pretty --context 10 '$1' {}"
}

chpwd (){
  ls
}
#=======================PATH========================================
#$PATH enviroment variable should be placed under .zshenv.

bindkey -s '^F' "tmux-sessionizer\n"
#source ~/.zsh_profile
#======================API Keys========================================
export OPENWEATHER_APY_KEY='72abb44c31abdfeae2e614dd88cef0b7'
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
