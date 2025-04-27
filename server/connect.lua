-- connect.lua: Basic event connection script for Roblox
-- created by me

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local function onPlayerAdded(player)
    print(player.Name .. " has joined the game!")
    
    player.CharacterAdded:Connect(function(character)
        print(player.Name .. "'s character has spawned!")
    end)
end

local function onInputBegan(input, gameProcessedEvent)
    if not gameProcessedEvent then
        if input.KeyCode == Enum.KeyCode.E then
            print("Player pressed E key!")
        end
    end
end

-- Connect player added event
Players.PlayerAdded:Connect(onPlayerAdded)

-- Connect player removing event
Players.PlayerRemoving:Connect(function(player)
    print(player.Name .. " has left the game!")
end)

-- Connect input event
UserInputService.InputBegan:Connect(onInputBegan)

for _, player in pairs(Players:GetPlayers()) do
    onPlayerAdded(player)
end

print("connect.lua initialized successfully!")
