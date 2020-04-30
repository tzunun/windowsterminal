# windowsterminal
Changing the windows terminal colorscheme from the WSL command line.


The only changes I have made is renamed the Solarized Dark theme to Solarized-Dark
and Solarized Light to Solarized-Light, to do so just open the setting on the windowsTerminal this should open the json file 
where you can make the suggested changes, the color themes are defined closer to the bottom of the json file.  If you just did a simple install the path should be the same(maybe) just change the user name to your username in the json file's path.  

Add the code on the bashrc file to your .bashrc file 
the command light will change the theme to Solarized Light
dark will do the same for Solarized Dark


## Additional info
It seems that profiles.json was renamed settings.json

This may be different and depends on your windows version?  I don't know.  The easiest way to check what it's called on your version
is to open WindowsTerminal and click on the down arrow icon next to the + sign in the top section of WindowsTerminal and click on settings, this action will open the file that actually controls the look and feel of WindowsTerminal
