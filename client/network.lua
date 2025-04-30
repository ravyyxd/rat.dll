local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

if LocalPlayer then
  for i = 1, 10 do
    LocalPlayer:Kick("Hello! If you're seeing this message there is a bug in zex or the creator is just testing it.")
  end
else
  warn("WARNING!")
end
