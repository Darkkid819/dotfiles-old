export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus

export PATH=$PATH:/home/jordan/Tools/bin/:/usr/local/bin
/* export TERMINAL=urxvt */
export TERMINAL=kitty

# For nvidia
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
xrandr --dpi 96

session=${1:-i3}

case $session in
	i3		) exec compton &
        exec i3
	;;
esac
