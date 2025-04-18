local fakeIdentity = 6 

local function getidentity()
    return fakeIdentity
end

getgenv().getidentity = getidentity
getgenv().Level = getidentity

local blockedurls = {
    'https://v4.ident.me',

    'http://ip-api.com/json',

    'https://ipinfo.io',

    'http://checkip.amazonaws.com'
}

local oldRequest = getgenv().request or function(options) return nil end

getgenv().request = function(options)
    if options.Url then
        for _, blocked in ipairs(blockedurls) do
            if string.find(options.Url, blocked) then
                warn('[ratAPI] Blocked IP Grabber request to URL:', options.Url)
                return { Body = 'Protected' }
            end
        end
    end

    return oldRequest(options)
end

local originalRequest = getgenv().request or function(options) return nil end

getgenv().request = function(options)
    if options.Headers then
        options.Headers["User-Agent"] = "ratAPI/RobloxApp/1.4"
    else
        options.Headers = {["User-Agent"] = "ratAPI/RobloxApp/1.4"}
    end

    return originalRequest(options)
end


local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")
local LogService = game:GetService("LogService")

-- Function to log messages to the console
local function logMessage(message)
    print("[ratAPI Log] "..tostring(message))
end

local function monitorPlayerActions()
    logMessage("Starting action monitoring for "..LocalPlayer.Name)

    LocalPlayer: GetMouse().Button1Down:Connect(function()
 
         logMessage("Mouse clicked at position: "..tostring(LocalPlayer: GetMouse().X)..", "..tostring(LocalPlayer: GetMouse().Y))
 
     end)

    local lastPosition = LocalPlayer.Character and LocalPlayer.Character.HumanoidRootPart.Position
    RunService.Heartbeat:Connect(function()
        if LocalPlayer.Character and LocalPlayer.Character.HumanoidRootPart then
            local currentPosition = LocalPlayer.Character.HumanoidRootPart.Position
            if lastPosition and(currentPosition - lastPosition).Magnitude > 0.1 then
                logMessage("Player moved to position: "..tostring(currentPosition))
                lastPosition = currentPosition
            end
        end
    end)
end

local function monitorKickAttempts()
    logMessage("Starting kick attempt monitoring")

    LogService.MessageOut:Connect(function(message, messageType)
        if messageType == Enum.MessageType.MessageError then
            logMessage("Error detected (possible kick attempt): "..message)
            -- Notify player
            game: GetService("StarterGui"):SetCore("SendNotification", {
                    Title = "Warning",
                Text = "Possible kick attempt detected: "..message,
                Duration = 5
             })
        end
    end)

    game: BindToClose(function()
 
         logMessage("Game is closing, possible kick or disconnect")
 
     end)

    RunService.Heartbeat:Connect(function()
        if LocalPlayer.Character and LocalPlayer.Character.Humanoid then
            local humanoid = LocalPlayer.Character.Humanoid
            if humanoid.WalkSpeed > 100 or humanoid.JumpPower > 100 then
                logMessage("Suspicious humanoid stats detected: WalkSpeed="..humanoid.WalkSpeed..", JumpPower="..humanoid.JumpPower)
            end
        end
    end)
end

local function init()
    logMessage("ratAPI Script initialized")


    if not LocalPlayer.Character then
        LocalPlayer.CharacterAdded:Wait()
    end

    monitorPlayerActions()
    monitorKickAttempts()

    local success, err = pcall(function()

    end)
    if not success then
        logMessage("Error in script: "..tostring(err))
    end
end

init()
