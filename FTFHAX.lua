local FTFHAX = Instance.new("ScreenGui")
local MenusTabFrame = Instance.new("Frame")
local CheatButton = Instance.new("ImageButton")
local TextLabel = Instance.new("TextLabel")
local MainMenuWindow = Instance.new("Frame")
local Body = Instance.new("Frame")
local TopLabel = Instance.new("TextLabel")
local ButtonsFrame = Instance.new("Frame")
local PCESPButton = Instance.new("TextButton")
local PlayerESPButton = Instance.new("TextButton")
local NeverFailButton = Instance.new("TextButton")
local PodsESPButton = Instance.new("TextButton")
local BottomLabel = Instance.new("TextLabel")
local TopBar = Instance.new("Frame")
local CloseButton = Instance.new("TextButton")
local PageTitleText = Instance.new("TextLabel")
local CreditTotalText = Instance.new("TextLabel")

FTFHAX.Name = "FTFHAX"
FTFHAX.Parent = game.CoreGui

MenusTabFrame.Name = "MenusTabFrame"
MenusTabFrame.Parent = FTFHAX
MenusTabFrame.AnchorPoint = Vector2.new(1, 0.5)
MenusTabFrame.BackgroundColor3 = Color3.new(0, 0, 0)
MenusTabFrame.BackgroundTransparency = 1
MenusTabFrame.BorderColor3 = Color3.new(0.25098, 0.25098, 0.25098)
MenusTabFrame.BorderSizePixel = 0
MenusTabFrame.Position = UDim2.new(1, 0, 0.5, 0)
MenusTabFrame.Size = UDim2.new(0.0799999982, 0, 0.159999996, 0)
MenusTabFrame.SizeConstraint = Enum.SizeConstraint.RelativeYY

CheatButton.Name = "CheatButton"
CheatButton.Parent = MenusTabFrame
CheatButton.BackgroundColor3 = Color3.new(0, 0, 0)
CheatButton.BackgroundTransparency = 0.5
CheatButton.BorderColor3 = Color3.new(0, 0, 0)
CheatButton.BorderSizePixel = 0
CheatButton.Position = UDim2.new(0, 0, 1, 0)
CheatButton.Size = UDim2.new(1, 0, 1, 0)
CheatButton.SizeConstraint = Enum.SizeConstraint.RelativeXX
CheatButton.Image = "rbxassetid://11570895459"
CheatButton.ImageColor3 = Color3.new(0.878431, 0.878431, 0.878431)

TextLabel.Parent = CheatButton
TextLabel.AnchorPoint = Vector2.new(0, 1)
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0, 0, 1, 0)
TextLabel.Size = UDim2.new(1, 0, 0.200000003, 0)
TextLabel.Font = Enum.Font.ArialBold
TextLabel.FontSize = Enum.FontSize.Size12
TextLabel.Text = "ftfhax"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextScaled = true
TextLabel.TextSize = 12
TextLabel.TextStrokeTransparency = 0
TextLabel.TextWrapped = true
TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom

MainMenuWindow.Name = "MainMenuWindow"
MainMenuWindow.Parent = FTFHAX
MainMenuWindow.AnchorPoint = Vector2.new(0.5, 0.5)
MainMenuWindow.BackgroundColor3 = Color3.new(0.184314, 0.184314, 0.184314)
MainMenuWindow.BorderColor3 = Color3.new(0, 0, 0)
MainMenuWindow.BorderSizePixel = 2
MainMenuWindow.ClipsDescendants = true
MainMenuWindow.Position = UDim2.new(0.5, 0, 0.5, -18)
MainMenuWindow.Size = UDim2.new(0, 480, 0, 320)
MainMenuWindow.SizeConstraint = Enum.SizeConstraint.RelativeYY
MainMenuWindow.Visible = false

Body.Name = "Body"
Body.Parent = MainMenuWindow
Body.BackgroundColor3 = Color3.new(1, 1, 1)
Body.BackgroundTransparency = 1
Body.BorderSizePixel = 0
Body.Position = UDim2.new(0, 0, 0, 40)
Body.Size = UDim2.new(1, 0, 1, -40)

