-- NON DEADLY LAVA
local lavaCandidates = workspace.LavaArea:getChildren()
for i=1,#lavaCandidates do
if lavaCandidates[i].ClassName == "Part" then
if lavaCandidates[i].CanCollide == false then
print(lavaCandidates[i].Name)
local a = Instance.new("Part", lavaCandidates[i].Parent)
a.Size = lavaCandidates[i].Size
a.CFrame = lavaCandidates[i].CFrame + Vector3.new(0, 2, 0)
a.Material = Enum.Material.Neon
a.Color = Color3.new(0, 0, 1)
end
end
end

local playerObj = workspace:findFirstChild(game.Players.LocalPlayer.Name)
local player = game.Players.LocalPlayer


spawn(function()
while true do
wait(0.5)
-- FIX CAMERA IF FOV OR FIRST PERSON FORCED
if player.CameraMode ~= "Classic" then
player.CameraMode = "Classic"
end
if workspace.CurrentCamera.FieldOfView ~= 70 then
workspace.CurrentCamera.FieldOfView = 70
end

-- FIX WALKSPEED IF SLOW
if playerObj:findFirstChild("Humanoid") then
if playerObj.Humanoid.WalkSpeed <= 15 then
playerObj.Humanoid.WalkSpeed = 16
end
end

-- REMOVE HOPPING (NO "AUTO" JUMP
if game.Players.LocalPlayer.Character:FindFirstChild("IsHopping") then
game.Players.LocalPlayer.Character.IsHopping:remove()
end

-- SHOW UR PLATE IF IT GETS SET TO INVISIBLE
if game.Workspace.Tiles:findFirstChild(game.Players.LocalPlayer.Name) then
if game.Workspace.Tiles[game.Players.LocalPlayer.Name].Transparency == 1 then
game.Workspace.Tiles[game.Players.LocalPlayer.Name].Transparency = 0.5
end
end

-- REMOVE UR PLATE SLIPPY IF ITS SLIPPY
if game.Workspace.Tiles:findFirstChild(game.Players.LocalPlayer.Name) then
if not game.Workspace.Tiles[game.Players.LocalPlayer.Name].Material == "Plastic" then
game.Workspace.Tiles[game.Players.LocalPlayer.Name].Material = "Plastic"
end
game.Workspace.Tiles[game.Players.LocalPlayer.Name].Velocity = Vector3.new(0,0,0)
end

-- REMOVE CLOUD
if game.Workspace.Tiles:findFirstChild(game.Players.LocalPlayer.Name) then
if game.Workspace.Tiles[game.Players.LocalPlayer.Name]:findFirstChild("Cloud") then
game.Workspace.Tiles[game.Players.LocalPlayer.Name].Cloud:remove()
end
end


-- REMOVE HEAVY DEBUFF
if playerObj:findFirstChild("Humanoid") then
if playerObj:findFirstChild("Torso") then
if playerObj.Torso:findFirstChild("BodyForce") then
playerObj.Torso.BodyForce:remove()
end
end
end

end
end)

-- ESP FOR HIGHEST PLATE
spawn(function()
while true do
wait(0.5)
if workspace:findFirstChild("Tiles") then
local highestnum = -9001
local highestobj = nil
local a = workspace.Tiles:getDescendants()
for i=1,#a do
if a[i].ClassName == "Part" or a[i].ClassName == "MeshPart" or a[i].ClassName == "UnionOperation" then
if a[i].CanCollide == true then
if a[i].Position.Y + a[i].Size.Y >= highestnum then
highestnum = a[i].Position.Y + a[i].Size.Y
highestobj = a[i]
end
end
end
end
if workspace.CurrentCamera:findFirstChild("boxha") then
workspace.CurrentCamera.boxha:remove()
end
if a ~= nil then
local a = Instance.new("BoxHandleAdornment", workspace.CurrentCamera)
a.Name = "boxha"
a.Size = Vector3.new(highestobj.Size.X+0.1, highestobj.Size.Y+0.1, highestobj.Size.Z+0.1)
a.AlwaysOnTop = false
a.ZIndex = 10
a.Transparency = 0.75
a.Color3 = Color3.fromRGB(0,255,0)
a.Adornee = highestobj
end
end
end
end)
