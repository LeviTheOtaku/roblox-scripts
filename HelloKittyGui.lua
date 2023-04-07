local v = "0.0.2" -- loadstring(game:HttpGet("https://raw.githubusercontent.com/LeviTheOtaku/roblox-scripts/main/HelloKittyGui.lua",true))()


if game.ReplicatedStorage:FindFirstChild("GameAnalytics") then
	game.ReplicatedStorage:FindFirstChild("GameAnalytics"):remove()
end

local HelloKittyGui = Instance.new("ScreenGui")
local ToggleFrame = Instance.new("Frame")
local ToggleButton = Instance.new("ImageButton")
local Background = Instance.new("ImageLabel")
local MainFrame = Instance.new("Frame")
local Content = Instance.new("Frame")
local Header = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local tab1 = Instance.new("ImageButton")
local ImageLabel = Instance.new("ImageLabel")
local UIListLayout_2 = Instance.new("UIListLayout")
local TabName = Instance.new("TextLabel")
local tab2 = Instance.new("ImageButton")
local ImageLabel_2 = Instance.new("ImageLabel")
local UIListLayout_3 = Instance.new("UIListLayout")
local TabName_2 = Instance.new("TextLabel")
local tab3 = Instance.new("ImageButton")
local ImageLabel_3 = Instance.new("ImageLabel")
local UIListLayout_4 = Instance.new("UIListLayout")
local TabName_3 = Instance.new("TextLabel")
local Deco = Instance.new("ImageLabel")
local Title = Instance.new("Frame")
local Title_2 = Instance.new("TextLabel")
local ContentTab1 = Instance.new("ImageLabel")
local Right = Instance.new("ScrollingFrame")
local UIListLayout_5 = Instance.new("UIListLayout")
local TreasureFrame = Instance.new("ImageLabel")
local Right_2 = Instance.new("Frame")
local Button = Instance.new("ImageLabel")
local TreasureButton = Instance.new("ImageButton")
local TextLabel = Instance.new("TextLabel")
local Info = Instance.new("ImageLabel")
local FillAll = Instance.new("ImageButton")
local Lock = Instance.new("ImageLabel")
local Info_2 = Instance.new("TextLabel")
local Title_3 = Instance.new("TextLabel")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local EggsFrame = Instance.new("ImageLabel")
local Right_3 = Instance.new("Frame")
local Button_2 = Instance.new("ImageLabel")
local EggsButton = Instance.new("ImageButton")
local TextLabel_2 = Instance.new("TextLabel")
local Info_3 = Instance.new("ImageLabel")
local FillAll_2 = Instance.new("ImageButton")
local Lock_2 = Instance.new("ImageLabel")
local Info_4 = Instance.new("TextLabel")
local Title_4 = Instance.new("TextLabel")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local AutoFeed = Instance.new("ImageLabel")
local Right_4 = Instance.new("Frame")
local Button_3 = Instance.new("ImageLabel")
local AutoFeedButton = Instance.new("ImageButton")
local TextLabel_3 = Instance.new("TextLabel")
local Info_5 = Instance.new("ImageLabel")
local FillAll_3 = Instance.new("ImageButton")
local Lock_3 = Instance.new("ImageLabel")
local Info_6 = Instance.new("TextLabel")
local Title_5 = Instance.new("TextLabel")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local Deco2 = Instance.new("ImageLabel")
local ContentTab2 = Instance.new("ImageLabel")
local Right_5 = Instance.new("ScrollingFrame")
local UIListLayout_6 = Instance.new("UIListLayout")
local KuromiFrame = Instance.new("ImageLabel")
local Right_6 = Instance.new("Frame")
local Button_4 = Instance.new("ImageLabel")
local KuromiButton = Instance.new("ImageButton")
local TextLabel_4 = Instance.new("TextLabel")
local Info_7 = Instance.new("ImageLabel")
local FillAll_4 = Instance.new("ImageButton")
local Lock_4 = Instance.new("ImageLabel")
local Info_8 = Instance.new("TextLabel")
local Title_6 = Instance.new("TextLabel")
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
local DessertFrame = Instance.new("ImageLabel")
local Right_7 = Instance.new("Frame")
local Button_5 = Instance.new("ImageLabel")
local DessertButton = Instance.new("ImageButton")
local TextLabel_5 = Instance.new("TextLabel")
local Info_9 = Instance.new("ImageLabel")
local FillAll_5 = Instance.new("ImageButton")
local Lock_5 = Instance.new("ImageLabel")
local Info_10 = Instance.new("TextLabel")
local Title_7 = Instance.new("TextLabel")
local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
local ContentTab3 = Instance.new("ImageLabel")
local Right_8 = Instance.new("ScrollingFrame")
local UIListLayout_7 = Instance.new("UIListLayout")
local AntiAFKFrame = Instance.new("ImageLabel")
local Right_9 = Instance.new("Frame")
local Button_6 = Instance.new("ImageLabel")
local AntiAFKButton = Instance.new("ImageButton")
local TextLabel_6 = Instance.new("TextLabel")
local Info_11 = Instance.new("ImageLabel")
local FillAll_6 = Instance.new("ImageButton")
local Lock_6 = Instance.new("ImageLabel")
local Info_12 = Instance.new("TextLabel")
local Title_8 = Instance.new("TextLabel")
local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")
local ToggleRenderingFrame = Instance.new("ImageLabel")
local Right_10 = Instance.new("Frame")
local Button_7 = Instance.new("ImageLabel")
local ToggleRenderingButton = Instance.new("ImageButton")
local TextLabel_7 = Instance.new("TextLabel")
local Info_13 = Instance.new("ImageLabel")
local FillAll_7 = Instance.new("ImageButton")
local Lock_7 = Instance.new("ImageLabel")
local Info_14 = Instance.new("TextLabel")
local Title_9 = Instance.new("TextLabel")
local UIAspectRatioConstraint_7 = Instance.new("UIAspectRatioConstraint")
local CloseFrameButton = Instance.new("ImageButton")

--Properties:

HelloKittyGui.Name = "HelloKittyGui"
HelloKittyGui.Parent = game.CoreGui
HelloKittyGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ToggleFrame.Name = "ToggleFrame"
ToggleFrame.Parent = HelloKittyGui
ToggleFrame.AnchorPoint = Vector2.new(0.75, 1)
ToggleFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleFrame.BackgroundTransparency = 1.000
ToggleFrame.BorderSizePixel = 0
ToggleFrame.Position = UDim2.new(1.05999994, 12, 0.899999976, 0)
ToggleFrame.Size = UDim2.new(0.119999997, 48, 0.119999997, 48)
ToggleFrame.SizeConstraint = Enum.SizeConstraint.RelativeXX

ToggleButton.Name = "ToggleButton"
ToggleButton.Parent = ToggleFrame
ToggleButton.AnchorPoint = Vector2.new(0.5, 0.5)
ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.BackgroundTransparency = 1.000
ToggleButton.Position = UDim2.new(0.0799999982, 0, 0.5, 0)
ToggleButton.Size = UDim2.new(0.340000004, 0, 0.340000004, 0)
ToggleButton.SizeConstraint = Enum.SizeConstraint.RelativeXX
ToggleButton.ZIndex = 2
ToggleButton.Image = "rbxassetid://8856527714"
ToggleButton.ImageColor3 = Color3.fromRGB(133, 255, 133)
ToggleButton.ScaleType = Enum.ScaleType.Crop

Background.Name = "Background"
Background.Parent = ToggleFrame
Background.AnchorPoint = Vector2.new(0.5, 0.5)
Background.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Background.BackgroundTransparency = 1.000
Background.BorderSizePixel = 0
Background.Position = UDim2.new(0.484952986, 0, 0.50410378, 0)
Background.Size = UDim2.new(1.26990581, 0, 0.458590448, 0)
Background.Image = "rbxassetid://8069143810"
Background.ScaleType = Enum.ScaleType.Slice
Background.SliceCenter = Rect.new(40, 43, 47, 47)
Background.SliceScale = 0.500

MainFrame.Name = "MainFrame"
MainFrame.Parent = HelloKittyGui
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainFrame.BackgroundTransparency = 1.000
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0.660000026, 0, 0.330000013, 0)
MainFrame.SizeConstraint = Enum.SizeConstraint.RelativeXX
MainFrame.Visible = false

Content.Name = "Content"
Content.Parent = MainFrame
Content.AnchorPoint = Vector2.new(0.5, 0.5)
Content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Content.BackgroundTransparency = 1.000
Content.BorderSizePixel = 0
Content.Position = UDim2.new(0.5, 0, 0.5, 0)
Content.Size = UDim2.new(1, 0, 0.5, 0)
Content.SizeConstraint = Enum.SizeConstraint.RelativeXX

Header.Name = "Header"
Header.Parent = Content
Header.AnchorPoint = Vector2.new(0.5, 0.5)
Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Header.BackgroundTransparency = 1.000
Header.BorderSizePixel = 0
Header.Position = UDim2.new(0.5, 0, 0.180000007, 0)
Header.Size = UDim2.new(0.930000007, 0, 0.0799999982, 0)
Header.ZIndex = 3

UIListLayout.Parent = Header
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout.Padding = UDim.new(0.0500000007, 0)

tab1.Name = "tab1"
tab1.Parent = Header
tab1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tab1.BackgroundTransparency = 1.000
tab1.Size = UDim2.new(0.25, 0, 1, 0)
tab1.Image = "rbxassetid://8305753841"
tab1.SliceCenter = Rect.new(0, 0, 101, 103)

