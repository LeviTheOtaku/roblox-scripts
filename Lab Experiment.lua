spawn(function()
while true do
wait(0.5)

local playerObj = workspace:findFirstChild(game.Players.LocalPlayer.Name)
local player = game.Players.LocalPlayer

       
-- NON DEADLY LAVA
local lavaCandidates = workspace.LavaArea:getChildren()
for i=1,#lavaCandidates do
if lavaCandidates[i].ClassName == "Part" then
if lavaCandidates[i]:findFirstChild("TouchInterest") then
lavaCandidates[i]:findFirstChild("TouchInterest"):remove()                                     
end
end
end
         
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
if workspace:findFirstChild("Tiles") then
if game.Workspace.Tiles:findFirstChild(game.Players.LocalPlayer.Name) then
if game.Workspace.Tiles[game.Players.LocalPlayer.Name].Transparency == 1 then
game.Workspace.Tiles[game.Players.LocalPlayer.Name].Transparency = 0.5
end
end
end

-- REMOVE UR PLATE SLIPPY IF ITS SLIPPY
   
if workspace:findFirstChild("Tiles") then
if game.Workspace.Tiles:findFirstChild(game.Players.LocalPlayer.Name) then
if not game.Workspace.Tiles[game.Players.LocalPlayer.Name].Material == "Plastic" then
game.Workspace.Tiles[game.Players.LocalPlayer.Name].Material = "Plastic"
end
game.Workspace.Tiles[game.Players.LocalPlayer.Name].Velocity = Vector3.new(0,0,0)
end
end

-- REMOVE CLOUD
if workspace:findFirstChild("Tiles") then
if game.Workspace.Tiles:findFirstChild(game.Players.LocalPlayer.Name) then
if game.Workspace.Tiles[game.Players.LocalPlayer.Name]:findFirstChild("Cloud") then
game.Workspace.Tiles[game.Players.LocalPlayer.Name].Cloud:remove()
end
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
pcall(function()
local a = Instance.new("BoxHandleAdornment", workspace.CurrentCamera)
a.Name = "boxha"
a.Size = Vector3.new(highestobj.Size.X+0.1, highestobj.Size.Y+0.1, highestobj.Size.Z+0.1)
a.AlwaysOnTop = false
a.ZIndex = 10
a.Transparency = 0.75
a.Color3 = Color3.fromRGB(0,255,0)
a.Adornee = highestobj
end)
end
end
end
end)


spawn(function() -- JUMPPOWER 100 for 2 seconds on R (MAX LEVEL JUMPBOOST ABILITY ALWAYS USEABLE)
game:getService("RunService"):BindToRenderStep("Jumpbooster",0,function()
pcall(function()
if not game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid") then return end
if game:getService("UserInputService"):IsKeyDown(Enum.KeyCode.R) then
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100
wait(2.5)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
end
end)
end)
end)


spawn(function() -- AUTO-JOIN Game when in Lobby GUI
local Gui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Deco = Instance.new("TextLabel")
local ToggleButton = Instance.new("TextButton")

Gui.Name = "Gui"
Gui.Parent = game.CoreGui

MainFrame.Name = "MainFrame"
MainFrame.Parent = Gui
MainFrame.Active = true
MainFrame.BackgroundColor3 = Color3.new(0, 0.45098, 0.694118)
MainFrame.BorderSizePixel = 0
MainFrame.Draggable = true
MainFrame.Position = UDim2.new(0.25, 0, 0.25, 0)
MainFrame.Size = UDim2.new(0.100000001, 0, 0.075000003, 0)

Deco.Name = "Deco"
Deco.Parent = MainFrame
Deco.BackgroundColor3 = Color3.new(1, 1, 1)
Deco.BackgroundTransparency = 0.89999997615814
Deco.BorderSizePixel = 0
Deco.Size = UDim2.new(1, 0, 0.300000012, 0)
Deco.Font = Enum.Font.SourceSansLight
Deco.Text = "Auto join game"
Deco.TextColor3 = Color3.new(1, 1, 1)
Deco.TextScaled = true
Deco.TextSize = 14
Deco.TextWrapped = true

ToggleButton.Name = "ToggleButton"
ToggleButton.Parent = MainFrame
ToggleButton.BackgroundColor3 = Color3.new(0, 0, 0)
ToggleButton.BorderSizePixel = 0
ToggleButton.Position = UDim2.new(0.0500000007, 0, 0.400000006, 0)
ToggleButton.Size = UDim2.new(0.899999976, 0, 0.5, 0)
ToggleButton.Font = Enum.Font.SourceSansLight
ToggleButton.Text = "Off"
ToggleButton.TextColor3 = Color3.new(1, 0, 0)
ToggleButton.TextScaled = true
ToggleButton.TextSize = 14
ToggleButton.TextWrapped = true

local on = false
ToggleButton.MouseButton1Down:connect(function()
if on == false then
on = true
ToggleButton.Text = "On"
ToggleButton.TextColor3 = Color3.fromRGB(0,255,0)

else
on = false
ToggleButton.Text = "Off"
ToggleButton.TextColor3 = Color3.fromRGB(255,0,0)

end
end)


game:GetService("RunService").RenderStepped:Connect(function()
wait()
if on == true then
if game.Players.LocalPlayer.Character:findFirstChild("HumanoidRootPart") then
if game.Players.LocalPlayer.TeamColor == BrickColor.new("White") then 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(54.528595, 33.4999886, 144.216599)
elseif game.Players.LocalPlayer.TeamColor == BrickColor.new("Really red") then 
if game.Players.LocalPlayer.Character:findFirstChild("HumanoidRootPart") then
-- USED TO BE AUTOFARM, CAN ENABLE BUT PEOPLE SUS YOU QUICKLY!
                
--local a = Instance.new("Part", workspace)
--a.Size = Vector3.new(10, 1, 10)
--a.CFrame = CFrame.new(-114.977, 178, 1.605, 1, 0, 0, 0, 1, 0, 0, 0, 1)
--a.Anchored = true

--game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(-114.977, 182, 1.605, 1, 0, 0, 0, 1, 0, 0, 0, 1)
wait()
end
end
end
end
end)
end)


