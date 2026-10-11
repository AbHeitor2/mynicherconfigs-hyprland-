-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
local terminal = "kitty"
local wallpaper = "awww-daemon"

 hl.on("hyprland.start", function () 
   hl.exec_cmd(wallpaper)
   hl.exec_cmd('waybar & disown')
   hl.exec_cmd('hyprpm enable dynamic-cursors')
   
 end)

