
#Create light command to change the theme color to Solarized Light
alias light='sed -i '"'"'s/"colorScheme" : "Solarized-Dark",/"colorScheme" : "Solarized-Light",/g'"'"' /mnt/c/Users/Antonio/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/profiles.json' 

#Create dark command to change the theme color to Solarized Dark
alias dark='sed -i '"'"'s/"colorScheme" : "Solarized-Light",/"colorScheme" : "Solarized-Dark",/g'"'"' /mnt/c/Users/Antonio/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/profiles.json'
   
#F10
bind '"\e[21~":"light\n"' 
#F11
bind '"\e[23~":"dark\n"'  
