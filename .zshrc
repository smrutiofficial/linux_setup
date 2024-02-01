if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=( 
    # other plugins...
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#alias code="flatpak run com.visualstudio.code"
alias ll="ls -a"
alias mk="mkdir"
alias sinstall="sudo apt install"
alias sremove="sudo apt remove"
alias alupdate="sudo apt update && sudo apt upgrade"

alias convert="bash ~/dev/bashscript/file_conversion/convert.sh"
alias org="bash ~/dev/bashscript/file_organizer/org.sh"
alias gitpush="bash ~/gitpush.sh"
alias gitset="bash ~/dev/bashscript/git_setup/gitset.sh"
alias alclean="sudo apt autoclean && sudo apt autoremove"
alias cl="clear"
# flatpak
alias flapp="flatpak list --app --columns=name,application"
alias flrm="flatpak remove"
alias flcl="flatpak uninstall --unused"

alias startemu="cd Android/Sdk/emulator && ./emulator -avd Pixel_3a_API_33_x86_64"

export PATH="$PATH:/home/smruti/flutter-dev/flutter/bin"

tmux source-file ~/.tmux.conf
#tmux new-session -s smruti tmux at -t smruti
# Set GTK theme
export GTK_THEME=Everforest-Dark-BL-MOD
clear
