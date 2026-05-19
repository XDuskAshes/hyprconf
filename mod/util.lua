local function isEven(num)
    return num % 2 == 0
end

local function notify(title, msg)
    hl.exec_cmd("notify-send -t 3000 \"" .. title .. "\" \"" .. msg .. "\"")
end

return {
    isEven = isEven,
    notify = notify
}
