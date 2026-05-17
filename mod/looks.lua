local colors = require("mod.mocha")
require("mod.animation")

hl.config({
    general = {
        gaps_in          = 5,
        gaps_out         = 10,
        border_size      = 2,
        col              = {
            active_border   = { colors = { colors.lavender, colors.overlay0 }, angle = 45 },
            inactive_border = colors.surface0,
        },
        resize_on_border = false,
        allow_tearing    = false,
        layout           = "master",
    },

    decoration = {
        rounding       = 10,
        rounding_power = 2,
    },

    animations = {
        enabled = true,
    },
})

-- Master layout

hl.config({
    master = {
        new_status = "slave",
        orientation = "left",
        mfact = 0.60
    },
})