TopLabel.Name = "TopLabel"
TopLabel.Parent = Body
TopLabel.AnchorPoint = Vector2.new(0.5, 0)
TopLabel.BackgroundColor3 = Color3.new(0.247059, 0.247059, 0.247059)
TopLabel.BorderColor3 = Color3.new(0, 0, 0)
TopLabel.BorderSizePixel = 0
TopLabel.Position = UDim2.new(0.5, 0, 0, 5)
TopLabel.Size = UDim2.new(1, -10, 0, 30)
TopLabel.FontSize = Enum.FontSize.Size14
TopLabel.Text = ":)"
TopLabel.TextColor3 = Color3.new(1, 0, 0)
TopLabel.TextScaled = true
TopLabel.TextSize = 14
TopLabel.TextWrapped = true

ButtonsFrame.Name = "ButtonsFrame"
ButtonsFrame.Parent = Body
ButtonsFrame.BackgroundColor3 = Color3.new(1, 1, 1)
ButtonsFrame.BackgroundTransparency = 1
ButtonsFrame.Position = UDim2.new(0, 5, 0, 190)
ButtonsFrame.Size = UDim2.new(1, -10, 0, 85)

PCESPButton.Name = "PCESPButton"
PCESPButton.Parent = ButtonsFrame
PCESPButton.BackgroundColor3 = Color3.new(0.74902, 0, 0)
PCESPButton.BorderColor3 = Color3.new(0, 0, 0)
PCESPButton.BorderSizePixel = 0
PCESPButton.Position = UDim2.new(0, 0, -1.70588231, 0)
PCESPButton.Size = UDim2.new(0, 230, 0, 50)
PCESPButton.FontSize = Enum.FontSize.Size24
PCESPButton.Text = "PCs"
PCESPButton.TextColor3 = Color3.new(1, 1, 1)
PCESPButton.TextSize = 20
PCESPButton.TextWrapped = true

PlayerESPButton.Name = "PlayerESPButton"
PlayerESPButton.Parent = ButtonsFrame
PlayerESPButton.BackgroundColor3 = Color3.new(0.74902, 0, 0)
PlayerESPButton.BorderColor3 = Color3.new(0, 0, 0)
PlayerESPButton.BorderSizePixel = 0
PlayerESPButton.Position = UDim2.new(0.510638297, 0, -1.70588231, 0)
PlayerESPButton.Size = UDim2.new(0, 230, 0, 50)
PlayerESPButton.FontSize = Enum.FontSize.Size24
PlayerESPButton.Text = "Players"
PlayerESPButton.TextColor3 = Color3.new(1, 1, 1)
PlayerESPButton.TextSize = 20
PlayerESPButton.TextWrapped = true

NeverFailButton.Name = "NeverFailButton"
NeverFailButton.Parent = ButtonsFrame
NeverFailButton.BackgroundColor3 = Color3.new(0.74902, 0, 0)
NeverFailButton.BorderColor3 = Color3.new(0, 0, 0)
NeverFailButton.BorderSizePixel = 0
NeverFailButton.Position = UDim2.new(0.510638297, 0, -1.02352929, 0)
NeverFailButton.Size = UDim2.new(0, 230, 0, 50)
NeverFailButton.FontSize = Enum.FontSize.Size18
NeverFailButton.Text = "Never Fail Hacking"
NeverFailButton.TextColor3 = Color3.new(1, 1, 1)
NeverFailButton.TextSize = 16
NeverFailButton.TextWrapped = true

PodsESPButton.Name = "PodsESPButton"
PodsESPButton.Parent = ButtonsFrame
PodsESPButton.BackgroundColor3 = Color3.new(0.74902, 0, 0)
PodsESPButton.BorderColor3 = Color3.new(0, 0, 0)
PodsESPButton.BorderSizePixel = 0
PodsESPButton.Position = UDim2.new(0, 0, -1.02352929, 0)
PodsESPButton.Size = UDim2.new(0, 230, 0, 50)
PodsESPButton.FontSize = Enum.FontSize.Size24
PodsESPButton.Text = "Pods"
PodsESPButton.TextColor3 = Color3.new(1, 1, 1)
PodsESPButton.TextSize = 20
PodsESPButton.TextWrapped = true

