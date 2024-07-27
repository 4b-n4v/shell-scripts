
# Variables
monitor_file="/home/$USER/.config/hypr/monitors.conf"
test_file="/home/$USER/Projects/shell-scripts/testfile.txt"
banner=$"# +==================================+
# |░█▄░▄█░█▀█░█▀█░▀█▀░▀█▀░█▀█░█▀▄░█▀▀|
# |░█░█░█░█░█░█░█░░█░░░█░░█░█░█▀▄░▀▀█|
# |░▀░ ░▀░▀▀▀░▀░▀░▀▀▀░░▀░░▀▀▀░▀░▀░▀▀▀|
# +==================================+
"
dock ()
{
	echo "$banner" > $test_file
	echo "monitor=eDP-1,1920x1080@120.0,0x0,1.0" >> $test_file
}

extend144 ()
{
	echo "$banner" > $test_file
	echo "monitor=HDMI-A-1,1920x1080@144,0x0,1.0" >> $test_file
	echo "monitor=eDP-1,1920x1080@120.0,-1920x0,1.0" >> $test_file
}

extendtv ()
{
	echo "$banner" > $test_file
	echo "monitor=HDMI-A-1,1920x1080@60,0x0,1.0" >> $test_file
	echo "monitor=eDP-1,1920x1080@120.0,-1920x0,1.0" >> $test_file
}

second144 ()
{
	echo "$banner" > $test_file
	echo "monitor=HDMI-A-1,1920x1080@144,0x0,1.0" >> $test_file
}

secondtv()
{
	echo "$banner" > $test_file
	echo "monitor=HDMI-A-1,1920x1080@60,0x0,1.0" >> $test_file
}

echo "Display Configuration"
echo "Choose your options"
echo "1.)    Dock"
echo "2.) 󰍹  Extend144"
echo "3.) 󰍹󰟴 Extend-TV"
echo "4.) 󰍹   Second144"
echo "5.) 󰍹󰟴  Second-TV"
read -p "Choose: " choice


case "$choice" in
	1) dock;;
	2) extend144;;
	3) extendtv;;
	4) second144;;
	5) secondtv;;
	*) echo "Invalid Option!";;
esac 
