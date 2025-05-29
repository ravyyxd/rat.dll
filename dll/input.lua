local vim = game:GetService("VirtualInputManager")
local camera = workspace.CurrentCamera

local function validateCoordinates(x, y)
    if not (type(x) == "number" and type(y) == "number") then
        error("coordinates must be numbers", 2)
    end
    return x or 0, y or 0
end

function mouse1click(x, y)
    x, y = validateCoordinates(x, y)
    vim:SendMouseButtonEvent(x, y, 0, true, game, false)
    task.wait(0.05)
    vim:SendMouseButtonEvent(x, y, 0, false, game, false)
end

function mouse2click(x, y)
    x, y = validateCoordinates(x, y)
    vim:SendMouseButtonEvent(x, y, 1, true, game, false)
    task.wait(0.05)
    vim:SendMouseButtonEvent(x, y, 1, false, game, false)
end

function mouse1press(x, y)
    x, y = validateCoordinates(x, y)
    vim:SendMouseButtonEvent(x, y, 0, true, game, false)
end

function mouse1release(x, y)
    x, y = validateCoordinates(x, y)
    vim:SendMouseButtonEvent(x, y, 0, false, game, false)
end

function mouse2press(x, y)
    x, y = validateCoordinates(x, y)
    vim:SendMouseButtonEvent(x, y, 1, true, game, false)
end

function mouse2release(x, y)
    x, y = validateCoordinates(x, y)
    vim:SendMouseButtonEvent(x, y, 1, false, game, false)
end

function mousescroll(x, y, forward)
    x, y = validateCoordinates(x, y)
    if type(forward) ~= "boolean" then
        error("scroll direction must be a boolean", 2)
    end
    vim:SendMouseWheelEvent(x, y, forward, game)
end

function mousemoverel(relx, rely)
    relx, rely = validateCoordinates(relx, rely)
    if relx < -1 or relx > 1 or rely < -1 or rely > 1 then
        error("relative coordinates must be between -1 and 1", 2)
    end
    local viewport = camera.ViewportSize
    local x = viewport.X * (relx + 1) / 2
    local y = viewport.Y * (rely + 1) / 2
    vim:SendMouseMoveEvent(x, y, game)
end

function mousemoveabs(x, y)
    x, y = validateCoordinates(x, y)
    local viewport = camera.ViewportSize
    if x < 0 or x > viewport.X or y < 0 or y > viewport.Y then
        error("absolute coordinates must be within viewport", 2)
    end
    vim:SendMouseMoveEvent(x, y, game)
end

function mousedrag(startX, startY, endX, endY, duration)
    startX, startY = validateCoordinates(startX, startY)
    endX, endY = validateCoordinates(endX, endY)
    duration = duration or 0.5
    
    if duration <= 0 then
        error("duration must be positive", 2)
    end
    
    mouse1press(startX, startY)
    local steps = math.floor(duration / 0.016)
    for i = 1, steps do
        local t = i / steps
        local x = startX + (endX - startX) * t
        local y = startY + (endY - startY) * t
        mousemoveabs(x, y)
        task.wait(0.016)
    end
    mouse1release(endX, endY)
end

function keypress(keyCode, duration)
    if not vim:IsValidKeyCode(keyCode) then
        error("invalid key code", 2)
    end
    duration = duration or 0.05
    vim:SendKeyEvent(true, keyCode, false, game)
    task.wait(duration)
    vim:SendKeyEvent(false, keyCode, false, game)
end

function keyhold(keyCode)
    if not vim:IsValidKeyCode(keyCode) then
        error("invalid key code", 2)
    end
    vim:SendKeyEvent(true, keyCode, false, game)
end

function keyrelease(keyCode)
    if not vim:IsValidKeyCode(keyCode) then
        error("invalid key code", 2)
    end
    vim:SendKeyEvent(false, keyCode, false, game)
end

function typestring(str, delay)
    delay = delay or 0.1
    if type(str) ~= "string" then
        error("input must be a string", 2)
    end
    for char in str:gmatch(".") do
        local keyCode = vim:GetKeyCodeForChar(char)
        if keyCode then
            keypress(keyCode, 0.05)
            task.wait(delay)
        end
    end
end


--uh soo yeah
--we just can return true because it: test("mouse2click", {})
--but i think if i'm make for it just returns true it FAKE
