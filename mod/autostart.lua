local programs = require("mod.programs")
local util = require("mod.util")

hl.on("hyprland.start", function()
    hl.exec_cmd("elephant")
    hl.exec_cmd("walker --gapplication-service")
    for _, prog in pairs(programs.onStart) do
        print("Running " .. prog .. " on startup.")
        hl.exec_cmd(prog)
    end
end)

hl.on("config.reloaded", function()
    util.notify("Hyprland", "Config has been reloaded.")
    hl.exec_cmd("pkill " .. programs.uishell .. " && " .. programs.quickshell)
    hl.exec_cmd("pkill " .. programs.wallpaper_manager .. " && " .. programs.wallpaper_manager)
end)

hl.on("hyprland.shutdown", function()
    hl.exec_cmd("pkill elephant && pkill walker")
end)
