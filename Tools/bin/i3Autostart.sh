#!/bin/sh
#----------------------------------------#
# Auto Start App on specific workspace.  #
#----------------------------------------#

# setup splashscreen
xinput disable 11
xinput disable 12
xinput disable 13
i3lock -i ~/Pictures/Wallpapers/sephiroth1-load.png &
sleep 0.5;

# Setup workspace 2
i3-msg "workspace 2; exec discord"
sleep 5;

# Setup Workspace 3
i3-msg "workspace 3; exec firefox"
sleep 0.3;

# Setup Workspace 4
i3-msg "workspace 4; exec kitty -- newsboat"
sleep 0.3;
i3-msg "workspace 4; floating disable"
i3-msg "workspace 4; split h"
i3-msg "workspace 4; exec kitty -- neomutt"
sleep 0.3;
i3-msg "workspace 4; floating disable"
i3-msg "workspace 4; resize grow left 6 px or 6 ppt"
i3-msg "workspace 4; resize grow left 6 px or 6 ppt"

# Setup Workspace 5
i3-msg "workspace 5; exec kitty -- alsamixer -g"
sleep 0.3;
i3-msg "workspace 5; floating disable"
i3-msg "workspace 5; split h"
i3-msg "workspace 5; exec kitty -- yt"
sleep 0.3;
i3-msg "workspace 5; floating disable"
i3-msg "workspace 5; split h"
for i in {1..6}
do
    i3-msg "resize grow left 6 px or 6 ppt"
done
sleep 0.3;

# Setup Workspace 6
i3-msg "workspace 6; exec kitty -- ranger"
sleep 0.3;
i3-msg "workspace 6; floating disable"
i3-msg "workspace 6; split h"

# Setup Workspace 7
i3-msg "workspace 7; exec lutris"
sleep 0.3;
i3-msg "workspace 7; floating disable"
i3-msg "workspace 7; split h"

# Setup Workspace 8
i3-msg "workspace 8; exec kitty -- alsamixer -g"
sleep 0.3;
i3-msg "workspace 8; floating disable"
i3-msg "workspace 8; split h"
i3-msg "workspace 8; exec kitty -- cmus"
sleep 0.3;
i3-msg "workspace 8; floating disable"
i3-msg "workspace 8; split v"
i3-msg "workspace 8; exec kitty -- cava"
sleep 0.3;
i3-msg "workspace 8; floating disable"
for i in {1..6}
do
    i3-msg "resize grow left 6 px or 6 ppt"
    i3-msg "resize shrink up 6 px or 6 ppt"
done
i3-msg "resize grow left 6 px or 6 ppt"
sleep 0.3;

# Setup Workspace 9
i3-msg "workspace 9; exec kitty"
sleep 0.3;

# Setup Workspace 10
i3-msg "workspace 10; exec run_autoupdate.sh"
sleep 0.3;
i3-msg "workspace 10; floating disable"
i3-msg "workspace 10; split h"
i3-msg "workspace 10; exec kitty -- gotop"
sleep 0.3;
i3-msg "workspace 10; floating disable"
for i in {1..5}
do
	i3-msg "resize grow left 6 px or 6 ppt"
done
sleep 0.3;
i3-msg "workspace 10; split v"
i3-msg "workspace 10; exec kitty -- date.sh"
sleep 0.3;
i3-msg "workspace 10; move down"
i3-msg "workspace 10; floating disable"
i3-msg "workspace 10; split h"
i3-msg "workspace 10; exec kitty -- iftop"
sleep 0.3;
for i in {1..5}
do
	i3-msg "resize grow left 6 px or 6 ppt"
done
sleep 0.3;
for i in {1..3}
do
	i3-msg "resize shrink up 6 px or 6 ppt"
done
sleep 0.3;
i3-msg "workspace 10; floating disable"

# Back to Workspace 1
i3-msg "workspace 1"


xinput enable 11
xinput enable 12
xinput enable 13
killall i3lock

#----------------------------------------#
# Launch general app ....                #
#----------------------------------------#

# Lock screen update picture cache
betterlockscreen -u ~/Pictures/Wallpapers/sephiroth1.png -l dimblur

# Launch Bar
exec polybar mystatus -q &

# Launch Conky
exec conky -d &

# Launch nm-applet
exec nm-applet &

# Set wallpaper
exec feh --bg-scale ~/Pictures/Wallpapers/sephiroth1.png


