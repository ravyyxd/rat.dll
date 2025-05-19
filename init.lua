--DON'T SKID!
--maded only for zx!

loadstring(game:HttpGet("https://raw.githubusercontent.com/ravyyxd/rat.dll/refs/heads/main/dll/console.lua", true))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ravyyxd/rat.dll/refs/heads/main/dll/input.lua", true))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ravyyxd/rat.dll/refs/heads/main/dll/setup.lua", true))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ravyyxd/rat.dll/refs/heads/main/dll/names.lua", true))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ravyyxd/rat.dll/refs/heads/main/dll/other.lua", true))()

warn('dll loaded!')
warn('zex injected')

-- local Players = game:GetService("Players")
-- local Lighting = game:GetService("Lighting")
-- local LocalPlayer = Players.LocalPlayer

-- local function setNight()
--     Lighting.TimeOfDay = "00:00:00"
--     Lighting.Brightness = 0.2
--     Lighting.Ambient = Color3.fromRGB(20, 20, 40)
--     Lighting.FogEnd = 200
--     Lighting.FogColor = Color3.fromRGB(10, 10, 20)
-- end

-- local function createLantern()
--     local lantern = Instance.new("Tool")
--     lantern.Name = "Lantern"
--     lantern.RequiresHandle = true
--     lantern.Parent = LocalPlayer:WaitForChild("Backpack")

--     local handle = Instance.new("Part")
--     handle.Name = "Handle"
--     handle.Size = Vector3.new(0.5, 2, 0.5) 
--     handle.Position = Vector3.new(0, 0, 0)
--     handle.Anchored = false
--     handle.CanCollide = false
--     handle.BrickColor = BrickColor.new("Brown") 
--     handle.Parent = lantern

--     local lightPart = Instance.new("Part")
--     lightPart.Name = "LightPart"
--     lightPart.Size = Vector3.new(0.8, 0.8, 0.8) 
--     lightPart.Position = Vector3.new(0, 1.5, 0)
--     lightPart.Anchored = false
--     lightPart.CanCollide = false
--     lightPart.BrickColor = BrickColor.new("Yellow")
--     lightPart.Transparency = 0.3
--     lightPart.Parent = lantern

--     local weld = Instance.new("WeldConstraint")
--     weld.Part0 = handle
--     weld.Part1 = lightPart
--     weld.Parent = handle

--     local pointLight = Instance.new("PointLight")
--     pointLight.Name = "LanternLight"
--     pointLight.Brightness = 2 
--     pointLight.Range = 15
--     pointLight.Color = Color3.fromRGB(255, 255, 200)
--     pointLight.Enabled = false
--     pointLight.Parent = lightPart

--     local fire = Instance.new("Fire")
--     fire.Name = "FireEffect"
--     fire.Size = 3
--     fire.Heat = 5
--     fire.Enabled = false
--     fire.Parent = lightPart

--     lantern.Equipped:Connect(function()
--         pointLight.Enabled = true
--         fire.Enabled = true
--     end)

--     lantern.Unequipped:Connect(function()
--         pointLight.Enabled = false
--         fire.Enabled = false
--     end)
-- end

-- setNight()

-- createLantern()

-- LocalPlayer.CharacterAdded:Connect(function()
--     wait(1)
--     if not LocalPlayer.Backpack:FindFirstChild("Lantern") then
--         createLantern()
--     end
-- end)


-- local Players = game:GetService("Players")
-- local LocalPlayer = Players.LocalPlayer

-- local function createFakeServerMessage(message)
--     local ScreenGui = Instance.new("ScreenGui")
--     ScreenGui.Name = "FakeServerMessageGUI"
--     ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
--     ScreenGui.IgnoreGuiInset = true

--     local TextLabel = Instance.new("TextLabel")
--     TextLabel.Name = "ServerMessage"
--     TextLabel.Parent = ScreenGui
--     TextLabel.BackgroundTransparency = 1
--     TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
--     TextLabel.TextColor3 = Color3.new(1, 1, 1)
--     TextLabel.Text = message
--     TextLabel.Size = UDim2.new(0.8, 0, 0.07, 0)
--     TextLabel.Position = UDim2.new(0.1, 0, 0, 0)
--     TextLabel.Font = Enum.Font.Fantasy -- zx font
--     TextLabel.TextScaled = false
--     TextLabel.TextSize = 30
--     TextLabel.TextXAlignment = Enum.TextXAlignment.Center
--     TextLabel.TextYAlignment = Enum.TextYAlignment.Center

--     return ScreenGui
-- end

-- local function fadeOutAndDestroy(gui, duration)
--     local tweenInfo = TweenInfo.new(
--         duration,
--         Enum.EasingStyle.Linear,
--         Enum.EasingDirection.Out,
--         0,
--         false
--     )
--     local tween = game:GetService("TweenService"):Create(gui.ServerMessage, tweenInfo, {TextTransparency = 1})
--     tween:Play()

--     tween.Completed:Connect(function()
--         gui:Destroy()
--     end)
-- end

-- local function showAndHideMessage(message, duration)
--     local gui = createFakeServerMessage(message)
--     fadeOutAndDestroy(gui, duration)
-- end

-- local message = "Have a happy nightly update! THANKS, ZEX!"
-- local duration = 9

-- while true do
--     showAndHideMessage(message, duration)
--     task.wait(10000000000000)
-- end

-- print("HAPPY UPDATE!")




local GETEXECNAME = 'Sprit'
local version = '1.45'

local function getexecutorname()
    return GETEXECNAME
end

local function getexecutorversion()
    return version
end

local function identifyexecutor()
    return getexecutorname()
end

local bindableFunction = Instance.new("BindableFunction")
 
game.StarterGui:SetCore("SendNotification", {
    Title = "Executor";
    Text = "Successfully attached!";
    Duration = "2";
    Callback = bindableFunction;
})

local Players = game:GetService("Players")

local function getPlayerCount()
    return #Players:GetPlayers()
end

local function teleportPlayer(player, position)
    if player and player.Character and position then
        local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
        if humanoidRootPart then
            humanoidRootPart.Position = position
            return true
        end
    end
    return false
end

local function createPart(size, position)
    local part = Instance.new("Part")
    part.Size = size
    part.Position = position
    part.Parent = game.Workspace
    return part
end

--print(identifyexecutor())
--print("[✅] Executor Name: " .. getexecutorname())
--print("[✅] Executor Version: ".. getexecutorversion())


local fakeIdentity = 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999

local function getidentity()
    return fakeIdentity
end

getgenv().getidentity = getidentity
getgenv().Level = getidentity

local function printidentity()
    print('Current identity is ' .. tostring(fakeIdentity))
    return fakeIdentity
end

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
        options.Headers["User-Agent"] = "Sprit/1.4.5"
    else
        options.Headers = {["User-Agent"] = "Sprit/1.4.5"}
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
    logMessage("injection initialized with sprit [✅]")


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
