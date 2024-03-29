#!/usr/bin/env bash
dir="$HOME/.config/rofi/applets/android"
rofi_command="rofi -theme $dir/main.rasi"

# Error msg
msg() {
    rofi -theme "$dir/message.rasi" -e "Please install 'scrot' first."
}

# Options
screen=""
area=""
window=""

# Variable passed to rofi
options="$screen\n$area\n$window"

chosen="$(echo -e "$options" | $rofi_command -p '' -dmenu -selected-row 0)"
case $chosen in
    $screen)
		if [[ -f /usr/bin/scrot ]]; then
			#sleep 1; scrot 'Screenshot_%Y-%m-%d-%S_$wx$h.png' -e 'mv $f $$(xdg-user-dir PICTURES) ; viewnior $$(xdg-user-dir PICTURES)/$f'
            sleep 1; scrot '/tmp/%F_%T_$wx$h.png' -e 'xclip -selection clipboard -targe image/png -i $f'; 
		else
			msg
		fi
        ;;
    $area)
		if [[ -f /usr/bin/scrot ]]; then
			#scrot -s 'Screenshot_%Y-%m-%d-%S_$wx$h.png' -e 'mv $f $$(xdg-user-dir PICTURES) ; viewnior $$(xdg-user-dir PICTURES)/$f'
            scrot -s '/tmp/%F_%T_$wx$h.png' -e 'xclip -selection clipboard -targe image/png -i $f';
		else
			msg
		fi
        ;;
    $window)
		if [[ -f /usr/bin/scrot ]]; then
			#sleep 1; scrot -u 'Screenshot_%Y-%m-%d-%S_$wx$h.png' -e 'mv $f $$(xdg-user-dir PICTURES) ; viewnior $$(xdg-user-dir PICTURES)/$f'
            sleep 1; scrot -u '/tmp/%F_%T_$wx$h.png' -e 'xclip -selection clipboard -targe image/png -i $f'; 
		else
			msg
		fi
        ;;
esac

