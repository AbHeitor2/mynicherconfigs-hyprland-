#!/usr/bin/env python3

import os
import time
import subprocess

config = os.path.expanduser("~/.config/waybar/style.css")

last_mtime = os.path.getmtime(config)

while True:
    mtime = os.path.getmtime(config)

    if mtime != last_mtime:
        last_mtime = mtime

        # Equivalent to: cat ~/.config/waybar/config
        subprocess.run(["cat", config])

        # Reload Waybar
        subprocess.run(["pkill", "-SIGUSR2", "waybar"])

    time.sleep(0.2)