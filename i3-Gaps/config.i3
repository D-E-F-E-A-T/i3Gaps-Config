# Uniminin's Custom i3-Gaps Config.
# i3 config file (v4)

# i3 Stuff
set $mod Mod4

# Auto Start
exec --no-startup-id picom -b

# Dual Monitor
exec_always xrandr --output DP1 --mode 1366x768 --pos 0x312 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 1366x0 --rotate normal --output HDMI2 --off --output VIRTUAL1 --off

# Screenshot
bindsym $mod+space exec flameshot gui

# System Font
font pango: Monospace Display 10

# focus_follows_mouse no

# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# Terminal -> KDE/Konsole
bindsym $mod+Return exec konsole

# Lock
bindsym $mod+shift+p exec i3lock-fancy -t "Enter Password To Unlock!"

# kill focused window
bindsym $mod+q kill

# Dmenu
bindsym $mod+d exec dmenu_run -nb black -sb pink -nf pink -sf black -fn 1

# Rofi
bindsym $mod+s exec rofi -show drun -theme material


# Window Focus
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# Window Change Position
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# Horizontal Orientation Split
bindsym $mod+h split h

# Vertical Orientation Split
bindsym $mod+v split v

# Focused fullscreen
bindsym $mod+f fullscreen toggle

# change container layout (stacked, tabbed, toggle split)
bindsym $mod+shift+x layout stacking
bindsym $mod+shift+z layout tabbed
bindsym $mod+shift+v layout stacking

# toggle tiling / floating
# bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
# bindsym $mod+space focus mode_toggle


# Custom WorkSpaces with Awesome-Fonts
set $ws1 "1: Research "
set $ws2 "2: Miscellaneous "
set $ws3 "3: Desktop "
set $ws4 "4: Desktop "
set $ws5 "5: Desktop "
set $ws6 "6: Desktop "
set $ws7 "7: Desktop "
set $ws8 "8: Desktop "
set $ws9 "9: Desktop "
set $ws10 "10: Desktop "

# Switching To WorkSpaces
bindsym $mod+1 workspace number $ws1
bindsym $mod+2 workspace number $ws2
bindsym $mod+3 workspace number $ws3
bindsym $mod+4 workspace number $ws4
bindsym $mod+5 workspace number $ws5
bindsym $mod+6 workspace number $ws6
bindsym $mod+7 workspace number $ws7
bindsym $mod+8 workspace number $ws8
bindsym $mod+9 workspace number $ws9
bindsym $mod+0 workspace number $ws10

# move focused container to workspace
bindsym $mod+Shift+1 move container to workspace number $ws1
bindsym $mod+Shift+2 move container to workspace number $ws2
bindsym $mod+Shift+3 move container to workspace number $ws3
bindsym $mod+Shift+4 move container to workspace number $ws4
bindsym $mod+Shift+5 move container to workspace number $ws5
bindsym $mod+Shift+6 move container to workspace number $ws6
bindsym $mod+Shift+7 move container to workspace number $ws7
bindsym $mod+Shift+8 move container to workspace number $ws8
bindsym $mod+Shift+9 move container to workspace number $ws9
bindsym $mod+Shift+0 move container to workspace number $ws10

# Reload Config
bindsym $mod+Shift+c reload

# Restart i3-Gaps
bindsym $mod+Shift+r restart

# Exit i3-Gaps (logs out of X session)
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3-Gaps? This will end your X session.' -B 'Yes, exit i3' 'i3-msg exit'"

# Resize Mode
bindsym $mod+r mode "resize"

# resize window (you can also use the mouse for that)
mode "resize" {
        # Bindings
        bindsym Left resize shrink width 10 px or 10 ppt
        bindsym Down resize grow height 10 px or 10 ppt
        bindsym Up resize shrink height 10 px or 10 ppt
        bindsym Right resize grow width 10 px or 10 ppt

        # Back To Normal
        bindsym Return mode "default"
        bindsym Escape mode "default"
        bindsym $mod+r mode "default"
}


# i3-Gaps Bar
bar {
        status_command /home/uniminin/.config/i3/bar.sh
        position bottom
        font pango:Fira Mono 10
        colors {
		background $bg-color
	    	separator #757575
		#                  border             background         text
		focused_workspace  $bg-color          $bg-color          $text-color
		inactive_workspace $inactive-bg-color $inactive-bg-color $inactive-text-color
		urgent_workspace   $urgent-bg-color   $urgent-bg-color   $text-color
	}
}

# Load At Startup (Always)
# exec_always firefox


# Wallapper
# Monitor 1 and Monitor 2 Respectively!
exec_always feh --bg-scale /home/uniminin/Wallpapers/flower.jpg --bg-scale /home/uniminin/Wallpapers/landscape-nature.jpg


# RICING #
set $bg-color 	         #2f343f
set $inactive-bg-color   #2f343f
set $text-color          #f3f4f5
set $inactive-text-color #676E7D
set $urgent-bg-color     #E53935

# window colors
#                       border              background         text                 indicator
client.focused          $bg-color           $bg-color          $text-color          #00ff00
client.unfocused        $inactive-bg-color $inactive-bg-color $inactive-text-color  #00ff00
client.focused_inactive $inactive-bg-color $inactive-bg-color $inactive-text-color  #00ff00
client.urgent           $urgent-bg-color    $urgent-bg-color   $text-color          #00ff00

# Hiding Side Borders
hide_edge_borders both
