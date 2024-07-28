# NOTE: Not completed. Still some stuff to fix but it works right now for the original purpose of the script
# Variables
monitor_file="/home/$USER/.config/hypr/monitors.conf"
test_file="/home/$USER/Projects/shell-scripts/testfile.txt"
banner=$"# +==================================+
# |░█▄░▄█░█▀█░█▀█░▀█▀░▀█▀░█▀█░█▀▄░█▀▀|
# |░█░█░█░█░█░█░█░░█░░░█░░█░█░█▀▄░▀▀█|
# |░▀░ ░▀░▀▀▀░▀░▀░▀▀▀░░▀░░▀▀▀░▀░▀░▀▀▀|
# +==================================+
"
dock () # FIX: Find a different way to renable hdmi upon reinsertion of cable
{
	echo "$banner" > $monitor_file
	echo "monitor=eDP-1,1920x1080@120.0,0x0,1.0" >> $test_file
}

extend144 ()
{
	echo "$banner" > $monitor_file
	echo "monitor=HDMI-A-1,1920x1080@144,0x0,1.0" >> $monitor_file
	echo "monitor=eDP-1,1920x1080@120.0,-1920x0,1.0" >> $monitor_file
}

extendtv ()
{
	echo "$banner" > $monitor_file
	echo "monitor=HDMI-A-1,1920x1080@60,0x0,1.0" >> $monitor_file
	echo "monitor=eDP-1,1920x1080@120.0,-1920x0,1.0" >> $monitor_file
}

second144 () # FIX: Find a way to renable eDPI monitor upon hdmi disconnection
{
	echo "$banner" > $monitor_file
	echo "monitor=HDMI-A-1,1920x1080@144,0x0,1.0" >> $test_file
}

secondtv() # FIX: Find a way to renable eDPI monitor upon hdmi disconnection
{
	echo "$banner" > $monitor_file
	echo "monitor=HDMI-A-1,1920x1080@60,0x0,1.0" >> $test_file
}

echo -e "\e[32m    Display Configuration
    ______________________
    | __________________ |
    | |                | |
    | |1) 󰍹  Extend144| |
    | |                | |
    | |2) 󰍹󰟴 Extend-TV| |
    | |                | |
    | |________________| |
    |____________________|
          _[_______]_
      ___[___________]___
     |         [_____] []|
     |         [_____] []|
     L___________________J
      ___________________

"
read -p "Choose: " choice


case "$choice" in
	1) extend144;;
	2) extendtv;;
	*) echo "Invalid Option!";;
esac 












# Backup
#
# echo -e "    Display Configuration
#     ______________________
#     | __________________ |
#     | |1)    Dock     | |
#     | |2) 󰍹  Extend144| |
#     | |3) 󰍹󰟴 Extend-TV| |
#     | |4) 󰍹   Second144| |
#     | |5) 󰍹󰟴  Second-TV| |
#     | |________________| |
#     |____________________|
#           _[_______]_
#       ___[___________]___
#      |         [_____] []|
#      |         [_____] []|
#      L___________________J
#       ___________________
#
# "
# case "$choice" in
# 	1) dock;;
# 	2) extend144;;
# 	3) extendtv;;
# 	4) second144;;
# 	5) secondtv;;
# 	*) echo "Invalid Option!";;
# esac 
