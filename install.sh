#!/bin/bash
install Dynamic-Panel-Transparency $HOME/.local/bin/Dynamic-Panel-Transparency
grep -qxF 'PATH="$HOME/.local/bin:${PATH}"' $HOME/.bashrc || echo 'PATH="$HOME/.local/bin:${PATH}"' >> $HOME/.bashrc
grep -qxF 'export PATH' $HOME/.bashrc || echo 'export PATH' >> $HOME/.bashrc
source ~/.bashrc
touch dynamic-panel-transparency.desktop
echo "[Desktop Entry]
Type=Application
Exec=$HOME/.local/bin/Dynamic-Panel-Transparency
Hidden=false
X-MATE-Autostart-enabled=true
Name[en_US]=Dynamic Panel Transparecy
Name=
Comment[en_US]=A script that adds dynamic transparency to mate panel
Comment=" > dynamic-panel-transparency.desktop
install dynamic-panel-transparency.desktop $HOME/.config/autostart/dynamic-panel-transparency.desktop
rm -f dynamic-panel-transparency.desktop

