XINITRC
#!/bin/bash
touch .Xauthority 
touch .Xdefaults
xrdb -merge .Xdefaults &

export OOO_FORCE_DESKTOP=gnome
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

exec startxfce4
EOF