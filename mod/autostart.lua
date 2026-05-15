local programs = require("mod.programs")

hl.on("hyprland.start", function()
    hl.exec_cmd("elephant")
    hl.exec_cmd("walker --gapplication-service")
    hl.exec_cmd(programs.uishell)
    hl.exec_cmd(programs.notif_daemon)
    hl.exec_cmd(programs.wallpaper_manager)
end)

hl.on("config.reloaded", function()
    hl.exec_cmd("notify-send -t 3000 \"Hyprland\" \"Config has been reloaded.\"")
    hl.exec_cmd("pkill " .. programs.uishell .. " && " .. programs.quickshell)
    hl.exec_cmd("pkill " .. programs.wallpaper_manager .. " && " .. programs.wallpaper_manager)
end)

hl.on("hyprland.shutdown", function()
    hl.exec_cmd("pkill elephant && pkill walker")
end)