ImageLabel.Parent = tab1
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Size = UDim2.new(1, 0, 1, 0)
ImageLabel.SizeConstraint = Enum.SizeConstraint.RelativeYY
ImageLabel.Image = "rbxassetid://8305753233"
ImageLabel.ScaleType = Enum.ScaleType.Fit

UIListLayout_2.Parent = tab1
UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

TabName.Name = "TabName"
TabName.Parent = tab1
TabName.AnchorPoint = Vector2.new(0.5, 0.5)
TabName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TabName.BackgroundTransparency = 1.000
TabName.BorderSizePixel = 0
TabName.Position = UDim2.new(0.5, 0, 0.5, 0)
TabName.Size = UDim2.new(0.800000012, 0, 1, 0)
TabName.Font = Enum.Font.FredokaOne
TabName.Text = "Cafe"
TabName.TextColor3 = Color3.fromRGB(255, 116, 168)
TabName.TextScaled = true
TabName.TextSize = 36.000
TabName.TextWrapped = true

tab2.Name = "tab2"
tab2.Parent = Header
tab2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tab2.BackgroundTransparency = 1.000
tab2.Size = UDim2.new(0.25, 0, 1, 0)
tab2.Image = "rbxassetid://8305753841"

ImageLabel_2.Parent = tab2
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BackgroundTransparency = 1.000
ImageLabel_2.Size = UDim2.new(1, 0, 1, 0)
ImageLabel_2.SizeConstraint = Enum.SizeConstraint.RelativeYY
ImageLabel_2.Image = "rbxassetid://8305753600"
ImageLabel_2.ScaleType = Enum.ScaleType.Fit

UIListLayout_3.Parent = tab2
UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder

TabName_2.Name = "TabName"
TabName_2.Parent = tab2
TabName_2.AnchorPoint = Vector2.new(0.5, 0.5)
TabName_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TabName_2.BackgroundTransparency = 1.000
TabName_2.BorderSizePixel = 0
TabName_2.Position = UDim2.new(0.5, 0, 0.5, 0)
TabName_2.Size = UDim2.new(0.800000012, 0, 1, 0)
TabName_2.Font = Enum.Font.FredokaOne
TabName_2.Text = "Minigames"
TabName_2.TextColor3 = Color3.fromRGB(255, 116, 168)
TabName_2.TextScaled = true
TabName_2.TextSize = 36.000
TabName_2.TextWrapped = true

tab3.Name = "tab3"
tab3.Parent = Header
tab3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tab3.BackgroundTransparency = 1.000
tab3.Size = UDim2.new(0.25, 0, 1, 0)
tab3.Image = "rbxassetid://8305753841"

ImageLabel_3.Parent = tab3
ImageLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_3.BackgroundTransparency = 1.000
ImageLabel_3.Size = UDim2.new(1, 0, 1, 0)
ImageLabel_3.SizeConstraint = Enum.SizeConstraint.RelativeYY
ImageLabel_3.Image = "rbxassetid://8305755056"
ImageLabel_3.ScaleType = Enum.ScaleType.Fit

UIListLayout_4.Parent = tab3
UIListLayout_4.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_4.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder

TabName_3.Name = "TabName"
TabName_3.Parent = tab3
TabName_3.AnchorPoint = Vector2.new(0.5, 0.5)
TabName_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TabName_3.BackgroundTransparency = 1.000
TabName_3.BorderSizePixel = 0
TabName_3.Position = UDim2.new(0.5, 0, 0.5, 0)
TabName_3.Size = UDim2.new(0.800000012, 0, 1, 0)
TabName_3.Font = Enum.Font.FredokaOne
TabName_3.Text = "Other"
TabName_3.TextColor3 = Color3.fromRGB(255, 116, 168)
TabName_3.TextScaled = true
TabName_3.TextSize = 36.000
TabName_3.TextWrapped = true

Deco.Name = "Deco"
Deco.Parent = Content
Deco.AnchorPoint = Vector2.new(0.5, 0.5)
Deco.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Deco.BackgroundTransparency = 1.000
Deco.BorderSizePixel = 0
Deco.Position = UDim2.new(0.5, 0, 0.5, 0)
Deco.Size = UDim2.new(1, 0, 1, 0)
Deco.Image = "rbxassetid://8194803341"
Deco.ScaleType = Enum.ScaleType.Slice
Deco.SliceCenter = Rect.new(509, 168, 509, 223)

Title.Name = "Title"
Title.Parent = Content
Title.AnchorPoint = Vector2.new(0.5, 0.5)
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.5, 0, 0.100000001, 0)
Title.Size = UDim2.new(0.930000007, 0, 0.0799999982, 0)
Title.ZIndex = 3

Title_2.Name = "Title"
Title_2.Parent = Title
Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_2.BackgroundTransparency = 1.000
Title_2.BorderSizePixel = 0
Title_2.Size = UDim2.new(0.5, 0, 1, 0)
Title_2.Font = Enum.Font.FredokaOne
Title_2.Text = "Hello Kitty GUI V0.0.1"
Title_2.TextColor3 = Color3.fromRGB(255, 116, 168)
Title_2.TextScaled = true
Title_2.TextSize = 14.000
Title_2.TextWrapped = true
Title_2.TextXAlignment = Enum.TextXAlignment.Left

ContentTab1.Name = "ContentTab1"
ContentTab1.Parent = Content
ContentTab1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ContentTab1.BackgroundTransparency = 1.000
ContentTab1.BorderSizePixel = 0
ContentTab1.Position = UDim2.new(0.0350000262, 0, 0.25, 0)
ContentTab1.Size = UDim2.new(0.929999888, 0, 0.699999988, 0)
ContentTab1.ZIndex = 2
ContentTab1.Image = "rbxassetid://8249353236"
ContentTab1.ScaleType = Enum.ScaleType.Slice
ContentTab1.SliceCenter = Rect.new(10, 10, 81, 57)

Right.Name = "Right"
Right.Parent = ContentTab1
Right.Active = true
Right.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Right.BackgroundTransparency = 1.000
Right.BorderSizePixel = 0
Right.Size = UDim2.new(0.998224556, 0, 0.99310118, 0)
Right.ZIndex = 2
Right.BottomImage = ""
Right.CanvasSize = UDim2.new(1, 0, 0.899999976, 0)
Right.ScrollBarThickness = 10
Right.TopImage = ""
Right.VerticalScrollBarInset = Enum.ScrollBarInset.Always

UIListLayout_5.Parent = Right
UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_5.Padding = UDim.new(0.0500000007, 0)

TreasureFrame.Name = "TreasureFrame"
TreasureFrame.Parent = Right
TreasureFrame.Active = true
TreasureFrame.BackgroundColor3 = Color3.fromRGB(208, 249, 249)
TreasureFrame.BorderSizePixel = 0
TreasureFrame.Size = UDim2.new(1, 0, 0.300000012, 0)

Right_2.Name = "Right"
Right_2.Parent = TreasureFrame
Right_2.AnchorPoint = Vector2.new(0, 1)
Right_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Right_2.BackgroundTransparency = 1.000
Right_2.BorderSizePixel = 0
Right_2.Position = UDim2.new(0.74999994, 0, 0.679825783, 0)
Right_2.Size = UDim2.new(0.25000003, 0, 0.479825675, 0)
Right_2.ZIndex = 2

Button.Name = "Button"
Button.Parent = Right_2
Button.AnchorPoint = Vector2.new(0.5, 0)
Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button.BackgroundTransparency = 1.000
Button.BorderSizePixel = 0
Button.Position = UDim2.new(0.460000008, 0, 0.330000013, 0)
Button.Size = UDim2.new(0.899999976, 0, 0.666999996, 0)
Button.Image = "rbxassetid://8635500001"
Button.ScaleType = Enum.ScaleType.Slice
Button.SliceCenter = Rect.new(80, 60, 102, 60)

TreasureButton.Name = "TreasureButton"
TreasureButton.Parent = Button
TreasureButton.AnchorPoint = Vector2.new(0.5, 0.5)
TreasureButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TreasureButton.BackgroundTransparency = 1.000
TreasureButton.BorderSizePixel = 0
TreasureButton.Position = UDim2.new(0.5, 0, 0.400000006, 0)
TreasureButton.Size = UDim2.new(1, 0, 1, 0)
TreasureButton.Image = "rbxassetid://8635500190"
TreasureButton.ScaleType = Enum.ScaleType.Slice
TreasureButton.SliceCenter = Rect.new(80, 60, 102, 60)

