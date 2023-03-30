spawn(function() --antiafk kick
local GC = getconnections or get_signal_cons
if GC then
for i,v in pairs(GC(game:GetService("Players").LocalPlayer.Idled)) do
if v["Disable"] then
v["Disable"](v)
elseif v["Disconnect"] then
v["Disconnect"](v)
end
end
else
Players.LocalPlayer.Idled:Connect(function()
local VirtualUser = game:GetService("VirtualUser")
VirtualUser:CaptureController()
VirtualUser:ClickButton2(Vector2.new())
end)
end
end)

game:GetService("RunService"):Set3dRenderingEnabled(false)

if game.ReplicatedStorage:FindFirstChild("GameAnalytics") then
game.ReplicatedStorage:FindFirstChild("GameAnalytics"):remove()
end
if game.Players.LocalPlayer.PlayerGui.UIPlayer:FindFirstChild("UICapsulestation") then
game.Players.LocalPlayer.PlayerGui.UIPlayer:FindFirstChild("UICapsulestation"):remove()
end

for i,v in pairs(game.Players.LocalPlayer.PlayerGui.UIPlayer:GetChildren()) do
if v.Name ~= "UIMain" then
v:remove()
end
end

game:GetService("NetworkClient"):SetOutgoingKBPSLimit(math.huge)

while wait(0.9) do
spawn(function()
for i=1,1000 do
spawn(function()
game:GetService("ReplicatedStorage"):WaitForChild("GameCommon"):WaitForChild("Messages"):WaitForChild("CapsulestationEvent"):FireServer(1, 3, 20071, 5)
end)
end
end)
end