BottomLabel.Name = "BottomLabel"
BottomLabel.Parent = Body
BottomLabel.AnchorPoint = Vector2.new(0.5, 0)
BottomLabel.BackgroundColor3 = Color3.new(0.247059, 0.247059, 0.247059)
BottomLabel.BorderColor3 = Color3.new(0, 0, 0)
BottomLabel.BorderSizePixel = 0
BottomLabel.Position = UDim2.new(0.5, 0, 0.557142854, 5)
BottomLabel.Size = UDim2.new(1, -10, 0.289285719, 30)
BottomLabel.FontSize = Enum.FontSize.Size24
BottomLabel.Text = "Created by Levi#7059"
BottomLabel.TextColor3 = Color3.new(1, 1, 1)
BottomLabel.TextSize = 20
BottomLabel.TextWrapped = true

TopBar.Name = "TopBar"
TopBar.Parent = MainMenuWindow
TopBar.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
TopBar.BorderSizePixel = 0
TopBar.Size = UDim2.new(1, 0, 0, 40)
TopBar.ZIndex = 5

CloseButton.Name = "CloseButton"
CloseButton.Parent = TopBar
CloseButton.AnchorPoint = Vector2.new(1, 0)
CloseButton.BackgroundColor3 = Color3.new(1, 0, 0)
CloseButton.BorderColor3 = Color3.new(0.74902, 0.74902, 0.74902)
CloseButton.BorderSizePixel = 0
CloseButton.Position = UDim2.new(1, -1, 0, 1)
CloseButton.Size = UDim2.new(0, 36, 0, 36)
CloseButton.SizeConstraint = Enum.SizeConstraint.RelativeYY
CloseButton.ZIndex = 5
CloseButton.Modal = true
CloseButton.FontSize = Enum.FontSize.Size14
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.new(1, 1, 1)
CloseButton.TextScaled = true
CloseButton.TextSize = 14
CloseButton.TextWrapped = true

PageTitleText.Name = "PageTitleText"
PageTitleText.Parent = TopBar
PageTitleText.BackgroundColor3 = Color3.new(1, 1, 1)
PageTitleText.BackgroundTransparency = 1
PageTitleText.BorderSizePixel = 0
PageTitleText.Position = UDim2.new(0, 10, 0, 0)
PageTitleText.Size = UDim2.new(0.5, 0, 0, 40)
PageTitleText.ZIndex = 5
PageTitleText.FontSize = Enum.FontSize.Size36
PageTitleText.Text = "ftfhax"
PageTitleText.TextColor3 = Color3.new(1, 1, 1)
PageTitleText.TextScaled = true
PageTitleText.TextSize = 34
PageTitleText.TextWrapped = true
PageTitleText.TextXAlignment = Enum.TextXAlignment.Left

CreditTotalText.Name = "CreditTotalText"
CreditTotalText.Parent = TopBar
CreditTotalText.AnchorPoint = Vector2.new(1, 0)
CreditTotalText.BackgroundColor3 = Color3.new(1, 1, 1)
CreditTotalText.BackgroundTransparency = 1
CreditTotalText.BorderSizePixel = 0
CreditTotalText.Position = UDim2.new(1, -111, 0, 0)
CreditTotalText.Size = UDim2.new(0, 120, 1, 0)
CreditTotalText.ZIndex = 5
CreditTotalText.FontSize = Enum.FontSize.Size36
CreditTotalText.Text = "v0.0.1"
CreditTotalText.TextColor3 = Color3.new(1, 1, 0)
CreditTotalText.TextScaled = true
CreditTotalText.TextSize = 34
CreditTotalText.TextWrapped = true
CreditTotalText.TextXAlignment = Enum.TextXAlignment.Right

CheatButton.MouseButton1Down:Connect(function()
	MainMenuWindow.Visible = not MainMenuWindow.Visible
end)

CloseButton.MouseButton1Down:Connect(function()
	MainMenuWindow.Visible = false
end)


local podstoggle = false
local pctoggle = false
local playertoggle = false
local neverfailtoggle = false

