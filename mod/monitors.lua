-- Main monitor
hl.monitor({
    output   = "HDMI-A-1",
    mode     = "1920x1080@60.00",
    position = "0x0", -- Directly in front of me
    scale    = "1",
})

-- Second monitor
hl.monitor({
    output = "DP-1",
    mode = "1600x900@59.98",
    position = "1920x0", -- To my right on my side table
    scale = "1",
})