TextLabel.Parent = TreasureButton
TextLabel.AnchorPoint = Vector2.new(0, 0.5)
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0611788183, 0, 0.545740366, 0)
TextLabel.Size = UDim2.new(0.892436922, 0, 0.808519542, 0)
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = "Enable"
TextLabel.TextColor3 = Color3.fromRGB(249, 254, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 16.000
TextLabel.TextStrokeColor3 = Color3.fromRGB(0, 221, 255)
TextLabel.TextStrokeTransparency = 0.000
TextLabel.TextWrapped = true

Info.Name = "Info"
Info.Parent = Right_2
Info.AnchorPoint = Vector2.new(0.5, 0)
Info.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Info.BackgroundTransparency = 1.000
Info.BorderSizePixel = 0
Info.Position = UDim2.new(0.5, 0, 0.330000013, 0)
Info.Size = UDim2.new(0.899999976, 0, 0.666999996, 0)
Info.Visible = false
Info.ZIndex = 2
Info.Image = "rbxassetid://8202307405"
Info.ImageTransparency = 1.000
Info.ScaleType = Enum.ScaleType.Slice
Info.SliceCenter = Rect.new(80, 60, 102, 60)

FillAll.Name = "FillAll"
FillAll.Parent = Info
FillAll.AnchorPoint = Vector2.new(0.5, 0.5)
FillAll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FillAll.BackgroundTransparency = 1.000
FillAll.BorderSizePixel = 0
FillAll.Position = UDim2.new(0.5, 0, 0.400000006, 0)
FillAll.Size = UDim2.new(1, 0, 1, 0)
FillAll.Image = "rbxassetid://8202307534"
FillAll.ScaleType = Enum.ScaleType.Slice
FillAll.SliceCenter = Rect.new(80, 60, 102, 60)

Lock.Name = "Lock"
Lock.Parent = FillAll
Lock.AnchorPoint = Vector2.new(0, 0.5)
Lock.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Lock.BackgroundTransparency = 1.000
Lock.BorderSizePixel = 0
Lock.Position = UDim2.new(0.0199999996, 0, 0.529999971, 0)
Lock.Size = UDim2.new(0.666999996, 0, 0.666999996, 0)
Lock.SizeConstraint = Enum.SizeConstraint.RelativeYY
Lock.Image = "rbxassetid://8194803806"
Lock.ScaleType = Enum.ScaleType.Fit

Info_2.Name = "Info"
Info_2.Parent = FillAll
Info_2.AnchorPoint = Vector2.new(0, 0.5)
Info_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Info_2.BackgroundTransparency = 1.000
Info_2.BorderSizePixel = 0
Info_2.Position = UDim2.new(0.25, 0, 0.5, 0)
Info_2.Size = UDim2.new(0.75, 0, 0.899999976, 0)
Info_2.Text = "Insert extra cards with one click"
Info_2.TextColor3 = Color3.fromRGB(249, 254, 255)
Info_2.TextScaled = true
Info_2.TextSize = 16.000
Info_2.TextStrokeColor3 = Color3.fromRGB(0, 221, 255)
Info_2.TextStrokeTransparency = 0.000
Info_2.TextWrapped = true

Title_3.Name = "Title"
Title_3.Parent = TreasureFrame
Title_3.BackgroundColor3 = Color3.fromRGB(208, 249, 249)
Title_3.BorderSizePixel = 0
Title_3.ClipsDescendants = true
Title_3.Position = UDim2.new(0.0169999469, 0, 0.166244417, 0)
Title_3.Size = UDim2.new(0.541999996, 0, 0.612096429, 0)
Title_3.ZIndex = 3
Title_3.Font = Enum.Font.FredokaOne
Title_3.Text = "Collect Treasure Chests"
Title_3.TextColor3 = Color3.fromRGB(255, 116, 168)
Title_3.TextScaled = true
Title_3.TextSize = 50.000
Title_3.TextWrapped = true
Title_3.TextXAlignment = Enum.TextXAlignment.Left

UIAspectRatioConstraint.Parent = TreasureFrame
UIAspectRatioConstraint.AspectRatio = 10.000

EggsFrame.Name = "EggsFrame"
EggsFrame.Parent = Right
EggsFrame.Active = true
EggsFrame.BackgroundColor3 = Color3.fromRGB(208, 249, 249)
EggsFrame.BorderSizePixel = 0
EggsFrame.Size = UDim2.new(1, 0, 0.300000012, 0)

Right_3.Name = "Right"
Right_3.Parent = EggsFrame
Right_3.AnchorPoint = Vector2.new(0, 1)
Right_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Right_3.BackgroundTransparency = 1.000
Right_3.BorderSizePixel = 0
Right_3.Position = UDim2.new(0.74999994, 0, 0.679825783, 0)
Right_3.Size = UDim2.new(0.25000003, 0, 0.479825675, 0)
Right_3.ZIndex = 2

Button_2.Name = "Button"
Button_2.Parent = Right_3
Button_2.AnchorPoint = Vector2.new(0.5, 0)
Button_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button_2.BackgroundTransparency = 1.000
Button_2.BorderSizePixel = 0
Button_2.Position = UDim2.new(0.460000008, 0, 0.330000013, 0)
Button_2.Size = UDim2.new(0.899999976, 0, 0.666999996, 0)
Button_2.Image = "rbxassetid://8635500001"
Button_2.ScaleType = Enum.ScaleType.Slice
Button_2.SliceCenter = Rect.new(80, 60, 102, 60)

EggsButton.Name = "EggsButton"
EggsButton.Parent = Button_2
EggsButton.AnchorPoint = Vector2.new(0.5, 0.5)
EggsButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EggsButton.BackgroundTransparency = 1.000
EggsButton.BorderSizePixel = 0
EggsButton.Position = UDim2.new(0.5, 0, 0.400000006, 0)
EggsButton.Size = UDim2.new(1, 0, 1, 0)
EggsButton.Image = "rbxassetid://8635500190"
EggsButton.ScaleType = Enum.ScaleType.Slice
EggsButton.SliceCenter = Rect.new(80, 60, 102, 60)

TextLabel_2.Parent = EggsButton
TextLabel_2.AnchorPoint = Vector2.new(0, 0.5)
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.0611788183, 0, 0.545740366, 0)
TextLabel_2.Size = UDim2.new(0.892436922, 0, 0.808519542, 0)
TextLabel_2.Font = Enum.Font.FredokaOne
TextLabel_2.Text = "Enable"
TextLabel_2.TextColor3 = Color3.fromRGB(249, 254, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 16.000
TextLabel_2.TextStrokeColor3 = Color3.fromRGB(0, 221, 255)
TextLabel_2.TextStrokeTransparency = 0.000
TextLabel_2.TextWrapped = true

Info_3.Name = "Info"
Info_3.Parent = Right_3
Info_3.AnchorPoint = Vector2.new(0.5, 0)
Info_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Info_3.BackgroundTransparency = 1.000
Info_3.BorderSizePixel = 0
Info_3.Position = UDim2.new(0.5, 0, 0.330000013, 0)
Info_3.Size = UDim2.new(0.899999976, 0, 0.666999996, 0)
Info_3.Visible = false
Info_3.ZIndex = 2
Info_3.Image = "rbxassetid://8202307405"
Info_3.ImageTransparency = 1.000
Info_3.ScaleType = Enum.ScaleType.Slice
Info_3.SliceCenter = Rect.new(80, 60, 102, 60)

FillAll_2.Name = "FillAll"
FillAll_2.Parent = Info_3
FillAll_2.AnchorPoint = Vector2.new(0.5, 0.5)
FillAll_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FillAll_2.BackgroundTransparency = 1.000
FillAll_2.BorderSizePixel = 0
FillAll_2.Position = UDim2.new(0.5, 0, 0.400000006, 0)
FillAll_2.Size = UDim2.new(1, 0, 1, 0)
FillAll_2.Image = "rbxassetid://8202307534"
FillAll_2.ScaleType = Enum.ScaleType.Slice
FillAll_2.SliceCenter = Rect.new(80, 60, 102, 60)

Lock_2.Name = "Lock"
Lock_2.Parent = FillAll_2
Lock_2.AnchorPoint = Vector2.new(0, 0.5)
Lock_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Lock_2.BackgroundTransparency = 1.000
Lock_2.BorderSizePixel = 0
Lock_2.Position = UDim2.new(0.0199999996, 0, 0.529999971, 0)
Lock_2.Size = UDim2.new(0.666999996, 0, 0.666999996, 0)
Lock_2.SizeConstraint = Enum.SizeConstraint.RelativeYY
Lock_2.Image = "rbxassetid://8194803806"
Lock_2.ScaleType = Enum.ScaleType.Fit

Info_4.Name = "Info"
Info_4.Parent = FillAll_2
Info_4.AnchorPoint = Vector2.new(0, 0.5)
Info_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Info_4.BackgroundTransparency = 1.000
Info_4.BorderSizePixel = 0
Info_4.Position = UDim2.new(0.25, 0, 0.5, 0)
Info_4.Size = UDim2.new(0.75, 0, 0.899999976, 0)
Info_4.Text = "Insert extra cards with one click"
Info_4.TextColor3 = Color3.fromRGB(249, 254, 255)
Info_4.TextScaled = true
Info_4.TextSize = 16.000
Info_4.TextStrokeColor3 = Color3.fromRGB(0, 221, 255)
Info_4.TextStrokeTransparency = 0.000
Info_4.TextWrapped = true

Title_4.Name = "Title"
Title_4.Parent = EggsFrame
Title_4.BackgroundColor3 = Color3.fromRGB(208, 249, 249)
Title_4.BorderSizePixel = 0
Title_4.ClipsDescendants = true
Title_4.Position = UDim2.new(0.0169999469, 0, 0.166244417, 0)
Title_4.Size = UDim2.new(0.541999996, 0, 0.612096429, 0)
Title_4.ZIndex = 3
Title_4.Font = Enum.Font.FredokaOne
Title_4.Text = "Collect Eggs"
Title_4.TextColor3 = Color3.fromRGB(255, 116, 168)
Title_4.TextScaled = true
Title_4.TextSize = 50.000
Title_4.TextWrapped = true
Title_4.TextXAlignment = Enum.TextXAlignment.Left

UIAspectRatioConstraint_2.Parent = EggsFrame
UIAspectRatioConstraint_2.AspectRatio = 10.000

AutoFeed.Name = "AutoFeed"
AutoFeed.Parent = Right
AutoFeed.Active = true
AutoFeed.BackgroundColor3 = Color3.fromRGB(208, 249, 249)
AutoFeed.BorderSizePixel = 0
AutoFeed.Size = UDim2.new(1, 0, 0.300000012, 0)

Right_4.Name = "Right"
Right_4.Parent = AutoFeed
Right_4.AnchorPoint = Vector2.new(0, 1)
Right_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Right_4.BackgroundTransparency = 1.000
Right_4.BorderSizePixel = 0
Right_4.Position = UDim2.new(0.74999994, 0, 0.679825783, 0)
Right_4.Size = UDim2.new(0.25000003, 0, 0.479825675, 0)
Right_4.ZIndex = 2

Button_3.Name = "Button"
Button_3.Parent = Right_4
Button_3.AnchorPoint = Vector2.new(0.5, 0)
Button_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button_3.BackgroundTransparency = 1.000
Button_3.BorderSizePixel = 0
Button_3.Position = UDim2.new(0.460000008, 0, 0.330000013, 0)
Button_3.Size = UDim2.new(0.899999976, 0, 0.666999996, 0)
Button_3.Image = "rbxassetid://8635500001"
Button_3.ScaleType = Enum.ScaleType.Slice
Button_3.SliceCenter = Rect.new(80, 60, 102, 60)

AutoFeedButton.Name = "AutoFeedButton"
AutoFeedButton.Parent = Button_3
AutoFeedButton.AnchorPoint = Vector2.new(0.5, 0.5)
AutoFeedButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoFeedButton.BackgroundTransparency = 1.000
AutoFeedButton.BorderSizePixel = 0
AutoFeedButton.Position = UDim2.new(0.5, 0, 0.400000006, 0)
AutoFeedButton.Size = UDim2.new(1, 0, 1, 0)
AutoFeedButton.Image = "rbxassetid://8635500190"
AutoFeedButton.ScaleType = Enum.ScaleType.Slice
AutoFeedButton.SliceCenter = Rect.new(80, 60, 102, 60)

TextLabel_3.Parent = AutoFeedButton
TextLabel_3.AnchorPoint = Vector2.new(0, 0.5)
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.0611788183, 0, 0.545740366, 0)
TextLabel_3.Size = UDim2.new(0.892436922, 0, 0.808519542, 0)
TextLabel_3.Font = Enum.Font.FredokaOne
TextLabel_3.Text = "Enable"
TextLabel_3.TextColor3 = Color3.fromRGB(249, 254, 255)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 16.000
TextLabel_3.TextStrokeColor3 = Color3.fromRGB(0, 221, 255)
TextLabel_3.TextStrokeTransparency = 0.000
TextLabel_3.TextWrapped = true

