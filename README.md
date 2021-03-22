
    xmodmap -e "clear Lock"

    xmodmap -e "keycode 66 = Return"



    # xmodmap -e "keycode 66 = Escape"

    # xrandr --output DP-1 --scale 2x2



fix linux and windows using different clocks

timedatectl set-local-rtc 1 --adjust-system-clock

Linux will no longer apply timezone adjustments to the clock on your motherboard. As a result, the clocks on your dual boot Windows 10 and Linux set up will be in perfect sync. Before you reboot though you should probably make sure it has worked. Just Enter the command below in the Terminal.

timedatectl

https://mashtips.com/fix-linux-windows-dual-boot-clock-different-time/#:~:text=Method%202%3A%20Make%20Windows%20use%20UTC%20Time&text=For%20this%2C%20go%20to%20Settings,toggle%20under%20Set%20time%20automatically.
