  ###############################
 # Modified by Antonio for WSL #
###############################

# Note: Bash on Windows does not currently apply umask properly.
# The next three lines were borrowed from https://www.turek.dev/post/fix-wsl-file-permissions/
if [[ "$(umask)" = "0000" ]]; then
	  umask 0022
fi

##### PowerlineGO ######
function _update_ps1() {
    PS1="$(/home/antonio/go/bin/powerline-go -error $? -condensed -colorize-hostname  -cwd-max-depth 2 -cwd-mode dironly)"
}

if [ "$TERM" != "linux" ] && [ -f "/home/antonio/go/bin/powerline-go" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

# Neovim alias, vi, vim
alias vi='nvim'
alias vim='nvim'

# Conda environmnents alias
alias iono='conda activate iono'
alias py37='conda activate py37'
alias intel='conda activate intel'

# vim-like movement in bash
set -o vi
# exit insert mode by typing 'jk' or "remap" esc to 'jk'
bind '"jk":vi-movement-mode'

# Windows Terminal WSL
#Create light command to change the theme color to Solarized Light
alias light='sed -i '"'"'s/"colorScheme": "Solarized-Dark"/"colorScheme": "Solarized-Light"/g'"'"' /mnt/c/Users/Antonio/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json' 

#Create dark command to change the theme color to Solarized Dark
alias dark='sed -i '"'"'s/"colorScheme": "Solarized-Light"/"colorScheme": "Solarized-Dark"/g'"'"' /mnt/c/Users/Antonio/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json'
   
# Alt-l bind the ALT and lowercase L to the command light  
bind '"\el":"light\n"' 

# Alt-d bind the ALT and lowercase D to the command dark  
bind '"\ed":"dark\n"' 