Info_5.Name = "Info"
Info_5.Parent = Right_4
Info_5.AnchorPoint = Vector2.new(0.5, 0)
Info_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Info_5.BackgroundTransparency = 1.000
Info_5.BorderSizePixel = 0
Info_5.Position = UDim2.new(0.5, 0, 0.330000013, 0)
Info_5.Size = UDim2.new(0.899999976, 0, 0.666999996, 0)
Info_5.Visible = false
Info_5.ZIndex = 2
Info_5.Image = "rbxassetid://8202307405"
Info_5.ImageTransparency = 1.000
Info_5.ScaleType = Enum.ScaleType.Slice
Info_5.SliceCenter = Rect.new(80, 60, 102, 60)

FillAll_3.Name = "FillAll"
FillAll_3.Parent = Info_5
FillAll_3.AnchorPoint = Vector2.new(0.5, 0.5)
FillAll_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FillAll_3.BackgroundTransparency = 1.000
FillAll_3.BorderSizePixel = 0
FillAll_3.Position = UDim2.new(0.5, 0, 0.400000006, 0)
FillAll_3.Size = UDim2.new(1, 0, 1, 0)
FillAll_3.Image = "rbxassetid://8202307534"
FillAll_3.ScaleType = Enum.ScaleType.Slice
FillAll_3.SliceCenter = Rect.new(80, 60, 102, 60)

Lock_3.Name = "Lock"
Lock_3.Parent = FillAll_3
Lock_3.AnchorPoint = Vector2.new(0, 0.5)
Lock_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Lock_3.BackgroundTransparency = 1.000
Lock_3.BorderSizePixel = 0
Lock_3.Position = UDim2.new(0.0199999996, 0, 0.529999971, 0)
Lock_3.Size = UDim2.new(0.666999996, 0, 0.666999996, 0)
Lock_3.SizeConstraint = Enum.SizeConstraint.RelativeYY
Lock_3.Image = "rbxassetid://8194803806"
Lock_3.ScaleType = Enum.ScaleType.Fit

Info_6.Name = "Info"
Info_6.Parent = FillAll_3
Info_6.AnchorPoint = Vector2.new(0, 0.5)
Info_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Info_6.BackgroundTransparency = 1.000
Info_6.BorderSizePixel = 0
Info_6.Position = UDim2.new(0.25, 0, 0.5, 0)
Info_6.Size = UDim2.new(0.75, 0, 0.899999976, 0)
Info_6.Text = "Insert extra cards with one click"
Info_6.TextColor3 = Color3.fromRGB(249, 254, 255)
Info_6.TextScaled = true
Info_6.TextSize = 16.000
Info_6.TextStrokeColor3 = Color3.fromRGB(0, 221, 255)
Info_6.TextStrokeTransparency = 0.000
Info_6.TextWrapped = true

Title_5.Name = "Title"
Title_5.Parent = AutoFeed
Title_5.BackgroundColor3 = Color3.fromRGB(208, 249, 249)
Title_5.BorderSizePixel = 0
Title_5.ClipsDescendants = true
Title_5.Position = UDim2.new(0.0169999469, 0, 0.166244417, 0)
Title_5.Size = UDim2.new(0.541999996, 0, 0.612096429, 0)
Title_5.ZIndex = 3
Title_5.Font = Enum.Font.FredokaOne
Title_5.Text = "Feed Workers"
Title_5.TextColor3 = Color3.fromRGB(255, 116, 168)
Title_5.TextScaled = true
Title_5.TextSize = 50.000
Title_5.TextWrapped = true
Title_5.TextXAlignment = Enum.TextXAlignment.Left

UIAspectRatioConstraint_3.Parent = AutoFeed
UIAspectRatioConstraint_3.AspectRatio = 10.000

Deco2.Name = "Deco2"
Deco2.Parent = Content
Deco2.AnchorPoint = Vector2.new(0.5, 0.5)
Deco2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Deco2.BackgroundTransparency = 1.000
Deco2.BorderSizePixel = 0
Deco2.ClipsDescendants = true
Deco2.Position = UDim2.new(0.5, 0, 0.5, 0)
Deco2.Size = UDim2.new(0.939999998, 0, 0.899999976, 0)
Deco2.Image = "rbxassetid://8194801320"
Deco2.ScaleType = Enum.ScaleType.Slice
Deco2.SliceCenter = Rect.new(20, 400, 73, 400)

ContentTab2.Name = "ContentTab2"
ContentTab2.Parent = Content
ContentTab2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ContentTab2.BackgroundTransparency = 1.000
ContentTab2.BorderSizePixel = 0
ContentTab2.Position = UDim2.new(0.0350000262, 0, 0.25, 0)
ContentTab2.Size = UDim2.new(0.929999888, 0, 0.699999988, 0)
ContentTab2.Visible = false
ContentTab2.ZIndex = 2
ContentTab2.Image = "rbxassetid://8249353236"
ContentTab2.ScaleType = Enum.ScaleType.Slice
ContentTab2.SliceCenter = Rect.new(10, 10, 81, 57)

Right_5.Name = "Right"
Right_5.Parent = ContentTab2
Right_5.Active = true
Right_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Right_5.BackgroundTransparency = 1.000
Right_5.BorderSizePixel = 0
Right_5.Size = UDim2.new(0.998224556, 0, 0.99310118, 0)
Right_5.ZIndex = 2
Right_5.BottomImage = ""
Right_5.CanvasSize = UDim2.new(1, 0, 0.899999976, 0)
Right_5.ScrollBarThickness = 10
Right_5.TopImage = ""
Right_5.VerticalScrollBarInset = Enum.ScrollBarInset.Always

UIListLayout_6.Parent = Right_5
UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_6.Padding = UDim.new(0.0500000007, 0)

KuromiFrame.Name = "KuromiFrame"
KuromiFrame.Parent = Right_5
KuromiFrame.Active = true
KuromiFrame.BackgroundColor3 = Color3.fromRGB(208, 249, 249)
KuromiFrame.BorderSizePixel = 0
KuromiFrame.Size = UDim2.new(1, 0, 0.300000012, 0)

Right_6.Name = "Right"
Right_6.Parent = KuromiFrame
Right_6.AnchorPoint = Vector2.new(0, 1)
Right_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Right_6.BackgroundTransparency = 1.000
Right_6.BorderSizePixel = 0
Right_6.Position = UDim2.new(0.74999994, 0, 0.679825783, 0)
Right_6.Size = UDim2.new(0.25000003, 0, 0.479825675, 0)
Right_6.ZIndex = 2

