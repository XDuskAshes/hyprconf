local programs = require("mod.programs")
local util = require("mod.util")

hl.on("hyprland.start", function()
    for _, prog in pairs(programs.onStart) do
        print("Running " .. prog .. " on startup.")
        hl.exec_cmd(prog)
    end
end)

hl.on("config.reloaded", function()
    util.notify("Hyprland", "Config has been reloaded.")
    hl.exec_cmd("pkill " .. programs.uishell .. " && " .. programs.quickshell)
    hl.exec_cmd("pkill " .. programs.wallpaper_manager .. " && " .. programs.wallpaper_manager)
    hl.exec_cmd("pkill " .. programs.onStart.notif_daemon .. " && " .. programs.onStart.notif_daemon)
end)

hl.on("hyprland.shutdown", function()
    for _, prog in pairs(programs.onStart) do
        local n = prog:match("^[^ ]+")
        hl.exec_cmd("pkill " .. n)
        print("Killing " .. n)
    end
end)
