local colors = require("mod.mocha")

return {
    fileManager = "dolphin",
    menu        = "walker",
    terminal    = "foot",
    browser     = "firefox",
    lockscreen  = "swaylock --color 322C2E",

    -- TODO: Make a function which each of these can call as
    -- their return values (like 'function() screenshot(foo) end')
    screenshot  = {
        monitor = "hyprshot -m output --raw | satty --filename -",
        window = "hyprshot -m window --raw | satty --filename -",
        selection = "hyprshot -m region --raw | satty --filename -"
    },
    onStart     = { -- Stuff that needs to get running immediately
        uishell             = "quickshell",
        notif_daemon        = "mako --default-timeout 3500 --background-color \"" ..
            colors.surface2 .. "\" --border-color \"" .. colors.lavender .. "\"",
        wallpaper_manager   = "hyprpaper",
        audioeffectsmanager = "easyeffects -w",
        passwordmanager     = "keepassxc"
    }
}