Button_4.Name = "Button"
Button_4.Parent = Right_6
Button_4.AnchorPoint = Vector2.new(0.5, 0)
Button_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button_4.BackgroundTransparency = 1.000
Button_4.BorderSizePixel = 0
Button_4.Position = UDim2.new(0.460000008, 0, 0.330000013, 0)
Button_4.Size = UDim2.new(0.899999976, 0, 0.666999996, 0)
Button_4.Image = "rbxassetid://8635500001"
Button_4.ScaleType = Enum.ScaleType.Slice
Button_4.SliceCenter = Rect.new(80, 60, 102, 60)

KuromiButton.Name = "KuromiButton"
KuromiButton.Parent = Button_4
KuromiButton.AnchorPoint = Vector2.new(0.5, 0.5)
KuromiButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KuromiButton.BackgroundTransparency = 1.000
KuromiButton.BorderSizePixel = 0
KuromiButton.Position = UDim2.new(0.5, 0, 0.400000006, 0)
KuromiButton.Size = UDim2.new(1, 0, 1, 0)
KuromiButton.Image = "rbxassetid://8635500190"
KuromiButton.ScaleType = Enum.ScaleType.Slice
KuromiButton.SliceCenter = Rect.new(80, 60, 102, 60)

TextLabel_4.Parent = KuromiButton
TextLabel_4.AnchorPoint = Vector2.new(0, 0.5)
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0.0611788183, 0, 0.545740366, 0)
TextLabel_4.Size = UDim2.new(0.892436922, 0, 0.808519542, 0)
TextLabel_4.Font = Enum.Font.FredokaOne
TextLabel_4.Text = "Enable"
TextLabel_4.TextColor3 = Color3.fromRGB(249, 254, 255)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 16.000
TextLabel_4.TextStrokeColor3 = Color3.fromRGB(0, 221, 255)
TextLabel_4.TextStrokeTransparency = 0.000
TextLabel_4.TextWrapped = true

Info_7.Name = "Info"
Info_7.Parent = Right_6
Info_7.AnchorPoint = Vector2.new(0.5, 0)
Info_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Info_7.BackgroundTransparency = 1.000
Info_7.BorderSizePixel = 0
Info_7.Position = UDim2.new(0.5, 0, 0.330000013, 0)
Info_7.Size = UDim2.new(0.899999976, 0, 0.666999996, 0)
Info_7.Visible = false
Info_7.ZIndex = 2
Info_7.Image = "rbxassetid://8202307405"
Info_7.ImageTransparency = 1.000
Info_7.ScaleType = Enum.ScaleType.Slice
Info_7.SliceCenter = Rect.new(80, 60, 102, 60)

FillAll_4.Name = "FillAll"
FillAll_4.Parent = Info_7
FillAll_4.AnchorPoint = Vector2.new(0.5, 0.5)
FillAll_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FillAll_4.BackgroundTransparency = 1.000
FillAll_4.BorderSizePixel = 0
FillAll_4.Position = UDim2.new(0.5, 0, 0.400000006, 0)
FillAll_4.Size = UDim2.new(1, 0, 1, 0)
FillAll_4.Image = "rbxassetid://8202307534"
FillAll_4.ScaleType = Enum.ScaleType.Slice
FillAll_4.SliceCenter = Rect.new(80, 60, 102, 60)

Lock_4.Name = "Lock"
Lock_4.Parent = FillAll_4
Lock_4.AnchorPoint = Vector2.new(0, 0.5)
Lock_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Lock_4.BackgroundTransparency = 1.000
Lock_4.BorderSizePixel = 0
Lock_4.Position = UDim2.new(0.0199999996, 0, 0.529999971, 0)
Lock_4.Size = UDim2.new(0.666999996, 0, 0.666999996, 0)
Lock_4.SizeConstraint = Enum.SizeConstraint.RelativeYY
Lock_4.Image = "rbxassetid://8194803806"
Lock_4.ScaleType = Enum.ScaleType.Fit

Info_8.Name = "Info"
Info_8.Parent = FillAll_4
Info_8.AnchorPoint = Vector2.new(0, 0.5)
Info_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Info_8.BackgroundTransparency = 1.000
Info_8.BorderSizePixel = 0
Info_8.Position = UDim2.new(0.25, 0, 0.5, 0)
Info_8.Size = UDim2.new(0.75, 0, 0.899999976, 0)
Info_8.Text = "Insert extra cards with one click"
Info_8.TextColor3 = Color3.fromRGB(249, 254, 255)
Info_8.TextScaled = true
Info_8.TextSize = 16.000
Info_8.TextStrokeColor3 = Color3.fromRGB(0, 221, 255)
Info_8.TextStrokeTransparency = 0.000
Info_8.TextWrapped = true

Title_6.Name = "Title"
Title_6.Parent = KuromiFrame
Title_6.BackgroundColor3 = Color3.fromRGB(208, 249, 249)
Title_6.BorderSizePixel = 0
Title_6.ClipsDescendants = true
Title_6.Position = UDim2.new(0.0169999469, 0, 0.166244417, 0)
Title_6.Size = UDim2.new(0.541999996, 0, 0.612096429, 0)
Title_6.ZIndex = 3
Title_6.Font = Enum.Font.FredokaOne
Title_6.Text = "Auto Kuromi's Spooky Cafe"
Title_6.TextColor3 = Color3.fromRGB(255, 116, 168)
Title_6.TextScaled = true
Title_6.TextSize = 50.000
Title_6.TextWrapped = true
Title_6.TextXAlignment = Enum.TextXAlignment.Left

UIAspectRatioConstraint_4.Parent = KuromiFrame
UIAspectRatioConstraint_4.AspectRatio = 10.000

DessertFrame.Name = "DessertFrame"
DessertFrame.Parent = Right_5
DessertFrame.Active = true
DessertFrame.BackgroundColor3 = Color3.fromRGB(208, 249, 249)
DessertFrame.BorderSizePixel = 0
DessertFrame.Size = UDim2.new(1, 0, 0.300000012, 0)

Right_7.Name = "Right"
Right_7.Parent = DessertFrame
Right_7.AnchorPoint = Vector2.new(0, 1)
Right_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Right_7.BackgroundTransparency = 1.000
Right_7.BorderSizePixel = 0
Right_7.Position = UDim2.new(0.74999994, 0, 0.679825783, 0)
Right_7.Size = UDim2.new(0.25000003, 0, 0.479825675, 0)
Right_7.ZIndex = 2

Button_5.Name = "Button"
Button_5.Parent = Right_7
Button_5.AnchorPoint = Vector2.new(0.5, 0)
Button_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button_5.BackgroundTransparency = 1.000
Button_5.BorderSizePixel = 0
Button_5.Position = UDim2.new(0.460000008, 0, 0.330000013, 0)
Button_5.Size = UDim2.new(0.899999976, 0, 0.666999996, 0)
Button_5.Image = "rbxassetid://8635500001"
Button_5.ScaleType = Enum.ScaleType.Slice
Button_5.SliceCenter = Rect.new(80, 60, 102, 60)

DessertButton.Name = "DessertButton"
DessertButton.Parent = Button_5
DessertButton.AnchorPoint = Vector2.new(0.5, 0.5)
DessertButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DessertButton.BackgroundTransparency = 1.000
DessertButton.BorderSizePixel = 0
DessertButton.Position = UDim2.new(0.5, 0, 0.400000006, 0)
DessertButton.Size = UDim2.new(1, 0, 1, 0)
DessertButton.Image = "rbxassetid://8635500190"
DessertButton.ScaleType = Enum.ScaleType.Slice
DessertButton.SliceCenter = Rect.new(80, 60, 102, 60)

TextLabel_5.Parent = DessertButton
TextLabel_5.AnchorPoint = Vector2.new(0, 0.5)
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Position = UDim2.new(0.0611788183, 0, 0.545740366, 0)
TextLabel_5.Size = UDim2.new(0.892436922, 0, 0.808519542, 0)
TextLabel_5.Font = Enum.Font.FredokaOne
TextLabel_5.Text = "Enable"
TextLabel_5.TextColor3 = Color3.fromRGB(249, 254, 255)
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 16.000
TextLabel_5.TextStrokeColor3 = Color3.fromRGB(0, 221, 255)
TextLabel_5.TextStrokeTransparency = 0.000
TextLabel_5.TextWrapped = true

Info_9.Name = "Info"
Info_9.Parent = Right_7
Info_9.AnchorPoint = Vector2.new(0.5, 0)
Info_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Info_9.BackgroundTransparency = 1.000
Info_9.BorderSizePixel = 0
Info_9.Position = UDim2.new(0.5, 0, 0.330000013, 0)
Info_9.Size = UDim2.new(0.899999976, 0, 0.666999996, 0)
Info_9.Visible = false
Info_9.ZIndex = 2
Info_9.Image = "rbxassetid://8202307405"
Info_9.ImageTransparency = 1.000
Info_9.ScaleType = Enum.ScaleType.Slice
Info_9.SliceCenter = Rect.new(80, 60, 102, 60)

FillAll_5.Name = "FillAll"
FillAll_5.Parent = Info_9
FillAll_5.AnchorPoint = Vector2.new(0.5, 0.5)
FillAll_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FillAll_5.BackgroundTransparency = 1.000
FillAll_5.BorderSizePixel = 0
FillAll_5.Position = UDim2.new(0.5, 0, 0.400000006, 0)
FillAll_5.Size = UDim2.new(1, 0, 1, 0)
FillAll_5.Image = "rbxassetid://8202307534"
FillAll_5.ScaleType = Enum.ScaleType.Slice
FillAll_5.SliceCenter = Rect.new(80, 60, 102, 60)

