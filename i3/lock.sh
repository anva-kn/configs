#!/bin/bash

killall -SIGUSR1 dunst # pause dunst
#i3lock -i '/home/denys/.i3/lock.png' -t
i3lock -i './transparent-lock.png' -t
killall -SIGUSR2 dunst # resume
