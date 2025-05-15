local vim = game:GetService("VirtualInputManager")
local camera = workspace.CurrentCamera
local runService = game:GetService("RunService")

function getfpscap()
    local total = 0
    local samples = 5
    for i = 1, samples do
        local delta = runService.RenderStepped:Wait()
        total = total + delta
    end
    return math.floor(1 / (total / samples) + 0.5)
end

function setfpscap(fps)
    if type(fps) ~= "number" or fps < 1 or fps > 240 then
        error("fps must be a number between 1 and 240", 2)
    end
    local frameTime = 1 / fps
    local lastFrame = tick()
    local connection
    connection = runService.Heartbeat:Connect(function()
        local now = tick()
        local elapsed = now - lastFrame
        if elapsed < frameTime then
            task.wait(frameTime - elapsed)
        end
        lastFrame = tick()
    end)
    return function()
        if connection then
            connection:Disconnect()
            connection = nil
        end
    end
end