Lock_5.Name = "Lock"
Lock_5.Parent = FillAll_5
Lock_5.AnchorPoint = Vector2.new(0, 0.5)
Lock_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Lock_5.BackgroundTransparency = 1.000
Lock_5.BorderSizePixel = 0
Lock_5.Position = UDim2.new(0.0199999996, 0, 0.529999971, 0)
Lock_5.Size = UDim2.new(0.666999996, 0, 0.666999996, 0)
Lock_5.SizeConstraint = Enum.SizeConstraint.RelativeYY
Lock_5.Image = "rbxassetid://8194803806"
Lock_5.ScaleType = Enum.ScaleType.Fit

Info_10.Name = "Info"
Info_10.Parent = FillAll_5
Info_10.AnchorPoint = Vector2.new(0, 0.5)
Info_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Info_10.BackgroundTransparency = 1.000
Info_10.BorderSizePixel = 0
Info_10.Position = UDim2.new(0.25, 0, 0.5, 0)
Info_10.Size = UDim2.new(0.75, 0, 0.899999976, 0)
Info_10.Text = "Insert extra cards with one click"
Info_10.TextColor3 = Color3.fromRGB(249, 254, 255)
Info_10.TextScaled = true
Info_10.TextSize = 16.000
Info_10.TextStrokeColor3 = Color3.fromRGB(0, 221, 255)
Info_10.TextStrokeTransparency = 0.000
Info_10.TextWrapped = true

Title_7.Name = "Title"
Title_7.Parent = DessertFrame
Title_7.BackgroundColor3 = Color3.fromRGB(208, 249, 249)
Title_7.BorderSizePixel = 0
Title_7.ClipsDescendants = true
Title_7.Position = UDim2.new(0.0169999469, 0, 0.166244417, 0)
Title_7.Size = UDim2.new(0.541999996, 0, 0.612096429, 0)
Title_7.ZIndex = 3
Title_7.Font = Enum.Font.FredokaOne
Title_7.Text = "Auto Dessert Party"
Title_7.TextColor3 = Color3.fromRGB(255, 116, 168)
Title_7.TextScaled = true
Title_7.TextSize = 50.000
Title_7.TextWrapped = true
Title_7.TextXAlignment = Enum.TextXAlignment.Left

UIAspectRatioConstraint_5.Parent = DessertFrame
UIAspectRatioConstraint_5.AspectRatio = 10.000

ContentTab3.Name = "ContentTab3"
ContentTab3.Parent = Content
ContentTab3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ContentTab3.BackgroundTransparency = 1.000
ContentTab3.BorderSizePixel = 0
ContentTab3.Position = UDim2.new(0.0350000262, 0, 0.25, 0)
ContentTab3.Size = UDim2.new(0.929999888, 0, 0.699999988, 0)
ContentTab3.Visible = false
ContentTab3.ZIndex = 2
ContentTab3.Image = "rbxassetid://8249353236"
ContentTab3.ScaleType = Enum.ScaleType.Slice
ContentTab3.SliceCenter = Rect.new(10, 10, 81, 57)

Right_8.Name = "Right"
Right_8.Parent = ContentTab3
Right_8.Active = true
Right_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Right_8.BackgroundTransparency = 1.000
Right_8.BorderSizePixel = 0
Right_8.Size = UDim2.new(0.998224556, 0, 0.99310118, 0)
Right_8.ZIndex = 2
Right_8.BottomImage = ""
Right_8.CanvasSize = UDim2.new(1, 0, 0.899999976, 0)
Right_8.ScrollBarThickness = 10
Right_8.TopImage = ""
Right_8.VerticalScrollBarInset = Enum.ScrollBarInset.Always

UIListLayout_7.Parent = Right_8
UIListLayout_7.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_7.Padding = UDim.new(0.0500000007, 0)

AntiAFKFrame.Name = "AntiAFKFrame"
AntiAFKFrame.Parent = Right_8
AntiAFKFrame.Active = true
AntiAFKFrame.BackgroundColor3 = Color3.fromRGB(208, 249, 249)
AntiAFKFrame.BorderSizePixel = 0
AntiAFKFrame.Size = UDim2.new(1, 0, 0.300000012, 0)

Right_9.Name = "Right"
Right_9.Parent = AntiAFKFrame
Right_9.AnchorPoint = Vector2.new(0, 1)
Right_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Right_9.BackgroundTransparency = 1.000
Right_9.BorderSizePixel = 0
Right_9.Position = UDim2.new(0.74999994, 0, 0.679825783, 0)
Right_9.Size = UDim2.new(0.25000003, 0, 0.479825675, 0)
Right_9.ZIndex = 2

Button_6.Name = "Button"
Button_6.Parent = Right_9
Button_6.AnchorPoint = Vector2.new(0.5, 0)
Button_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button_6.BackgroundTransparency = 1.000
Button_6.BorderSizePixel = 0
Button_6.Position = UDim2.new(0.460000008, 0, 0.330000013, 0)
Button_6.Size = UDim2.new(0.899999976, 0, 0.666999996, 0)
Button_6.Image = "rbxassetid://8635500001"
Button_6.ScaleType = Enum.ScaleType.Slice
Button_6.SliceCenter = Rect.new(80, 60, 102, 60)

AntiAFKButton.Name = "AntiAFKButton"
AntiAFKButton.Parent = Button_6
AntiAFKButton.AnchorPoint = Vector2.new(0.5, 0.5)
AntiAFKButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AntiAFKButton.BackgroundTransparency = 1.000
AntiAFKButton.BorderSizePixel = 0
AntiAFKButton.Position = UDim2.new(0.5, 0, 0.400000006, 0)
AntiAFKButton.Size = UDim2.new(1, 0, 1, 0)
AntiAFKButton.Image = "rbxassetid://8635500190"
AntiAFKButton.ScaleType = Enum.ScaleType.Slice
AntiAFKButton.SliceCenter = Rect.new(80, 60, 102, 60)

TextLabel_6.Parent = AntiAFKButton
TextLabel_6.AnchorPoint = Vector2.new(0, 0.5)
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.BackgroundTransparency = 1.000
TextLabel_6.BorderSizePixel = 0
TextLabel_6.Position = UDim2.new(0.0611788183, 0, 0.545740366, 0)
TextLabel_6.Size = UDim2.new(0.892436922, 0, 0.808519542, 0)
TextLabel_6.Font = Enum.Font.FredokaOne
TextLabel_6.Text = "Enable"
TextLabel_6.TextColor3 = Color3.fromRGB(249, 254, 255)
TextLabel_6.TextScaled = true
TextLabel_6.TextSize = 16.000
TextLabel_6.TextStrokeColor3 = Color3.fromRGB(0, 221, 255)
TextLabel_6.TextStrokeTransparency = 0.000
TextLabel_6.TextWrapped = true

Info_11.Name = "Info"
Info_11.Parent = Right_9
Info_11.AnchorPoint = Vector2.new(0.5, 0)
Info_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Info_11.BackgroundTransparency = 1.000
Info_11.BorderSizePixel = 0
Info_11.Position = UDim2.new(0.5, 0, 0.330000013, 0)
Info_11.Size = UDim2.new(0.899999976, 0, 0.666999996, 0)
Info_11.Visible = false
Info_11.ZIndex = 2
Info_11.Image = "rbxassetid://8202307405"
Info_11.ImageTransparency = 1.000
Info_11.ScaleType = Enum.ScaleType.Slice
Info_11.SliceCenter = Rect.new(80, 60, 102, 60)

FillAll_6.Name = "FillAll"
FillAll_6.Parent = Info_11
FillAll_6.AnchorPoint = Vector2.new(0.5, 0.5)
FillAll_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FillAll_6.BackgroundTransparency = 1.000
FillAll_6.BorderSizePixel = 0
FillAll_6.Position = UDim2.new(0.5, 0, 0.400000006, 0)
FillAll_6.Size = UDim2.new(1, 0, 1, 0)
FillAll_6.Image = "rbxassetid://8202307534"
FillAll_6.ScaleType = Enum.ScaleType.Slice
FillAll_6.SliceCenter = Rect.new(80, 60, 102, 60)

Lock_6.Name = "Lock"
Lock_6.Parent = FillAll_6
Lock_6.AnchorPoint = Vector2.new(0, 0.5)
Lock_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Lock_6.BackgroundTransparency = 1.000
Lock_6.BorderSizePixel = 0
Lock_6.Position = UDim2.new(0.0199999996, 0, 0.529999971, 0)
Lock_6.Size = UDim2.new(0.666999996, 0, 0.666999996, 0)
Lock_6.SizeConstraint = Enum.SizeConstraint.RelativeYY
Lock_6.Image = "rbxassetid://8194803806"
Lock_6.ScaleType = Enum.ScaleType.Fit

