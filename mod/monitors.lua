local util = require("mod.util")

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

-- All my evens on the right, all the odds in front
for i = 1, 10 do
    local isThisEven = util.isEven(i)
    if isThisEven then
        hl.workspace_rule({ workspace = tostring(i), monitor = "DP-1" })
        print("Assigned workspace " .. tostring(i) .. " to second monitor.")
    else
        hl.workspace_rule({ workspace = tostring(i), monitor = "HDMI-A-1" })
        print("Assigned workspace " .. tostring(i) .. " to main monitor.")
    end
end
