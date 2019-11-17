# Dynamic Panel Transparency - MATE
This script provides the dynamic panel transparency feature to the MATE desktop enviorement and dynamically loads the panel color from the current gtk theme.

## Current caveats
- Welp, at least it kinda does, as of now it reads the current theme name with ```gsettings get org.mate.Marco.general theme|cut -f2 -d"'"``` so if you use a window manager other than Marco it may not properly read the theme name. 

- Notice the script reads the hex value of the ```bg_color``` color definition from either ```gtk-main.css``` or ```gtk.css``` be the theme located in ```/usr/share/themes``` or ```$HOME/.themes``` and then converts it to RGB decimal values so if the value for ```bg_color``` is given in rgb() or points to another color definition the script won't be able to get it. If the ```bg_color``` entry was located in a file other than ```gtk-main.css``` or ```gtk.css``` the script won't be able to get it either. 

- It must be noticed that since the script reads the ```bg_color``` definition the panel color WILL match the window bakground color not the window border color, this means light themes will have light panel colors whereas dark themes will have dark panel colors.
However this can be easily fixed by just writing the proper RGB values to the file thm-crr.txt that will be created by the script in ```"$HOME"/.local/bin/thm-crr.txt```.

- Although i have checked the script with shellcheck and it should run in any POSIX compliant shell the specifics of some commands may still fall within the GNU implementation and as such could miss behave in BSD systems.

- This script is a modification of the one that can be found in the ubunutu-mate community forums <a href="https://ubuntu-mate.community/t/change-the-top-panel-opacity-when-a-window-is-maximized/18049">Here</a>


# Install

```
git clone https://github.com/eylles/Mate-Dynamic-Panel-Transparency
cd Mate-Dynamic-Panel-Transparency
chmod +x ./install.sh
./install.sh
```
The install script will locate the Dynamic Panel Transparency script in the $HOME/.local/bin/ directory and adds it to PATH in .bashrc just in case it ain't already added to PATH in your system, the script also creates a .desktop file in $HOME/.config/autostart so the script will automatically execute the next time you start session. If you have a different dedicated scripts directory already added to PATH just copy the Dynamic Panel Transparency script there and create the necesary auto start file