Info_12.Name = "Info"
Info_12.Parent = FillAll_6
Info_12.AnchorPoint = Vector2.new(0, 0.5)
Info_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Info_12.BackgroundTransparency = 1.000
Info_12.BorderSizePixel = 0
Info_12.Position = UDim2.new(0.25, 0, 0.5, 0)
Info_12.Size = UDim2.new(0.75, 0, 0.899999976, 0)
Info_12.Text = "Insert extra cards with one click"
Info_12.TextColor3 = Color3.fromRGB(249, 254, 255)
Info_12.TextScaled = true
Info_12.TextSize = 16.000
Info_12.TextStrokeColor3 = Color3.fromRGB(0, 221, 255)
Info_12.TextStrokeTransparency = 0.000
Info_12.TextWrapped = true

Title_8.Name = "Title"
Title_8.Parent = AntiAFKFrame
Title_8.BackgroundColor3 = Color3.fromRGB(208, 249, 249)
Title_8.BorderSizePixel = 0
Title_8.ClipsDescendants = true
Title_8.Position = UDim2.new(0.0169999469, 0, 0.166244417, 0)
Title_8.Size = UDim2.new(0.541999996, 0, 0.612096429, 0)
Title_8.ZIndex = 3
Title_8.Font = Enum.Font.FredokaOne
Title_8.Text = "Anti AFK Kick"
Title_8.TextColor3 = Color3.fromRGB(255, 116, 168)
Title_8.TextScaled = true
Title_8.TextSize = 50.000
Title_8.TextWrapped = true
Title_8.TextXAlignment = Enum.TextXAlignment.Left

UIAspectRatioConstraint_6.Parent = AntiAFKFrame
UIAspectRatioConstraint_6.AspectRatio = 10.000

ToggleRenderingFrame.Name = "ToggleRenderingFrame"
ToggleRenderingFrame.Parent = Right_8
ToggleRenderingFrame.Active = true
ToggleRenderingFrame.BackgroundColor3 = Color3.fromRGB(208, 249, 249)
ToggleRenderingFrame.BorderSizePixel = 0
ToggleRenderingFrame.Size = UDim2.new(1, 0, 0.300000012, 0)

Right_10.Name = "Right"
Right_10.Parent = ToggleRenderingFrame
Right_10.AnchorPoint = Vector2.new(0, 1)
Right_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Right_10.BackgroundTransparency = 1.000
Right_10.BorderSizePixel = 0
Right_10.Position = UDim2.new(0.74999994, 0, 0.679825783, 0)
Right_10.Size = UDim2.new(0.25000003, 0, 0.479825675, 0)
Right_10.ZIndex = 2

Button_7.Name = "Button"
Button_7.Parent = Right_10
Button_7.AnchorPoint = Vector2.new(0.5, 0)
Button_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button_7.BackgroundTransparency = 1.000
Button_7.BorderSizePixel = 0
Button_7.Position = UDim2.new(0.460000008, 0, 0.330000013, 0)
Button_7.Size = UDim2.new(0.899999976, 0, 0.666999996, 0)
Button_7.Image = "rbxassetid://8635500001"
Button_7.ScaleType = Enum.ScaleType.Slice
Button_7.SliceCenter = Rect.new(80, 60, 102, 60)

ToggleRenderingButton.Name = "ToggleRenderingButton"
ToggleRenderingButton.Parent = Button_7
ToggleRenderingButton.AnchorPoint = Vector2.new(0.5, 0.5)
ToggleRenderingButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleRenderingButton.BackgroundTransparency = 1.000
ToggleRenderingButton.BorderSizePixel = 0
ToggleRenderingButton.Position = UDim2.new(0.5, 0, 0.400000006, 0)
ToggleRenderingButton.Size = UDim2.new(1, 0, 1, 0)
ToggleRenderingButton.Image = "rbxassetid://8635500190"
ToggleRenderingButton.ScaleType = Enum.ScaleType.Slice
ToggleRenderingButton.SliceCenter = Rect.new(80, 60, 102, 60)

TextLabel_7.Parent = ToggleRenderingButton
TextLabel_7.AnchorPoint = Vector2.new(0, 0.5)
TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.BackgroundTransparency = 1.000
TextLabel_7.BorderSizePixel = 0
TextLabel_7.Position = UDim2.new(0.0611788183, 0, 0.545740366, 0)
TextLabel_7.Size = UDim2.new(0.892436922, 0, 0.808519542, 0)
TextLabel_7.Font = Enum.Font.FredokaOne
TextLabel_7.Text = "Enable"
TextLabel_7.TextColor3 = Color3.fromRGB(249, 254, 255)
TextLabel_7.TextScaled = true
TextLabel_7.TextSize = 16.000
TextLabel_7.TextStrokeColor3 = Color3.fromRGB(0, 221, 255)
TextLabel_7.TextStrokeTransparency = 0.000
TextLabel_7.TextWrapped = true

Info_13.Name = "Info"
Info_13.Parent = Right_10
Info_13.AnchorPoint = Vector2.new(0.5, 0)
Info_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Info_13.BackgroundTransparency = 1.000
Info_13.BorderSizePixel = 0
Info_13.Position = UDim2.new(0.5, 0, 0.330000013, 0)
Info_13.Size = UDim2.new(0.899999976, 0, 0.666999996, 0)
Info_13.Visible = false
Info_13.ZIndex = 2
Info_13.Image = "rbxassetid://8202307405"
Info_13.ImageTransparency = 1.000
Info_13.ScaleType = Enum.ScaleType.Slice
Info_13.SliceCenter = Rect.new(80, 60, 102, 60)

FillAll_7.Name = "FillAll"
FillAll_7.Parent = Info_13
FillAll_7.AnchorPoint = Vector2.new(0.5, 0.5)
FillAll_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FillAll_7.BackgroundTransparency = 1.000
FillAll_7.BorderSizePixel = 0
FillAll_7.Position = UDim2.new(0.5, 0, 0.400000006, 0)
FillAll_7.Size = UDim2.new(1, 0, 1, 0)
FillAll_7.Image = "rbxassetid://8202307534"
FillAll_7.ScaleType = Enum.ScaleType.Slice
FillAll_7.SliceCenter = Rect.new(80, 60, 102, 60)

Lock_7.Name = "Lock"
Lock_7.Parent = FillAll_7
Lock_7.AnchorPoint = Vector2.new(0, 0.5)
Lock_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Lock_7.BackgroundTransparency = 1.000
Lock_7.BorderSizePixel = 0
Lock_7.Position = UDim2.new(0.0199999996, 0, 0.529999971, 0)
Lock_7.Size = UDim2.new(0.666999996, 0, 0.666999996, 0)
Lock_7.SizeConstraint = Enum.SizeConstraint.RelativeYY
Lock_7.Image = "rbxassetid://8194803806"
Lock_7.ScaleType = Enum.ScaleType.Fit

Info_14.Name = "Info"
Info_14.Parent = FillAll_7
Info_14.AnchorPoint = Vector2.new(0, 0.5)
Info_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Info_14.BackgroundTransparency = 1.000
Info_14.BorderSizePixel = 0
Info_14.Position = UDim2.new(0.25, 0, 0.5, 0)
Info_14.Size = UDim2.new(0.75, 0, 0.899999976, 0)
Info_14.Text = "Insert extra cards with one click"
Info_14.TextColor3 = Color3.fromRGB(249, 254, 255)
Info_14.TextScaled = true
Info_14.TextSize = 16.000
Info_14.TextStrokeColor3 = Color3.fromRGB(0, 221, 255)
Info_14.TextStrokeTransparency = 0.000
Info_14.TextWrapped = true

Title_9.Name = "Title"
Title_9.Parent = ToggleRenderingFrame
Title_9.BackgroundColor3 = Color3.fromRGB(208, 249, 249)
Title_9.BorderSizePixel = 0
Title_9.ClipsDescendants = true
Title_9.Position = UDim2.new(0.0169999469, 0, 0.166244417, 0)
Title_9.Size = UDim2.new(0.541999996, 0, 0.612096429, 0)
Title_9.ZIndex = 3
Title_9.Font = Enum.Font.FredokaOne
Title_9.Text = "Disable 3D Rendering"
Title_9.TextColor3 = Color3.fromRGB(255, 116, 168)
Title_9.TextScaled = true
Title_9.TextSize = 50.000
Title_9.TextWrapped = true
Title_9.TextXAlignment = Enum.TextXAlignment.Left

UIAspectRatioConstraint_7.Parent = ToggleRenderingFrame
UIAspectRatioConstraint_7.AspectRatio = 10.000

CloseFrameButton.Name = "CloseFrameButton"
CloseFrameButton.Parent = MainFrame
CloseFrameButton.AnchorPoint = Vector2.new(0.5, 0)
CloseFrameButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloseFrameButton.BackgroundTransparency = 1.000
CloseFrameButton.BorderSizePixel = 0
CloseFrameButton.Position = UDim2.new(1, 0, -0.0500000007, 0)
CloseFrameButton.Size = UDim2.new(0.119999997, 0, 0.119999997, 0)
CloseFrameButton.SizeConstraint = Enum.SizeConstraint.RelativeYY
CloseFrameButton.Image = "rbxassetid://8194801502"


CloseFrameButton.MouseButton1Down:Connect(function()
	MainFrame.Visible = false
end)

ToggleButton.MouseButton1Down:Connect(function()
	MainFrame.Visible = not MainFrame.Visible
end)

tab1.MouseButton1Down:Connect(function()
	ContentTab1.Visible = true
	ContentTab2.Visible = false
	ContentTab3.Visible = false
end)

tab2.MouseButton1Down:Connect(function()
	ContentTab1.Visible = false
	ContentTab2.Visible = true
	ContentTab3.Visible = false
end)

