# Using: Powerlevel10k prompt and zsh-syntax-highlighting
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export TERMINAL="st"
export EDITOR="nvim"
export BROWSER="qutebrowser"
export R_LIBS="$HOME/.local/r/lib/"
export R_LIBS_USER="$HOME/.local/r/lib/"
export DOTNET_CLI_TELEMETRY_OPTOUT=1

export PATH="$HOME/.python/bin:$HOME/.dotnet/tools:$HOME/.emacs.d/bin/:$XDG_DATA_HOME/gem/ruby/2.7.0/bin:$HOME/.elan/bin:$HOME/.local/bin:$HOME/.local/private:$PATH"
 
# PASS
export PASSWORD_STORE_CLIP_TIME=10

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# ALIASES
alias gpa='git remote | xargs -L1 git push --all'
alias md='sudo mount /dev/sdd1 /mnt'
alias umd='sudo umount /mnt'
alias ns='nix-shell'
alias tasktui='taskwarrior-tui'
alias ls='ls -l --color=auto'
alias ll='ls -l --color=auto'
alias li='ls -1sh --color=auto'
alias la='ls -a --color=auto'
alias cp='cp -iv'
alias du="du -h"
alias cc='calcurse'
alias nb='newsboat'
alias v='nvim'
alias makepkg='makepkg -si'
alias f='vifm .'
alias ka='killall'
alias ..='cd ..'
alias yt='yt-dlp $argv'
alias yta='yt-dlp --add-metadata -i -x --audio-format mp3'
alias c="bat"
alias em="emacsclient -nw -c -a 'emacs'"
alias rm="rm -i"
alias mv="mv -i"
alias lc="locate"
alias tarx="tar -xvf"
alias ps="procs"
alias xmd="nvim ~/.xmonad/xmonad.hs"
alias zshrc="nvim ~/.zshrc"
alias rss="nvim ~/.newsboat/urls"
alias m="mbsync -a ; neomutt"
alias nf="neofetch --gtk3 off --gtk2 off"
alias xmdr="xmonad --recompile"
alias tq="torque"
alias g="git"
alias xmb="nvim ~/.config/xmobar/xmobarrc"
alias site="cabal new-run site"
alias rsc="rsync --checksum"
alias rsync="rsync -v"
alias rsu="rsync -vur"
alias doas="doas -- "
# Nix Aliases
alias nix-ls="nix-env --list-generations"
alias revhash="nix-hash --to-base32 --type sha256 "
alias R="R --no-save"
#alias nix-search="nix search nixpkgs"
alias lat="words"

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Load zsh-syntax-highlighting; should be last.
source ~/.config/powerlevel10k/powerlevel10k.zsh-theme
source $HOME/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# [ -f "/home/paulo/.ghcup/env" ] && source "/home/paulo/.ghcup/env" # ghcup-env
if [ -e /home/paulo/.nix-profile/etc/profile.d/nix.sh ]; then . /home/paulo/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
