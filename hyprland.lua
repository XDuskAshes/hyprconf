require("mod.env")
require("mod.monitors")
require("mod.autostart")
require("mod.binds")
require("mod.looks")
require("mod.windowrules")

hl.config({
    misc = {
        force_default_wallpaper = 0,    -- Set to 0 or 1 to disable the anime mascot wallpapers
        disable_hyprland_logo   = true, -- If true disables the random hyprland logo / anime girl background. :(
    },
})

hl.config({
    input = {
        kb_layout    = "us",
        kb_variant   = "colemak",
        follow_mouse = 1,
    },
})