tab3.MouseButton1Down:Connect(function()
	ContentTab1.Visible = false
	ContentTab2.Visible = false
	ContentTab3.Visible = true
end)

local autoGetTreasure = false
local autoGetEggs = false
local autoFeedWorkers = false
local autoKuromi = false
local autoDessert = false


TreasureButton.MouseButton1Down:Connect(function()
	if autoGetTreasure == false then
		TreasureButton.ImageColor3 = Color3.fromRGB(200, 255, 200)
		autoGetTreasure = true
	else
		TreasureButton.ImageColor3 = Color3.fromRGB(255, 255, 255)
		autoGetTreasure = false
	end
end)

EggsButton.MouseButton1Down:Connect(function()
	if autoGetEggs == false then
		EggsButton.ImageColor3 = Color3.fromRGB(200, 255, 200)
		autoGetEggs = true
	else
		EggsButton.ImageColor3 = Color3.fromRGB(255, 255, 255)
		autoGetEggs = false
	end
end)

AutoFeedButton.MouseButton1Down:Connect(function()
	if autoFeedWorkers == false then
		AutoFeedButton.ImageColor3 = Color3.fromRGB(200, 255, 200)
		autoFeedWorkers = true
	else
		AutoFeedButton.ImageColor3 = Color3.fromRGB(255, 255, 255)
		autoFeedWorkers = false
	end
end)

KuromiButton.MouseButton1Down:Connect(function()
	if autoKuromi == false then
		KuromiButton.ImageColor3 = Color3.fromRGB(200, 255, 200)
		autoKuromi = true
	else
		KuromiButton.ImageColor3 = Color3.fromRGB(255, 255, 255)
		autoKuromi = false
	end
end)

DessertButton.MouseButton1Down:Connect(function()
	if autoDessert == false then
		DessertButton.ImageColor3 = Color3.fromRGB(200, 255, 200)
		autoDessert = true
	else
		DessertButton.ImageColor3 = Color3.fromRGB(255, 255, 255)
		autoDessert = false
	end
end)

AntiAFKButton.MouseButton1Down:Connect(function()
	AntiAFKButton.ImageColor3 = Color3.fromRGB(200, 255, 200)
	spawn(function()
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
			game.Players.LocalPlayer.Idled:Connect(function()
				local VirtualUser = game:GetService("VirtualUser")
				VirtualUser:CaptureController()
				VirtualUser:ClickButton2(Vector2.new())
			end)
		end
	end)
end)


ToggleRenderingButton.MouseButton1Down:Connect(function()
	if ToggleRenderingButton.ImageColor3 == Color3.fromRGB(255, 255, 255) then
		ToggleRenderingButton.ImageColor3 = Color3.fromRGB(200, 255, 200)
		game:GetService("RunService"):Set3dRenderingEnabled(false)
	else
		ToggleRenderingButton.ImageColor3 = Color3.fromRGB(255, 255, 255)
		game:GetService("RunService"):Set3dRenderingEnabled(true)
	end
end)





spawn(function()
	while true do
		wait(0.2)
		if autoGetTreasure then
			local treasure = workspace:WaitForChild("TreasureEntity"):getChildren()
			for i=1,#treasure do
				repeat
					wait(0.1)
					if treasure[i]:findFirstChild("TreasureLid") then
						game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = treasure[i].TreasureLid.CFrame
						wait()

						local button = game:GetService("Players").LocalPlayer.PlayerGui.UIPlayer.UIPlayerInteraction["Interaction-InteractionF"].ImageButton
						local events = {"MouseButton1Click", "MouseButton1Down", "Activated"}

						for i,v in pairs(events) do
							for i,v in pairs(getconnections(button[v])) do
								v:Fire()
							end
						end
					end
				until not treasure[i]:findFirstChild("TreasureLid")
			end
		end
	end
end)


spawn(function()
	while true do
		wait(0.2)
		if autoGetEggs then
			local a = workspace.CollectItemEntity:getChildren()
			for i=1,#a do
				if a[i]:findFirstChild("Item") then
					game.Players.LocalPlayer.Character:MoveTo(a[i]:WaitForChild("Item").Position)
				end
				wait(0.4)
				a[i]:remove()
			end
		end
	end
end)



spawn(function()
	while true do
		wait(1)
		if autoFeedWorkers then
			--local allEmployees = {}
			local hiredEmployees = {}
			local hiredEmployeesIDs = {}

			local a = game.Players.LocalPlayer.PlayerGui.UIPlayer.UIEmploye.EmployeFrame.Job:getDescendants()
			for i=1,#a do
				if a[i].Name == "MingZi" and a[i].Parent.Name == "Icon" and a[i].Text ~= "" and a[i].Text ~= "HELLO KITTY" then
					table.insert(hiredEmployees, a[i].Text)
				end
			end

			local employeedata = require(game:GetService("ReplicatedStorage").GameCommon.Template.Employe)
			local translate = require(game.ReplicatedFirst.LocalizationHandle)

			local a = require(game:GetService("ReplicatedStorage").GameCommon.GameClient.ClientScene)

			for i,v in pairs(employeedata) do
				for x=1,#hiredEmployees do
					if translate:GetText(v.name, v.id) == hiredEmployees[x] then
						print(hiredEmployees[x] .. " is working for Player")
						table.insert(hiredEmployeesIDs, v.id)
					end
				end
				--print(translate:GetText(v.name, v.id))
				--table.insert(allEmployees, translate:GetText(v.name, v.id))
			end




			local gc = require(game.ReplicatedStorage.GameCommon.GameClient);
			local lcp = gc.node.localClientPlayer;
			local ammountOfVanilla = lcp.playerItem:GetHavePartItemCount(200010100);

			if ammountOfVanilla <= #hiredEmployeesIDs*25 then
				local args = {
					[1] = 1,
					[2] = 200010100,
					[3] = #hiredEmployeesIDs*25
				}

				game:GetService("ReplicatedStorage"):WaitForChild("GameCommon"):WaitForChild("Messages"):WaitForChild("BuyAndSellItem"):FireServer(unpack(args))
			end

			for i=1,#hiredEmployeesIDs do
				for i=1,25 do
					game:GetService("ReplicatedStorage").GameCommon.Messages.Employe.GiveItem:FireServer(hiredEmployeesIDs[i], 200010100)
				end
			end
			wait(60)
		end
	end
end)

spawn(function()
	if game.PlaceId == 9346060856 then
		local uigamepub = game.Players.LocalPlayer.PlayerGui:WaitForChild("UIGamePublic") -- wait for this
		local cbi = game.Players.LocalPlayer.PlayerGui:WaitForChild("ColorBlockImages") -- wait for this
		local function getBestIcon()
			local iconImage = uigamepub.UIColorBlock.ColorTips.ColorImage.Icon.Image
			local blocks = {}
			local allBlocks = cbi:getChildren()
			for i=1,#allBlocks do
				if allBlocks[i].Frame.ImageLabel1.Image == iconImage then
					table.insert(blocks, allBlocks[i].Adornee.Parent)
				end
			end

			local closest = nil
			local closestdistance = math.huge
			for i=1,#blocks do
				local distance = (blocks[i].PrimaryPart.Position - game.Players.LocalPlayer.Character.PrimaryPart.Position).Magnitude
				if closestdistance > distance then
					closestdistance = distance
					closest = blocks[i]
				end
			end
			return closest
		end


		while true do
			wait()
			if getBestIcon() ~= nil and autoDessert then
				repeat
					if (getBestIcon().PrimaryPart.Position - game.Players.LocalPlayer.Character.PrimaryPart.Position).Magnitude > 7.5 then
						game.Players.LocalPlayer.Character.Humanoid:MoveTo(getBestIcon().PrimaryPart.Position + Vector3.new(math.random(-4,4), 0, math.random(-4,4)))
						game.Players.LocalPlayer.Character.Humanoid.Jump = true
					end
					wait(0.1)
				until (getBestIcon().PrimaryPart.Position - game.Players.LocalPlayer.Character.PrimaryPart.Position).Magnitude > 7.5
			end
		end
	end
end)


spawn(function()
	if game.PlaceId == 11323576374 then
		local function getKuromi()
			local a = game:GetService("Players"):GetPlayers()
			for i=1,#a do
				if a[i].Character ~= nil and a[i].Character:findFirstChildOfClass("Tool") then
					return a[i] 
				end
			end
		end

		local function getKuromiWeapon()
			local a = game:GetService("Players"):GetPlayers()
			for i=1,#a do
				if a[i].Character ~= nil and a[i].Character:findFirstChildOfClass("Tool") then
					return a[i].Character:findFirstChildOfClass("Tool")
				end
			end
		end



		while true do
		
		wait(1)
		if getKuromi() ~= game.Players.LocalPlayer and autoKuromi then
			local a = workspace.MapItem.Gold:GetChildren()
			for i=1,#a do
				if a[i]:findFirstChild("ChuFa") and a[i].ChuFa:findFirstChild("TouchInterest") then
					local candy = a[i].ChuFa
					local plr = game:GetService("Players").LocalPlayer.Character or game:GetService("Players").LocalPlayer.CharacterAdded:Wait()
					local body = plr:FindFirstChildWhichIsA("BasePart")
					firetouchinterest(candy, body, 0)
					wait()
					firetouchinterest(candy, body, 1)
				end
			end
		else
		end
		end
	end
end)