PodsESPButton.MouseButton1Down:Connect(function()
	if podstoggle == false then
		podstoggle = true
		PodsESPButton.BackgroundColor3 = Color3.new(0, 0.74902, 0)
		reloadESP()
	else
		podstoggle = false
		PodsESPButton.BackgroundColor3 = Color3.new(0.74902, 0, 0)
		reloadESP()
	end
end)

PCESPButton.MouseButton1Down:Connect(function()
	if pctoggle == false then
		pctoggle = true
		PCESPButton.BackgroundColor3 = Color3.new(0, 0.74902, 0)
		reloadESP()
	else
		pctoggle = false
		PCESPButton.BackgroundColor3 = Color3.new(0.74902, 0, 0)
		reloadESP()
	end
end)


PlayerESPButton.MouseButton1Down:Connect(function()
	if playertoggle == false then
		playertoggle = true
		PlayerESPButton.BackgroundColor3 = Color3.new(0, 0.74902, 0)
		reloadESP()
	else
		playertoggle = false
		PlayerESPButton.BackgroundColor3 = Color3.new(0.74902, 0, 0)
		reloadESP()
	end
end)

NeverFailButton.MouseButton1Down:Connect(function()
	if neverfailtoggle == false then
		neverfailtoggle = true
		NeverFailButton.BackgroundColor3 = Color3.new(0, 0.74902, 0)
		reloadESP()
	else
		neverfailtoggle = false
		NeverFailButton.BackgroundColor3 = Color3.new(0.74902, 0, 0)
		reloadESP()
	end
end)

spawn(function()
game.ReplicatedStorage.CurrentMap.Changed:Connect(function()
  wait(5)
	reloadESP()
end)
end)

spawn(function()
while wait(5) do
reloadESP()			
end
end)

spawn(function()
local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt,false)
mt.__namecall = newcclosure(function(self, ...)
	local args = {...}
	if getnamecallmethod() == 'FireServer' and args[1] == 'SetPlayerMinigameResult' and neverfailtoggle then
		args[2] = true
	end
	return old(self, unpack(args))
end)
end)

function reloadESP()
	local map = game.ReplicatedStorage.CurrentMap.Value
	local mapstuff = map:getChildren()
	for i=1,#mapstuff do
		if mapstuff[i].Name == "ComputerTable" then
			if mapstuff[i]:findFirstChild("Highlight") then
				mapstuff[i].Highlight:remove()
			end
			if pctoggle then
				local a = Instance.new("Highlight", mapstuff[i])
				a.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
				a.FillColor = Color3.fromRGB(73, 56, 255) -- avoid display bugs as soon as loads :)
				a.OutlineColor = Color3.fromRGB(82, 105, 255)
				spawn(function()
					repeat 
						a.FillColor = mapstuff[i].Screen.Color
						a.OutlineColor = Color3.fromRGB(a.FillColor.R*400, a.FillColor.G*400, a.FillColor.B*400)
						wait(1)
					until mapstuff[i] == nil or a == nil
				end)
			end
		end
		if mapstuff[i].Name == "FreezePod" then
			if mapstuff[i]:findFirstChild("Highlight") then
				mapstuff[i].Highlight:remove()
			end
			if podstoggle then
				local a = Instance.new("Highlight", mapstuff[i])
				a.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
				a.FillColor = Color3.fromRGB(0,0,255)
				a.OutlineColor = Color3.fromRGB(127,127,255)
			end
		end
	end

	local player = game.Players:GetChildren()
	for i=1, #player do
		local character = player[i].Character
		if character:findFirstChild("Highlight") then
			character.Highlight:remove()
		end
		if playertoggle then
			local a = Instance.new("Highlight", character)
			a.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
			a.FillColor = Color3.fromRGB(0,255,0) -- avoid display bugs as soon as loads :)
			a.OutlineColor = Color3.fromRGB(127,255,127)
			spawn(function()
				repeat
					wait(0.1)
					if character:findFirstChild("BeastPowers") then
						a.FillColor = Color3.fromRGB(255,0,0)
						a.OutlineColor = Color3.fromRGB(255,127,127)
					else
						a.FillColor = Color3.fromRGB(0,255,0)
						a.OutlineColor = Color3.fromRGB(127,255,127)
					end
				until character == nil or a == nil
			end)
		end
	end
end
