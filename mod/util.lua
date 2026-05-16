local function isEven(num)
    if (num % 2 == 0) then
        return true
    else
        return false
    end
end

local function notify(title, msg)
    hl.exec_cmd("notify-send -t 3000 \"" .. title .. "\" \"" .. msg .. "\"")
end

return {
    isEven = isEven,
    notify = notify
}
