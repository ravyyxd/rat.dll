local Players = game:GetService(""Players"")
local LocalPlayer = Players.LocalPlayer

if LocalPlayer then
  for i = 1, 10 do
    LocalPlayer:Kick("You have been kicked from this experience by owner of zex.")
  end
else
  warn("WARNING!")
end