spawn(function() -- AUTO-WIN GAMES AND AUTO JOIN
local Gui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Deco = Instance.new("TextLabel")
local ToggleButton = Instance.new("TextButton")

Gui.Name = "Gui"
Gui.Parent = game.CoreGui

MainFrame.Name = "MainFrame"
MainFrame.Parent = Gui
MainFrame.Active = true
MainFrame.BackgroundColor3 = Color3.new(0.45098, 0, 0.694118)
MainFrame.BorderSizePixel = 0
MainFrame.Draggable = true
MainFrame.Position = UDim2.new(0.25, 0, 0.25, 0)
MainFrame.Size = UDim2.new(0.100000001, 0, 0.075000003, 0)

Deco.Name = "Deco"
Deco.Parent = MainFrame
Deco.BackgroundColor3 = Color3.new(1, 1, 1)
Deco.BackgroundTransparency = 0.89999997615814
Deco.BorderSizePixel = 0
Deco.Size = UDim2.new(1, 0, 0.300000012, 0)
Deco.Font = Enum.Font.SourceSansLight
Deco.Text = "Auto win games"
Deco.TextColor3 = Color3.new(1, 1, 1)
Deco.TextScaled = true
Deco.TextSize = 14
Deco.TextWrapped = true

ToggleButton.Name = "ToggleButton"
ToggleButton.Parent = MainFrame
ToggleButton.BackgroundColor3 = Color3.new(0, 0, 0)
ToggleButton.BorderSizePixel = 0
ToggleButton.Position = UDim2.new(0.0500000007, 0, 0.400000006, 0)
ToggleButton.Size = UDim2.new(0.899999976, 0, 0.5, 0)
ToggleButton.Font = Enum.Font.SourceSansLight
ToggleButton.Text = "Off"
ToggleButton.TextColor3 = Color3.new(1, 0, 0)
ToggleButton.TextScaled = true
ToggleButton.TextSize = 14
ToggleButton.TextWrapped = true

local on = false
ToggleButton.MouseButton1Down:connect(function()
if on == false then
on = true
ToggleButton.Text = "On"
ToggleButton.TextColor3 = Color3.fromRGB(0,255,0)

else
on = false
ToggleButton.Text = "Off"
ToggleButton.TextColor3 = Color3.fromRGB(255,0,0)

end
end)


game:GetService("RunService").RenderStepped:Connect(function()
wait()
if on == true then
if game:getService("Players").LocalPlayer.Character:findFirstChild("HumanoidRootPart") then
if game:getService("Players").LocalPlayer.TeamColor == BrickColor.new("White") then 
game:getService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(54.528595, 33.4999886, 144.216599)
elseif game:getService("Players").LocalPlayer.TeamColor == BrickColor.new("Really red") then
if game:getService("Players").LocalPlayer.Character:findFirstChild("HumanoidRootPart") then          
local a = Instance.new("Part", workspace)
a.Size = Vector3.new(10, 1, 10)
a.CFrame = CFrame.new(-114.977, 178, 1.605, 1, 0, 0, 0, 1, 0, 0, 0, 1)
a.Anchored = true
game:getService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(-114.977, 182, 1.605, 1, 0, 0, 0, 1, 0, 0, 0, 1)

local players = game:GetService("Players"):getChildren()
local ingamePlayers = 0      
for i=1,#players do
if players[i].TeamColor == BrickColor.new("Really red") then
ingamePlayers = ingamePlayers+1
end
end
if ingamePlayers == 1 then
wait(0.5)
game:getService("Players").LocalPlayer.Character.Humanoid.Health = 0
end
end
end
end
end
end)
end)
