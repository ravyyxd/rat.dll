function mouse1click(x, y)
    local vim = game:GetService('VirtualInputManager')
    x = x or 0
    y = y or 0
    vim:SendMouseButtonEvent(x, y, 0, true, game, false)
    task.wait()
    vim:SendMouseButtonEvent(x, y, 0, false, game, false)
end

function mouse2click(x, y)
    local vim = game:GetService('VirtualInputManager')
    x = x or 0
    y = y or 0
    vim:SendMouseButtonEvent(x, y, 1, true, game, false)
    task.wait()
    vim:SendMouseButtonEvent(x, y, 1, false, game, false)
end

function mouse1press(x, y)
    local vim = game:GetService('VirtualInputManager')
    x = x or 0
    y = y or 0
    vim:SendMouseButtonEvent(x, y, 0, true, game, false)
end

function mouse1release(x, y)
    local vim = game:GetService('VirtualInputManager')
    x = x or 0
    y = y or 0
    vim:SendMouseButtonEvent(x, y, 0, false, game, false)
end

function mouse2press(x, y)
    local vim = game:GetService('VirtualInputManager')
    x = x or 0
    y = y or 0
    vim:SendMouseButtonEvent(x, y, 1, true, game, false)
end

function mouse2release(x, y)
    local vim = game:GetService('VirtualInputManager')
    x = x or 0
    y = y or 0
    vim:SendMouseButtonEvent(x, y, 1, false, game, false)
end

function mousescroll(x, y, a)
    local vim = game:GetService('VirtualInputManager')
    x = x or 0
    y = y or 0
    a = a and true or false
    vim:SendMouseWheelEvent(x, y, a, game)
end

function mousemoverel(relx, rely)
    local vim = game:GetService('VirtualInputManager')
    local Pos = workspace.CurrentCamera.ViewportSize
    relx = relx or 0
    rely = rely or 0
    local x = Pos.X * relx
    local y = Pos.Y * rely
    vim:SendMouseMoveEvent(x, y, game)
end

function mousemoveabs(x, y)
    local vim = game:GetService('VirtualInputManager')
    x = x or 0
    y = y or 0
    vim:SendMouseMoveEvent(x, y, game)
end
