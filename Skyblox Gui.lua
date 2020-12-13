local version = "1.2.0"

local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:wait()

spawn(function() -- anti afk
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(math.random(0.3,1.1))
vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
end)

local library = {flags = {}, callbacks = {}, rainbowI = 0};

local GetService = game.GetService;
local Players = GetService(game, "Players");
local RunService = GetService(game, "RunService");
local CoreGui = GetService(game, "CoreGui");
local TweenService = GetService(game, "TweenService");
local UserInputService = GetService(game, "UserInputService");

local LocalPlayer = Players.LocalPlayer;

do -- library funcs
coroutine.wrap(function()
while true do
for i = 0, 359 do
library.rainbowI = i / 359;
library.rainbowVal = Color3.fromHSV(i / 359, 1, 1);
wait();
end;
end;
end)();

function library:Create(class, data)
local obj = Instance.new(class);
for i, v in next, data do
if i ~= 'Parent' then
if typeof(v) == "Instance" then
v.Parent = obj;
else
obj[i] = v
end
end
end

obj.Parent = data.Parent;
return obj;
end;

function library:Dragger(main, second)
local dragging;
local dragInput;
local dragStart;
local startPos;

local function update(input)
local delta = input.Position - dragStart;
second:TweenPosition(UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y),'Out','Sine',0.01,true);
end;

main.InputBegan:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
dragging = true;
dragStart = input.Position;
startPos = second.Position;

repeat wait() until input.UserInputState == Enum.UserInputState.End;
dragging = false;
end;
end);

main.InputChanged:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseMovement then
dragInput = input;
end;
end);

game:GetService("UserInputService").InputChanged:Connect(function(input)
if input == dragInput and dragging then
update(input);
end;
end);
end;

function library:Tween(instance, properties, callback)
local callback = callback or function() end;
local time = properties.time;
properties.time = nil;
local anim = TweenService:Create(instance, TweenInfo.new(time), properties);

anim.Completed:Connect(callback);
anim:Play();
return anim;
end;

local ui_Settings = {
mainColor = Color3.fromRGB(36, 36, 36);
bottomColor = Color3.fromRGB(34, 34, 34);
borderColor = Color3.fromRGB(42, 42, 42);
scrollingBarColor = Color3.fromRGB(255, 100, 0);
toggleColor = Color3.fromRGB(34, 34, 34);
toggleBorderColor = Color3.fromRGB(255, 100, 0);
boxColor = Color3.fromRGB(32, 32, 32);
boxBorderColor = Color3.fromRGB(255, 100, 0);
gradientColorSection = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 100, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 40, 0))};
gradientColor = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 100, 0)), ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 40, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0))};
shadowGradientColor = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 20, 20)), ColorSequenceKeypoint.new(1, Color3.fromRGB(36, 36, 36))};
};

UserInputService.InputBegan:Connect(function(input)
for i, v in next, library.flags do
if(v == input.KeyCode) then
library.callbacks[i]();
elseif(v == input.UserInputType) then
library.callbacks[i]();
end;
end;
end);

local gui = Instance.new("ScreenGui", CoreGui);
gui.Enabled = false;
library.gui = gui;

local main = library:Create("Frame", {
Name = "main";
Parent = gui;
Position = UDim2.new(0.5, -200, 0.5, -135);
BorderSizePixel = 0;
BackgroundColor3 = ui_Settings.mainColor; -- main color
Size = UDim2.new(0, 400,0, 270);
library:Create("Frame", {
Name = "border";
BackgroundColor3 = ui_Settings.bottomColor;
BorderColor3 = ui_Settings.borderColor;
BorderSizePixel = 1;
Position = UDim2.new(0, 5, 0, 48);
Size = UDim2.new(0, 390, 0, 216);
library:Create("Frame", {
Name = "shadow";
BackgroundColor3 = Color3.fromRGB(255, 255, 255);
BackgroundTransparency = 0.100;
BorderSizePixel = 0;
Position = UDim2.new(0, 0, 1, -8);
Size = UDim2.new(1, 0, 0, 8);
library:Create("UIGradient", {
Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 20, 20)), ColorSequenceKeypoint.new(1, Color3.fromRGB(36, 36, 36))};
Rotation = 270;
Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(1.00, 1.00)};
});
});
library:Create("Frame", {
Name = "shadow";
BackgroundColor3 = Color3.fromRGB(255, 255, 255);
BackgroundTransparency = 0.100;
BorderSizePixel = 0;
Size = UDim2.new(1, 0, 0, 8);
library:Create("UIGradient", {
Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 20, 20)), ColorSequenceKeypoint.new(1, Color3.fromRGB(36, 36, 36))};
Rotation = 90;
Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(1.00, 1.00)};
});
});
});
library:Create("Frame", {
Name = "bar";
BorderSizePixel = 0;
BackgroundColor3 = Color3.fromRGB(255, 255, 255); -- bar color
Size = UDim2.new(1, 0,0, 4);
Position = UDim2.new(0, 0, 0, 0);
library:Create("UIGradient", {
Color = ui_Settings.gradientColor;
});
library:Create("Frame", {
Name = "bottom";
BorderSizePixel = 0;
BackgroundColor3 = ui_Settings.bottomColor;
Position = UDim2.new(0, 0, 0, 4);
Size = UDim2.new(1, 0, 0, 34);
library:Create("Frame", {
BackgroundTransparency = 0.1;
BackgroundColor3 = Color3.fromRGB(255, 255, 255);
BorderSizePixel = 0;
Name = "shadow";
Position = UDim2.new(0, 0, 1, 0);
});
library:Create("TextLabel", {
Name = "Title";
BackgroundTransparency = 1;
Position = UDim2.new(0, 10, 0.5, -10);
Size = UDim2.new(0, 70, 0, 24);
TextColor3 = Color3.fromRGB(255, 255, 255);
Text = "Skyblox";
Font = "GothamSemibold";
TextSize = 14;
library:Create("UIGradient", {
Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 100, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0))}
});
});
library:Create("Frame", {
Name = "topcontainer";
BackgroundTransparency = 1;
BorderSizePixel = 0;
Position = UDim2.new(0, 88, 0, 9);
Size = UDim2.new(1, -90, 0.73, 0);
library:Create("UIListLayout", {
Padding = UDim.new(0, 2);
FillDirection = "Horizontal";
HorizontalAlignment = "Left";
SortOrder = "LayoutOrder";
VerticalAlignment = "Top";
});
});
});
});
});

function library:ToggleVisibility()
if main.Visible == true then
main.Visible = false
else
main.Visible = true
end
end

local modal = Instance.new("TextButton", main);
modal.Modal = true;
modal.BackgroundTransparency = 1;
modal.Text = "";

library:Dragger(main.bar.bottom, main);
function library:Ready()
gui.Enabled = true;
end;

function library:CreateSection(name)
local topContainer = gui.main.bar.bottom.topcontainer;

local sectionSelector = library:Create("ImageButton", {
Parent = topContainer;
BackgroundTransparency = 1;
Size = UDim2.new(0, 60, 1, 0);
Image = "rbxassetid://4641155773";
ImageColor3 = Color3.fromRGB(255, 255, 255);
ScaleType = "Slice";
SliceCenter = Rect.new(4, 4, 296, 296);
SliceScale = 1;
Name = "back";
library:Create("UIGradient", {
Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 100, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0 ,0))}
});
library:Create("TextLabel", {
BackgroundTransparency = 1;
Text = name;
Size = UDim2.new(1, 0, 1, 0);
TextColor3 = Color3.fromRGB(255, 255, 255);
});
});

local boxContainer = library:Create("ScrollingFrame", {
Name = "box";
BorderSizePixel = 0;
BackgroundColor3 = Color3.fromRGB(34, 34, 34);
Parent = main.border;
Position = UDim2.new(0, 1, 0, 1);
Size = UDim2.new(1, -2, 1, -2);
BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png";
TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png";
ScrollBarThickness = 4;
CanvasSize = UDim2.new(0, 0, 0, 0);
library:Create("UIPadding", {
PaddingTop = UDim.new(0, 2);
PaddingLeft = UDim.new(0, 2);
});
library:Create("UIListLayout", {
Padding = UDim.new(0, 5);
FillDirection = "Vertical";
HorizontalAlignment = "Left";
VerticalAlignment = "Top";
});
});

local section = {};

boxContainer.ChildAdded:Connect(function(Obj)
section:Update();
end);

if(not library.currentSection) then
library.currentSectionSelector = sectionSelector;
library.currentSection = boxContainer;
library.currentSectionObject = section;

library.currentSectionSelector.ImageColor3 = Color3.fromRGB(200, 200, 200);
boxContainer.Visible = true;
else
boxContainer.Visible = false;
end;

sectionSelector.MouseButton1Click:Connect(function()
if(library.currentSection) then
library.currentSectionSelector.ImageColor3 = Color3.fromRGB(255, 255, 255);
library.currentSection.Visible = false;
end;

sectionSelector.ImageColor3 = Color3.fromRGB(200, 200, 200);
boxContainer.Visible = true;
library.currentSectionSelector = sectionSelector;
library.currentSection = boxContainer;
end);

function section:Update()
local CanvasSize = UDim2.new(0, 0, 0, 85)
for i,v in next, boxContainer:GetChildren() do
if(not v:IsA("UIListLayout") and not v:IsA("UIPadding") and v.Visible) then
CanvasSize = CanvasSize + UDim2.new(0, 0, 0, v.AbsoluteSize.Y + 5);
end;
end;

library:Tween(boxContainer, {time = 0.1, CanvasSize = CanvasSize});
end;

function section:Label(labelName)
local holder = library:Create("Frame", {
Name = "holder";
Parent = boxContainer;
BackgroundColor3 = Color3.fromRGB(25, 25, 25);
BorderSizePixel = 0;
Position = UDim2.new(0, 0, 0, 350);
Size = UDim2.new(1, 0, 0, 18);
library:Create("TextLabel", {
Name = "label";
BackgroundTransparency = 1.000;
Size = UDim2.new(1, 0, 1, 0);
Font = "Gotham";
Text = labelName;
TextColor3 = Color3.fromRGB(255, 255, 255);
TextSize = 12.000;
});
});
end;

function section:Toggle(toggleName, callback)
local callback = callback or function() end;
local toggle = false;

library.flags[toggleName] = toggle;

local holder = library:Create("Frame", {
BackgroundTransparency = 1;
Parent = boxContainer;
Size = UDim2.new(1, -20, 0, 18);
Name = "holder";
library:Create("TextLabel", {
Name = "label";
BackgroundTransparency = 1;
TextColor3 = Color3.fromRGB(255, 255, 255);
Position = UDim2.new(0, 22, 0, 0);
Size = UDim2.new(1, -22, 1, 0);
Font = "Gotham";
TextXAlignment = "Left";
TextSize = 12;
Text = toggleName;
});
library:Create("TextButton", {
Name = "toggle";
AutoButtonColor = false;
BackgroundColor3 = ui_Settings.toggleColor;
BorderColor3 = ui_Settings.toggleBorderColor;
BorderSizePixel = 1;
Size = UDim2.new(0, 16, 0, 16);
Text = "";
library:Create("Frame", {
BackgroundColor3 = Color3.fromRGB(255, 255, 255);
Size = toggle and UDim2.new(1, 0, 1, 0) or UDim2.new(0, 0, 0, 0);
Name = "fill";
BorderSizePixel = 0;
library:Create("UIGradient", {
Color = ui_Settings.gradientColorSection;
Rotation = 45;
});
});
library:Create("UIListLayout", {
FillDirection = "Vertical";
HorizontalAlignment = "Center";
VerticalAlignment = "Center";
});
library:Create("UIPadding", {
PaddingBottom = UDim.new(0, 1);
PaddingTop = UDim.new(0, 1);
PaddingLeft = UDim.new(0, 1);
PaddingRight = UDim.new(0, 1);
});
});
});

local function onClick()
toggle = not toggle;
library:Tween(holder.toggle.fill, {time = 0.1, Size = toggle and UDim2.new(1, 0, 1, 0) or UDim2.new(0, 0, 0, 0)});
library.flags[toggleName] = toggle;
callback(toggle);
end;

holder.toggle.MouseButton1Click:Connect(onClick);
return holder;
end;

function section:Box(boxName, callback)
local holder = library:Create("Frame", {
Size = UDim2.new(1, -20, 0, 18);
BackgroundTransparency = 1;
Name = "holder";
Parent = boxContainer;
library:Create("TextLabel", {
BackgroundTransparency = 1;
Name = "label";
TextColor3 = Color3.fromRGB(255, 255, 255);
Text = boxName;
TextSize = 12;
Font = "Gotham";
Size = UDim2.new(1, 0, 1, 0);
TextXAlignment = "Left";
});
library:Create("TextBox", {
BackgroundColor3 = Color3.fromRGB(32, 32, 32);
BorderColor3 = ui_Settings.boxBorderColor;
BorderSizePixel = 1;
Name = "textbox";
TextSize = 14;
Position = UDim2.new(1, -160, 0, 0);
Size = UDim2.new(0, 160, 1, 0);
PlaceholderColor3 = Color3.fromRGB(200, 200, 200);
PlaceholderText = "Value";
Text = "";
TextColor3 = Color3.fromRGB(255, 255, 255);
Font = "SourceSans";
});
});

holder.textbox.FocusLost:Connect(function(Enter)
if(Enter) then
library.flags[boxName] = holder.textbox.Text;
callback(holder.textbox.Text);
end;
end);
end;

function section:Slider(sliderName, properties, callback)
local callback = callback or function() end;
library.flags[sliderName] = properties.min;

local holder = library:Create("Frame", {
Size = UDim2.new(1, -20, 0, 36);
BackgroundTransparency = 1;
Name = "holder";
Parent = boxContainer;
library:Create("TextLabel", {
Name = "label";
BackgroundColor3 = Color3.fromRGB(255, 255, 255);
BackgroundTransparency = 1.000;
Size = UDim2.new(1, 0, 0, 17);
Font = "Gotham";
Text = sliderName;
TextColor3 = Color3.fromRGB(255, 255, 255);
TextSize = 12.000;
TextXAlignment = "Left";
});
library:Create("TextButton", {
Name = "slider";
BackgroundColor3 = Color3.fromRGB(34, 34, 34);
BorderColor3 = Color3.fromRGB(255, 100, 0 );
Position = UDim2.new(0, 0, 1, -19);
Size = UDim2.new(1, 0, 0, 16);
AutoButtonColor = false;
Font = "SourceSans";
Text = "";
TextColor3 = Color3.fromRGB(0, 0, 0);
TextSize = 14.000;
library:Create("TextLabel", {
Name = "value";
BackgroundTransparency = 1;
Size = UDim2.new(1, 0, 1, 0);
Font = "SourceSans";
Text = properties.default and tostring(properties.default) or tostring(properties.min);
TextColor3 = Color3.fromRGB(255, 255, 255);
TextSize = 14.000;
ZIndex = 2;
});
library:Create("Frame", {
BackgroundColor3 = Color3.fromRGB(255, 255, 255);
Position = UDim2.new(0, 1, 0, 1);
Name = "fill";
Size = UDim2.new(0, 0, 1, -2);
BorderSizePixel = 0;
library:Create("UIGradient", {
Color = ui_Settings.gradientColorSection;
Rotation = 90;
});
});
});
});

local Connection;
UserInputService.InputEnded:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
if(Connection) then
Connection:Disconnect();
Connection = nil;
end;
end;
end);

holder.slider.MouseButton1Down:Connect(function()
if(Connection) then
Connection:Disconnect();
end;

Connection = RunService.Heartbeat:Connect(function()
local mouse = UserInputService:GetMouseLocation();
local percent = math.clamp((mouse.X - holder.slider.AbsolutePosition.X) / (holder.slider.AbsoluteSize.X), 0, 1);
local Value = properties.min + (properties.max - properties.min) * percent;

if not properties.precise then
Value = math.floor(Value);
end;

Value = tonumber(string.format("%.2f", Value));

library:Tween(holder.slider.fill, {time = 0.1, Size = UDim2.new(percent, 0, 1, -2)})
holder.slider.value.Text = tostring(Value);
library.flags[sliderName] = Value;

callback(Value);
end);
end);
end;

function section:Bind(bindName, defaultKey, callback)
local callback = callback or function() end;
local input = defaultKey and tostring(defaultKey):gsub("Enum.", ""):gsub("UserInputType.", ""):gsub("KeyCode.", "") or "None";
library.callbacks[bindName] = callback;
library.flags[bindName] = defaultKey;

local holder = library:Create("Frame", {
Name = "holder";
Parent = boxContainer;
BackgroundColor3 = Color3.fromRGB(255, 255, 255);
BackgroundTransparency = 1.000;
LayoutOrder = 2;
Position = UDim2.new(0, 10, 0, 76);
Size = UDim2.new(1, -20, 0, 18);
library:Create("TextLabel", {
Name = "label";
BackgroundColor3 = Color3.fromRGB(255, 255, 255);
BackgroundTransparency = 1.000;
Size = UDim2.new(1, 0, 1, 0);
Font = "Gotham";
Text = bindName;
TextColor3 = Color3.fromRGB(255, 255, 255);
TextSize = 12.000;
TextXAlignment = "Left";
});
library:Create("TextButton", {
Name = "keybind";
BackgroundColor3 = Color3.fromRGB(34, 34, 34);
BorderColor3 = Color3.fromRGB(255, 100, 0);
ClipsDescendants = true;
Position = UDim2.new(1, -80, 0, 0);
Size = UDim2.new(0, 80, 1, 0);
AutoButtonColor = false;
Font = Enum.Font.SourceSans;
Text = input;
TextColor3 = Color3.fromRGB(255, 255, 255);
TextSize = 14.000;
});
});

local whitelistedType = {
[Enum.KeyCode.LeftShift] = "L-Shift",
[Enum.KeyCode.RightShift] = "R-Shift",
[Enum.KeyCode.LeftControl] = "L-Ctrl",
[Enum.KeyCode.RightControl] = "R-Ctrl",
[Enum.KeyCode.LeftAlt] = "L-Alt",
[Enum.KeyCode.RightAlt] = "R-Alt",
[Enum.KeyCode.CapsLock] = "CAPS",
[Enum.KeyCode.One] = "1",
[Enum.KeyCode.Two] = "2",
[Enum.KeyCode.Three] = "3",
[Enum.KeyCode.Four] = "4",
[Enum.KeyCode.Five] = "5",
[Enum.KeyCode.Six] = "6",
[Enum.KeyCode.Seven] = "7",
[Enum.KeyCode.Eight] = "8",
[Enum.KeyCode.Nine] = "9",
[Enum.KeyCode.Zero] = "0",
[Enum.KeyCode.KeypadOne] = "Num-1",
[Enum.KeyCode.KeypadTwo] = "Num-2",
[Enum.KeyCode.KeypadThree] = "Num-3",
[Enum.KeyCode.KeypadFour] = "Num-4",
[Enum.KeyCode.KeypadFive] = "Num-5",
[Enum.KeyCode.KeypadSix] = "Num-6",
[Enum.KeyCode.KeypadSeven] = "Num-7",
[Enum.KeyCode.KeypadEight] = "Num-8",
[Enum.KeyCode.KeypadNine] = "Num-9",
[Enum.KeyCode.KeypadZero] = "Num-0",
[Enum.KeyCode.Minus] = "-",
[Enum.KeyCode.Equals] = "=",
[Enum.KeyCode.Tilde] = "~",
[Enum.KeyCode.LeftBracket] = "[",
[Enum.KeyCode.RightBracket] = "]",
[Enum.KeyCode.RightParenthesis] = ")",
[Enum.KeyCode.LeftParenthesis] = "(",
[Enum.KeyCode.Semicolon] = ";",
[Enum.KeyCode.Quote] = "'",
[Enum.KeyCode.BackSlash] = "\\",
[Enum.KeyCode.Comma] = ",",
[Enum.KeyCode.Period] = ".",
[Enum.KeyCode.Slash] = "/",
[Enum.KeyCode.Asterisk] = "*",
[Enum.KeyCode.Plus] = "+",
[Enum.KeyCode.Period] = ".",
[Enum.KeyCode.Backquote] = "`",
[Enum.UserInputType.MouseButton1] = "Button-1",
[Enum.UserInputType.MouseButton2] = "Button-2",
[Enum.UserInputType.MouseButton3] = "Button-3",
};

holder.keybind.MouseButton1Click:Connect(function()
holder.keybind.Text = ". . .";
local connection;
connection = UserInputService.InputBegan:Connect(function(input)
connection:Disconnect();
wait();

local KeyCodeName = whitelistedType[input.KeyCode] or whitelistedType[input.UserInputType];

holder.keybind.Text = KeyCodeName or tostring(input.KeyCode):gsub("Enum.KeyCode.", "");
if(input.UserInputType == Enum.UserInputType.Keyboard) then
library.flags[bindName] = input.KeyCode;
else
library.flags[bindName] = input.UserInputType;
end;
end);
end);
end;

function section:Button(buttonName, callback)
local callback = callback or function() end;
local holder = library:Create("Frame", {
Name = "holder";
Parent = boxContainer;
BackgroundTransparency = 1.000;
Position = UDim2.new(0, 10, 0, 148);
Size = UDim2.new(1, -20, 0, 18);
library:Create("TextButton", {
BackgroundColor3 = Color3.fromRGB(255, 255, 255);
Size = UDim2.new(1, 0, 1, 0);
BorderSizePixel = 0;
TextColor3 = Color3.fromRGB(255, 255, 255);
Text = "";
Name = "button";
AutoButtonColor = false;
library:Create("TextLabel", {
Name = "label";
BackgroundTransparency = 1;
Size = UDim2.new(1, 0, 1, 0);
Font = "SourceSans";
TextSize = 14;
TextColor3 = Color3.fromRGB(255, 255, 255);
Text = buttonName;
});
library:Create("UIGradient", {
Rotation = 90;
Color = ui_Settings.gradientColorSection;
});
});
});

holder.button.MouseButton1Click:Connect(callback);
end;

function section:Dropdown(name, list, callback)
local callback = callback or function() end;
local toggle = false;

local holder = library:Create("Frame", {
Name = "holder";
BackgroundTransparency = 1.000;
LayoutOrder = 3;
Position = UDim2.new(0, 10, 0, 98);
Size = UDim2.new(1, -20, 0, 36);
Parent = boxContainer;
library:Create("TextLabel", {
Name = "label";
BackgroundTransparency = 1.000;
Size = UDim2.new(1, 0, 0, 18);
Font = Enum.Font.Gotham;
Text = name;
TextColor3 = Color3.fromRGB(255, 255, 255);
TextSize = 12.000;
TextXAlignment = Enum.TextXAlignment.Left;
});
library:Create("TextButton", {
Name = "dropdown";
BackgroundColor3 = Color3.fromRGB(255, 100, 0);
BorderColor3 = Color3.fromRGB(255, 100, 0);
Size = UDim2.new(1, 0, 0, 18);
AutoButtonColor = false;
Font = "SourceSans";
Text = "";
TextColor3 = Color3.fromRGB(0, 0, 0);
TextSize = 14.000;
Position = UDim2.new(0, 0, 0, 18);
library:Create("ImageLabel", {
Name = "icon";
BackgroundTransparency = 1.000;
Position = UDim2.new(1, -18, 0, 0);
Size = UDim2.new(0, 18, 0, 16);
Image = "http://www.roblox.com/asset/?id=4641587888";
ZIndex = 2;
});
library:Create("TextLabel", {
Name = "label";
BackgroundTransparency = 1.000;
Position = UDim2.new(0, 4, 0, 0);
Size = UDim2.new(1, -4, 0, 18);
Font = Enum.Font.Gotham;
Text = "Drop value";
TextColor3 = Color3.fromRGB(255, 255, 255);
TextSize = 12.000;
TextXAlignment = Enum.TextXAlignment.Left;
ZIndex = 2;
});
library:Create("Frame", {
Name = "dropframe";
BackgroundColor3 = Color3.fromRGB(32, 32, 32);
BorderColor3 = Color3.fromRGB(255, 100, 0);
BorderSizePixel = 0;
ClipsDescendants = true;
Position = UDim2.new(0, -1, 1, 1);
Size = UDim2.new(1, 2, 0, 0);
library:Create("UIListLayout", {
SortOrder = "LayoutOrder";
Padding = UDim.new(0, 2);
});
});
library:Create("Frame", {
Name = "fill";
BackgroundColor3 = Color3.fromRGB(255, 255, 255);
BorderSizePixel = 0;
Position = UDim2.new(0, 1, 0, 1);
Size = UDim2.new(1, 0, 1, 0);
library:Create("UIGradient", {
Rotation = 90;
Color = ui_Settings.gradientColorSection;
});
});
});
});

for i, v in next, list do
local button = library:Create("TextButton", {
Name = "button";
Text = v;
Parent = holder.dropdown.dropframe;
BackgroundColor3 = Color3.fromRGB(32, 32, 32);
BorderColor3 = Color3.fromRGB(255, 255, 255);
BorderSizePixel = 0;
Size = UDim2.new(1, 0, 0, 16);
Font = "SourceSans";
TextColor3 = Color3.fromRGB(255, 255, 255);
TextSize = 14.000;
ZIndex = 1;
});

button.MouseButton1Click:Connect(function()
toggle = false;
holder.dropdown.label.Text = v;
library:Tween(holder.dropdown.icon, {time = 0.1, Rotation = 180});
library:Tween(holder, {time = 0.1, Size = UDim2.new(1, -20, 0, 35)});
library:Tween(holder.dropdown.dropframe, {time = 0.1, Size = UDim2.new(1, 2, 0, 0)}, self.Update);
callback(button.Text);
end);
end;

holder.dropdown.MouseButton1Click:Connect(function()
toggle = not toggle;
local TotalY = 0;
for i, v in next, holder.dropdown.dropframe:GetChildren() do
if(v:IsA("TextButton")) then
TotalY = TotalY + v.AbsoluteSize.Y + 2;
end;
end;

if(toggle) then
library:Tween(holder.dropdown.icon, {time = 0.1, Rotation = 0});
library:Tween(holder, {time = 0.1, Size = UDim2.new(1, -20, 0, TotalY + 50)});
library:Tween(holder.dropdown.dropframe, {time = 0.1, Size = UDim2.new(1, 2, 0, TotalY)}, self.Update);
else
library:Tween(holder.dropdown.icon, {time = 0.1, Rotation = 180});
library:Tween(holder, {time = 0.1, Size = UDim2.new(1, -20, 0, 36)});
library:Tween(holder.dropdown.dropframe, {time = 0.1, Size = UDim2.new(1, 2, 0, 0)}, self.Update);
end;
end);
end;

function section:ColorPicker(pickerName, defaultColor, callback)
local callback = callback or function() end;
local defaultColor = defaultColor or Color3.fromRGB(255, 100, 0);
local rainbowToggle = false;
local Mouse = Players.LocalPlayer:GetMouse();

local holder = library:Create("Frame", {
Name = "holder";
Parent = boxContainer;
BackgroundTransparency = 1.000;
Position = UDim2.new(0, 10, 0, 172);
Size = UDim2.new(1, -20, 0, 18);
library:Create("TextLabel", {
Name = "label";
BackgroundTransparency = 1.000;
Size = UDim2.new(1, 0, 1, 0);
Font = "Gotham";
Text = pickerName;
TextColor3 = Color3.fromRGB(255, 255, 255);
TextSize = 12.000;
TextXAlignment = Enum.TextXAlignment.Left;
});
library:Create("TextButton", {
Name = "colorpicker";
BackgroundColor3 = Color3.fromRGB(34, 34, 34);
BorderColor3 = Color3.fromRGB(255, 100, 0);
Position = UDim2.new(1, -16, 0, 0);
Size = UDim2.new(0, 16, 0, 16);
AutoButtonColor = false;
Font = Enum.Font.SourceSans;
Text = "";
TextColor3 = Color3.fromRGB(0, 0, 0);
TextSize = 14.000;
library:Create("Frame", {
Name = "colorframe";
BackgroundColor3 = Color3.fromRGB(32, 32, 32);
BorderColor3 = Color3.fromRGB(255, 100, 0);
Position = UDim2.new(0, -148, 1, 6);
Size = UDim2.new(0, 144, 0, 139);
Visible = false;
ZIndex = 2;
library:Create("ImageButton", {
Name = "satval";
Image = "http://www.roblox.com/asset/?id=4650897272";
BorderSizePixel = 0;
AutoButtonColor = false;
BackgroundColor3 = defaultColor;
Position = UDim2.new(0, 4, 0, 3);
Size = UDim2.new(0, 110, 0, 102);
ZIndex = 2;
library:Create("TextButton", {
Name = "picker";
BackgroundColor3 = Color3.fromRGB(53, 53, 53);
BackgroundTransparency = 0.500;
BorderSizePixel = 0;
Position = UDim2.new(0.5, 0, 0.5, 0);
Size = UDim2.new(0, 5, 0, 5);
ZIndex = 2;
Text = "";
});
});
library:Create("TextButton", {
Name = "rainbow";
ZIndex = 2;
BackgroundColor3 = Color3.fromRGB(255, 255, 255);
BorderColor3 = Color3.fromRGB(255, 255, 255);
ClipsDescendants = true;
Position = UDim2.new(0, 5, 1, -25);
Size = UDim2.new(0, 133, 0, 20);
AutoButtonColor = false;
Font = "SourceSans";
Text = "";
TextColor3 = Color3.fromRGB(255, 255, 255);
TextSize = 14.000;
library:Create("UIGradient", {
Color = ui_Settings.gradientColorSection;
Rotation = -90;
});
library:Create("TextLabel", {
Name = "label";
Parent = button;
BackgroundTransparency = 1.000;
Size = UDim2.new(1, 0, 1, 0);
Font = "SourceSans";
Text = "Rainbow: OFF";
TextColor3 = Color3.fromRGB(255, 255, 255);
TextSize = 14.000;
ZIndex = 2;
});
});
library:Create("ImageButton", {
Name = "hue";
AutoButtonColor = false;
ZIndex = 2;
Position = UDim2.new(0, 118, 0, 3);
Size = UDim2.new(0, 18, 0, 102);
Image = "http://www.roblox.com/asset/?id=4650897105";
library:Create("TextButton", {
Name = "selector";
BackgroundColor3 = Color3.fromRGB(53, 53, 53);
BorderSizePixel = 0;
Size = UDim2.new(1, 0, 0, 5);
Text = "";
ZIndex = 2;
});
});
});
library:Create("Frame", {
Name = "color";
BackgroundColor3 = defaultColor;
BorderSizePixel = 0;
Position = UDim2.new(0, 1, 0, 1);
Size = UDim2.new(0, 14, 0, 14);
});
});
});


local colorData = {
H = 1;
S = 1;
V = 1;
};

local Connection1;
local Connection2;

local function getXY(frame)
local x, y = Mouse.X - frame.AbsolutePosition.X, Mouse.Y - frame.AbsolutePosition.Y;
local maxX, maxY = frame.AbsoluteSize.X,frame.AbsoluteSize.Y;
x = math.clamp(x, 0, maxX);
y = math.clamp(y, 0, maxY);
return x / maxX, y / maxY;
end;

local function Update()
local Color = Color3.fromHSV(colorData.H, colorData.S, colorData.V);
holder.colorpicker.color.BackgroundColor3 = Color;
holder.colorpicker.colorframe.satval.BackgroundColor3 = Color3.fromHSV(colorData.H, 1, 1);
callback(Color);
end;

holder.colorpicker.MouseButton1Click:Connect(function()
toggle = not toggle;
holder.colorpicker.colorframe.Visible = toggle;
end);

UserInputService.InputEnded:Connect(function(i)
if i.UserInputType == Enum.UserInputType.MouseButton1 then
if(Connection1) then
Connection1:Disconnect();
Connection1 = nil;
end;
if(Connection2) then
Connection2:Disconnect();
Connection2 = nil;
end;
isFocused = false;
end;
end);

holder.colorpicker.colorframe.rainbow.MouseButton1Click:Connect(function()
rainbowToggle = not rainbowToggle;
holder.colorpicker.colorframe.rainbow.label.Text = rainbowToggle and "Rainbow: ON" or "Rainbow: OFF";

if(rainbowToggle) then
repeat
library:Tween(holder.colorpicker.colorframe.hue.selector, {time = 0.1, Position = UDim2.new(0, 0, library.rainbowI, 0)});
holder.colorpicker.colorframe.satval.BackgroundColor3 = Color3.fromHSV(1 - library.rainbowI, 1, 1);
holder.colorpicker.color.BackgroundColor3 = library.rainbowVal;
callback(library.rainbowVal);
RunService.Heartbeat:Wait();
until not rainbowToggle;
end;
end);

holder.colorpicker.colorframe.satval.InputBegan:Connect(function(i)
if i.UserInputType == Enum.UserInputType.MouseButton1 then
if(Connection1) then
Connection1:Disconnect();
end;
Connection1 = RunService.Heartbeat:Connect(function()
local X, Y = getXY(holder.colorpicker.colorframe.satval);

holder.colorpicker.colorframe.satval.picker.Position = UDim2.new(X, 0, Y, 0);
colorData.S = X;
colorData.V = 1 - Y;
Update();
end);
end;
end);

holder.colorpicker.colorframe.hue.InputBegan:Connect(function(i)
if i.UserInputType == Enum.UserInputType.MouseButton1 then
if(Connection2) then
Connection2:Disconnect();
end;

Connection2 = RunService.Heartbeat:Connect(function()
local X, Y = getXY(holder.colorpicker.colorframe.hue);

colorData.H = 1 - Y;
holder.colorpicker.colorframe.hue.selector.Position = UDim2.new(0, 0, Y, 0);
Update();
end);
end;
end);
end;

return section;
end;
end;



local highestWeaponDamage = 0
local highestWeaponName = ""
local highestAxeDamage = 0
local highestAxeName = ""
local highestPickaxeDamage = 0
local highestPickaxeName = ""
function getToolDamage(toolname)
local toolInfo = require(game.ReplicatedStorage.TS.tool["tool-meta"])
local toolsInfo = toolInfo.ToolMeta
for i,v in pairs(toolsInfo) do
if i == toolname then
return v["blockHit"].damage
end
end
end

function getWeaponDamage(toolname)
local toolInfo = require(game.ReplicatedStorage.TS.tool["tool-meta"])
local toolsInfo = toolInfo.ToolMeta
for i,v in pairs(toolsInfo) do
if i == toolname then
return v["combat"].baseDamage
end
end
end

function refreshTools()
local tools = game.Players.LocalPlayer.Backpack:getChildren()
for i=1,#tools do
if string.find(tools[i].Name, "Axe") and tools[i]:findFirstChild("axe") then
if getToolDamage(tools[i].Name) >= highestAxeDamage then
highestAxeDamage = getToolDamage(tools[i].Name)
highestAxeName = tools[i].Name
end
end
if string.find(tools[i].Name, "Pickaxe") and tools[i]:findFirstChild("axe") then
if getToolDamage(tools[i].Name) >= highestPickaxeDamage then
highestPickaxeDamage = getToolDamage(tools[i].Name)
highestPickaxeName = tools[i].Name
end
end
if tools[i]:findFirstChild("sword") then
if getWeaponDamage(tools[i].Name) >= highestWeaponDamage then
highestWeaponDamage = getWeaponDamage(tools[i].Name)
highestWeaponName = tools[i].Name
end
end
end
end


local Tools = library:CreateSection("Tools")
Tools:Toggle("Crop Collect Aura")
Tools:Toggle("Auto Replace Crops")
spawn(function()
while wait() do
if library.flags["Crop Collect Aura"] then
local crops = workspace.Islands[game.Players.LocalPlayer.UserId .. "-island"].Blocks:getChildren()
for i=1,#crops do
if crops[i]:findFirstChild("secondsInStage") then
spawn(function()
if game.Players.LocalPlayer.Character:findFirstChild("HumanoidRootPart") then
if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - crops[i].CollisionBoxes.Part.Position).magnitude <= 20 then
if crops[i].stage.Value == #crops[i]:getChildren()-6 then
local cframeGoal = crops[i].CollisionBoxes.Part.CFrame
game.ReplicatedStorage.Remotes.Functions["HARVEST_CROP_REQUEST"]:InvokeServer({model = crops[i], player = game.Players.LocalPlayer})
if library.flags["Auto Replace Crops"] then
wait(0.05)
game.ReplicatedStorage.Remotes.Functions["BLOCK_PLACE_REQUEST"]:InvokeServer({blockType = crops[i].Name, cframe = cframeGoal})
end
end
end
end
end)
end
end
end
end
end)

Tools:Toggle("Auto Collect Berrys")
spawn(function()
while wait(0.1) do
if library.flags["Auto Collect Berrys"] then
spawn(function()
local block = workspace.Islands[game.Players.LocalPlayer.UserId .. "-island"].Blocks:getChildren()
for i=1,#block do
if block[i].Name == "berryBush" then
if block[i].stage.Value == 2 then
spawn(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = block[i].CFrame 
game.ReplicatedStorage.Remotes.Functions["HARVEST_CROP_REQUEST"]:InvokeServer({model = block[i], player = game.Players.LocalPlayer})
end)
end
end
end
end)
end
end
end)


Tools:Toggle("Click-Loot Chests")
spawn(function()
local mouse = game.Players.LocalPlayer:GetMouse()

mouse.Button1Down:connect(function()
if library.flags["Click-Loot Chests"] then
if not mouse.Target then return end
local chest = mouse.Target
if chest.Parent == nil then return end
if chest.Parent.Parent == nil then return end
if chest.Parent.Parent:findFirstChild("Contents") then  
local a = chest.Parent.Parent.Contents:getChildren()
for i=1,#a do
game.ReplicatedStorage.Remotes.Functions["CHEST_TRANSACTION"]:InvokeServer({chest = chest.Parent.Parent, tool = a[i], action = "withdraw", amount = a[i].Amount.Value})
end
end
end
end)
end)
Tools:Toggle("Chest-Loot Aura")
spawn(function()
while wait(1.5) do
if library.flags["Chest-Loot Aura"] then
local chests = workspace.Islands[game.Players.LocalPlayer.UserId .. "-island"].Blocks:getChildren()
for i=1,#chests do
if chests[i]:findFirstChild("Contents") then
if game.Players.LocalPlayer.Character:findFirstChild("HumanoidRootPart") then
if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - chests[i].Position).magnitude <= 20 then
spawn(function()
local a = chests[i].Contents:getChildren()
for i=1,#a do
game.ReplicatedStorage.Remotes.Functions["CHEST_TRANSACTION"]:InvokeServer({chest = a[i].Parent.Parent, tool = a[i], action = "withdraw", amount = a[i].Amount.Value})
end
end)
end
end
end
end
end
end
end)
Tools:Toggle("Steal Dropped Items")
spawn(function()
while wait(0.1) do
if library.flags["Steal Dropped Items"] then
local a = workspace.Islands:getChildren()
for i=1,#a do
if a[i]:findFirstChild("Drops") then
local c = a[i].Drops:getChildren()
for y=1,#c do
if c[y].ClassName == "Tool" and c[y]:findFirstChild("HandleDisabled") then 
if game.Players.LocalPlayer.Character:findFirstChild("HumanoidRootPart") then 
if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - c[y].HandleDisabled.Position).magnitude <= 30 then
game.ReplicatedStorage.Remotes.Functions["TOOL_PICKUP_REQUEST"]:InvokeServer({tool = c[y]})
end
end
end
end
end
end
end
end
end)
Tools:Toggle("Quick-Break Blocks")
spawn(function()
local UIS = game:GetService("UserInputService")
local mouse = game.Players.LocalPlayer:getMouse()
local mousedown = false
spawn(function()
UIS.InputBegan:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
mousedown = true
end
end)
end)
spawn(function()
UIS.InputEnded:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
mousedown = false
end
end)
end)

while wait() do
if library.flags["Quick-Break Blocks"] then
pcall(function()
if not mouse.Target then return end
if not mouse.Target.Parent then return end
if mouse.Target ~= nil and mouse.Target.Parent.Parent ~= nil then
if mouse.Target.Parent.Parent:findFirstChild("BlockType") and mouse.Target.Parent.Parent.Name ~= "Game"  and mousedown == true then
for i=1,10 do
if mouse.Target.Parent ~= nil then
if mouse.Target.Parent.Parent ~= nil then
game.ReplicatedStorage.Remotes.Functions["BLOCK_BREAK_REQUEST"]:InvokeServer({block = mouse.Target})
end
end
end
end 
if mouse.Target.Parent:findFirstChild("BlockType") and mouse.Target.Parent.Name ~= "Game" and mousedown == true then
for i=1,10 do
if mouse.Target.Parent ~= nil then
game.ReplicatedStorage.Remotes.Functions["BLOCK_BREAK_REQUEST"]:InvokeServer({block = mouse.Target})
end
end
end 
end
end)
end
end
end)
Tools:Toggle("Click Vending Helper")
spawn(function()
local mouse = game.Players.LocalPlayer:GetMouse()
 
mouse.Button1Down:connect(function()
if library.flags["Click Vending Helper"] then
if not mouse.Target then return end
local chest = mouse.Target
if chest.Parent == nil then return end
if chest.Parent.Parent == nil then return end
if chest.Parent.Parent:findFirstChild("SellingContents") then  
local vendingMachine = chest.Parent.Parent

if vendingMachine.Mode.Value == 0 then
game.ReplicatedStorage.Remotes.Functions["VENDING_MACHINE_WITHDRAW_COINS"]:InvokeServer({vendingMachine = vendingMachine})


local backpack = game.Players.LocalPlayer.Backpack:getChildren()
for i=1,#backpack do
local iteminside = vendingMachine.SellingContents:findFirstChildOfClass("Tool")
if backpack[i].Name == iteminside.Name and iteminside.Amount.Value ~= 150 then
game.ReplicatedStorage.Remotes.Functions["VENDING_MACHINE_EDIT_TRANSACTION"]:InvokeServer({vendingMachine = vendingMachine, action = "deposit", amount = 150-iteminside.Amount.Value, tool = backpack[i]})
end
end
elseif vendingMachine.Mode.Value == 1 then
local iteminside = vendingMachine.SellingContents:findFirstChildOfClass("Tool")
if iteminside.Amount.Value >= 1 then
game.ReplicatedStorage.Remotes.Functions["VENDING_MACHINE_EDIT_TRANSACTION"]:InvokeServer({vendingMachine = vendingMachine, action = "withdraw", amount = iteminside.Amount.Value, tool = iteminside})
local backpack = game.Players.LocalPlayer.Backpack:getChildren()
for i=1,#backpack do
if backpack[i].Name == iteminside.Name then
game.ReplicatedStorage.Remotes.Functions["VENDING_MACHINE_EDIT_TRANSACTION"]:InvokeServer({vendingMachine = vendingMachine, action = "deposit", amount = 1, tool = backpack[i]})
end
end
end
end
end
end
end)
end)
Tools:Button("Reset/Unlock Camera", function()
workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
workspace.CurrentCamera.CameraType = "Custom"
game.Players.LocalPlayer.CameraMinZoomDistance = 0.5
game.Players.LocalPlayer.CameraMaxZoomDistance = 400
game.Players.LocalPlayer.CameraMode = "Classic"
end)


Tools:Button("Invite All", function()
local players = game.Players:getChildren()
for i=1,#players do
if players[i] ~= game.Players.LocalPlayer then
game.ReplicatedStorage.Remotes.Functions["CHANGE_ISLAND_ACCESS_LEVEL"]:InvokeServer({accessLevel = 1, player = players[i]}) 
end
end
end)
Tools:Button("Kick All", function()
local players = game.Players:getChildren()
for i=1,#players do
if players[i] ~= game.Players.LocalPlayer then
game.ReplicatedStorage.Remotes.Functions["CHANGE_ISLAND_ACCESS_LEVEL"]:InvokeServer({accessLevel = 0, player = players[i]}) 
end
end
end)




local Teleports = library:CreateSection("Teleports")
Teleports:Button("Slime Portal TP", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(700, 200, -220))
end)
Teleports:Button("Buffalkor Portal TP", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1421, 389, 32))
end)
Teleports:Button("Hidden Slime TP", function()
if not workspace:findFirstChild("nicePlatform") then
local a = Instance.new("Part", workspace)
a.Name = "nicePlatform"
a.Anchored = true
a.Size = Vector3.new(10,1,10)
a.Position = Vector3.new(750, 135, -100)
end
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(750, 140, -100))
end)
Teleports:Button("Hidden Buffalkor TP", function()
if not workspace:findFirstChild("nicePlatform2") then
local a = Instance.new("Part", workspace)
a.Name = "nicePlatform2"
a.Anchored = true
a.Size = Vector3.new(10,1,10)
a.Position = Vector3.new(1500, 350, 120)
end
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1500, 355, 120))
end)

local Autofarms = library:CreateSection("Autofarms")
local selectedAutofarmMob = ""
Autofarms:Dropdown("Mobs", {"slime", "buffalkor"}, function(cb) selectedAutofarmMob = cb end);
Autofarms:Toggle("Bring mobs")
spawn(function()
while wait() do
if library.flags["Bring mobs"] == true then
spawn(function()
local a = workspace.Entities:getChildren()
for i=1,#a do
if string.find(a[i].Name, selectedAutofarmMob) then
a[i]:MoveTo(game.Players.LocalPlayer.Character.Head.Position + Vector3.new(10,0,math.random(-5,5))) 
refreshTools()
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:findFirstChild(highestWeaponName))
game.ReplicatedStorage.Remotes.Functions["SWING_SWORD"]:InvokeServer({hitUnit = a[i]})
end
end
end)
end
end
end)


Autofarms:Toggle("TP to mobs")
spawn(function()
while wait() do
local a = workspace.Entities:getChildren()
for i=1,#a do
wait()
if string.find(a[i].Name, selectedAutofarmMob) then
if library.flags["TP to mobs"] == true then
if a[i]:findFirstChild("HumanoidRootPart") then
if game.Players.LocalPlayer.Character:findFirstChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(a[i].HumanoidRootPart.Position + Vector3.new(2, -10, 0))
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
workspace.CurrentCamera.CameraSubject = a[i].Humanoid
wait(0.15)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(a[i].HumanoidRootPart.Position + Vector3.new(0, -10, 0))
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
wait(0.15)
end 
end
else
if game.Players.LocalPlayer.Character:findFirstChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
end
workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
end
end
end
end
end)

Autofarms:Toggle("Killaura mobs")
spawn(function()
while wait(0.01) do
if library.flags["Killaura mobs"] then
local entity = workspace.Entities:getChildren()
for i=1,#entity do
if entity[i]:findFirstChild("HumanoidRootPart") then
if game.Players.LocalPlayer.Character:findFirstChild("HumanoidRootPart") then
if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - entity[i].HumanoidRootPart.Position).magnitude <= 15 then
refreshTools()
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:findFirstChild(highestWeaponName))
game.ReplicatedStorage.Remotes.Functions["SWING_SWORD"]:InvokeServer({hitUnit = entity[i]})
end
end
end
end
end
end
end)

Autofarms:Toggle("Tier 2 Farm (ores)")
spawn(function()
while wait() do
if library.flags["Tier 2 Farm (ores)"] then
game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
end
local rocks = workspace.WildernessBlocks:getChildren()
for i=1,#rocks do
if library.flags["Tier 2 Farm (ores)"] then
game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
if rocks[i]:findFirstChild("PrefabType") then
if rocks[i]:findFirstChild("PrefabType").Value == "rockTier2" then
local hum = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
repeat
wait()
game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
hum.CFrame = rocks[i].CFrame + Vector3.new(0,-6,0)
refreshTools()
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:findFirstChild(highestPickaxeName))
game.ReplicatedStorage.Remotes.Functions["BLOCK_BREAK_REQUEST"]:InvokeServer({block = rocks[i]})
until rocks[i].Parent == nil
end
end
end
end
end
end)

Autofarms:Toggle("Tree Autofarm")
spawn(function()
while wait(0.1) do
if library.flags["Tree Autofarm"] then
local blocks = workspace.Islands[game.Players.LocalPlayer.UserId .. "-island"].Blocks:getChildren()
for i=1,#blocks do
if library.flags["Tree Autofarm"] then
if string.find(blocks[i].Name, "tree") then
local root = blocks[i]
local plantCFrame = blocks[i].CollisionBoxes.Part.CFrame
repeat
wait()
if game.Players.LocalPlayer.Character:findFirstChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = root.CFrame + Vector3.new(4,0,0)
end
refreshTools()
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:findFirstChild(highestAxeName))
game.ReplicatedStorage.Remotes.Functions["BLOCK_BREAK_REQUEST"]:InvokeServer({block = blocks[i]})
until blocks[i].Parent == nil
--[[ --removed until i can be bothered to add replanting with the new update
if string.find(blocks[i].Name, "Pine") then
game.ReplicatedStorage.Remotes.Functions["BLOCK_PLACE_REQUEST"]:InvokeServer({blockType = "saplingPine", cframe = plantCFrame})
elseif string.find(blocks[i].Name, "Birch") then
game.ReplicatedStorage.Remotes.Functions["BLOCK_PLACE_REQUEST"]:InvokeServer({blockType = "saplingBirch", cframe = plantCFrame})
elseif string.find(blocks[i].Name, "Maple") then
game.ReplicatedStorage.Remotes.Functions["BLOCK_PLACE_REQUEST"]:InvokeServer({blockType = "saplingMaple", cframe = plantCFrame})
else
game.ReplicatedStorage.Remotes.Functions["BLOCK_PLACE_REQUEST"]:InvokeServer({blockType = "sapling", cframe = plantCFrame})
end
wait(0.05)
end
--]]
end
end
end	
end
end
end)
local selectedAutosmeltOre = ""
Autofarms:Dropdown("Autosmelt ores", {"iron", "gold"}, function(cb) selectedAutosmeltOre = cb end);
Autofarms:Toggle("Autosmelt")
spawn(function()
while wait(0.1) do
if library.flags["Autosmelt"] then
if selectedAutosmeltOre == "iron" then
function getAmountOfIron()
local bruh = 0
local a = game.Players.LocalPlayer.Backpack:getChildren()
for i=1,#a do
if a[i].Name == "ironOre" then
bruh = bruh+1 
end
end
return bruh
end

local blocks = workspace.Islands[game.Players.LocalPlayer.UserId .. "-island"].Blocks:getChildren()
for i=1,#blocks do
if blocks[i].Name == "smallFurnace" then
if blocks[i]:findFirstChild(blocks[i].Name) then
local oresCooking = blocks[i].WorkerContents:getChildren()
if blocks[i].Effects.Fire.Fire.Enabled == false then
game.Players.LocalPlayer.Character:MoveTo(blocks[i].Position)
game.ReplicatedStorage.Remotes.Functions["BLOCK_WORKER_DEPOSIT_TOOL_REQUEST"]:InvokeServer({block = blocks[i], amount = 1, toolName = "coal"})
end
if #oresCooking ~= 3 and getAmountOfIron() ~= 0 then
repeat
oresCooking = blocks[i].WorkerContents:getChildren()
game.Players.LocalPlayer.Character:MoveTo(blocks[i].Position)
game.ReplicatedStorage.Remotes.Functions["BLOCK_WORKER_DEPOSIT_TOOL_REQUEST"]:InvokeServer({block = blocks[i], amount = 1, toolName = "ironOre"})
until #oresCooking == 3 or getAmountOfIron() == 0
end
for i=1,#oresCooking do
if oresCooking[i].Name == "iron" then
game.Players.LocalPlayer.Character:MoveTo(oresCooking[i].Parent.Parent.Parent.Position)
game.ReplicatedStorage.Remotes.Functions["TOOL_PICKUP_REQUEST"]:InvokeServer({tool = oresCooking[i]})
end
end
end
end
end
end

if selectedAutosmeltOre == "gold" then
function getAmountOfGold()
local bruh = 0
local a = game.Players.LocalPlayer.Backpack:getChildren()
for i=1,#a do
if a[i].Name == "goldOre" then
bruh = bruh+1 
end
end
return bruh
end

local blocks = workspace.Islands[game.Players.LocalPlayer.UserId .. "-island"].Blocks:getChildren()
for i=1,#blocks do
if blocks[i].Name == "smallFurnace" then
if blocks[i]:findFirstChild(blocks[i].Name) then
local oresCooking = blocks[i].WorkerContents:getChildren()
if blocks[i].Effects.Fire.Fire.Enabled == false then
game.Players.LocalPlayer.Character:MoveTo(blocks[i].Position)
game.ReplicatedStorage.Remotes.Functions["BLOCK_WORKER_DEPOSIT_TOOL_REQUEST"]:InvokeServer({block = blocks[i], amount = 1, toolName = "coal"})
end
if #oresCooking ~= 3 and getAmountOfGold() ~= 0 then
repeat
oresCooking = blocks[i].WorkerContents:getChildren()
game.Players.LocalPlayer.Character:MoveTo(blocks[i].Position)
game.ReplicatedStorage.Remotes.Functions["BLOCK_WORKER_DEPOSIT_TOOL_REQUEST"]:InvokeServer({block = blocks[i], amount = 1, toolName = "goldOre"})
until #oresCooking == 3 or getAmountOfGold() == 0
end
for i=1,#oresCooking do
if oresCooking[i].Name == "gold" then
game.Players.LocalPlayer.Character:MoveTo(oresCooking[i].Parent.Parent.Parent.Position)
game.ReplicatedStorage.Remotes.Functions["TOOL_PICKUP_REQUEST"]:InvokeServer({tool = oresCooking[i]})
end
end
end
end
end
end
end
end
end)

Autofarms:Toggle("Auto Stone Cut")
spawn(function()
while wait(0.1) do
if library.flags["Auto Stone Cut"] then
function getAmountOfStone()
local bruh = 0
local a = game.Players.LocalPlayer.Backpack:getChildren()
for i=1,#a do
if a[i].Name == "stone" then
bruh = bruh+1 
end
end
return bruh
end

local blocks = workspace.Islands[game.Players.LocalPlayer.UserId .. "-island"].Blocks:getChildren()
for i=1,#blocks do
if blocks[i].Name == "stonecutter" then
if blocks[i]:findFirstChild(blocks[i].Name) then
local blocksCutting = blocks[i].WorkerContents:getChildren()
if blocks[i].Particles.Spark.Enabled == false then
game.Players.LocalPlayer.Character:MoveTo(blocks[i].Position)
game.ReplicatedStorage.Remotes.Functions["BLOCK_WORKER_DEPOSIT_TOOL_REQUEST"]:InvokeServer({block = blocks[i], amount = 1, toolName = "coal"})
end
if #blocksCutting ~= 2 and getAmountOfStone() ~= 0 then
repeat
blocksCutting = blocks[i].WorkerContents:getChildren()
game.Players.LocalPlayer.Character:MoveTo(blocks[i].Position)
game.ReplicatedStorage.Remotes.Functions["BLOCK_WORKER_DEPOSIT_TOOL_REQUEST"]:InvokeServer({block = blocks[i], amount = 1, toolName = "stone"})
until #blocksCutting == 2 or getAmountOfStone() == 0
end
for i=1,#blocksCutting do
if blocksCutting[i].Name == "stoneBrick" then
game.Players.LocalPlayer.Character:MoveTo(blocksCutting[i].Parent.Parent.Parent.Position)
game.ReplicatedStorage.Remotes.Functions["TOOL_PICKUP_REQUEST"]:InvokeServer({tool = blocksCutting[i]})
end
end
end
end
end
end
end
end)

local selectedSawmillWood = ""
Autofarms:Dropdown("Auto sawmill wood", {"wood", "birch", "pine", "maple"}, function(cb) selectedSawmillWood = cb end);
Autofarms:Toggle("Auto Sawmill")
spawn(function()
while wait(0.1) do
if library.flags["Auto Sawmill"] then
if selectedSawmillWood == "wood" then
function getAmountOfWood()
local bruh = 0
local a = game.Players.LocalPlayer.Backpack:getChildren()
for i=1,#a do
if a[i].Name == "wood" then
bruh = bruh+1
end
end
return bruh
end
 
local blocks = workspace.Islands[game.Players.LocalPlayer.UserId .. "-island"].Blocks:getChildren()
for i=1,#blocks do
if blocks[i].Name == "sawmill" then
if blocks[i]:findFirstChild(blocks[i].Name) then
local oresCooking = blocks[i].WorkerContents:getChildren()
if blocks[i].Effects.Particles.Spark.Enabled == false then
game.Players.LocalPlayer.Character:MoveTo(blocks[i].Position)
game.ReplicatedStorage.Remotes.Functions["BLOCK_WORKER_DEPOSIT_TOOL_REQUEST"]:InvokeServer({block = blocks[i], amount = 1, toolName = "coal"})
end
if #oresCooking ~= 3 and getAmountOfWood() ~= 0 then
repeat
oresCooking = blocks[i].WorkerContents:getChildren()
game.Players.LocalPlayer.Character:MoveTo(blocks[i].Position)
game.ReplicatedStorage.Remotes.Functions["BLOCK_WORKER_DEPOSIT_TOOL_REQUEST"]:InvokeServer({block = blocks[i], amount = 1, toolName = "wood"})
until #oresCooking == 3 or getAmountOfWood() == 0
end
for i=1,#oresCooking do
if oresCooking[i].Name == "woodPlank" then
game.Players.LocalPlayer.Character:MoveTo(oresCooking[i].Parent.Parent.Parent.Position)
game.ReplicatedStorage.Remotes.Functions["TOOL_PICKUP_REQUEST"]:InvokeServer({tool = oresCooking[i]})
end
end
end
end
end
end
if selectedSawmillWood == "birch" then
function getAmountOfBirch()
local bruh = 0
local a = game.Players.LocalPlayer.Backpack:getChildren()
for i=1,#a do
if a[i].Name == "woodBirch" then
bruh = bruh+1
end
end
return bruh
end
 
local blocks = workspace.Islands[game.Players.LocalPlayer.UserId .. "-island"].Blocks:getChildren()
for i=1,#blocks do
if blocks[i].Name == "sawmill" then
if blocks[i]:findFirstChild(blocks[i].Name) then
local oresCooking = blocks[i].WorkerContents:getChildren()
if blocks[i].Effects.Particles.Spark.Enabled == false then
game.Players.LocalPlayer.Character:MoveTo(blocks[i].Position)
game.ReplicatedStorage.Remotes.Functions["BLOCK_WORKER_DEPOSIT_TOOL_REQUEST"]:InvokeServer({block = blocks[i], amount = 1, toolName = "coal"})
end
if #oresCooking ~= 3 and getAmountOfBirch() ~= 0 then
repeat
oresCooking = blocks[i].WorkerContents:getChildren()
game.Players.LocalPlayer.Character:MoveTo(blocks[i].Position)
game.ReplicatedStorage.Remotes.Functions["BLOCK_WORKER_DEPOSIT_TOOL_REQUEST"]:InvokeServer({block = blocks[i], amount = 1, toolName = "woodBirch"})
until #oresCooking == 3 or getAmountOfBirch() == 0
end
for i=1,#oresCooking do
if oresCooking[i].Name == "birchPlank" then
game.Players.LocalPlayer.Character:MoveTo(oresCooking[i].Parent.Parent.Parent.Position)
game.ReplicatedStorage.Remotes.Functions["TOOL_PICKUP_REQUEST"]:InvokeServer({tool = oresCooking[i]})
end
end
end
end
end
end
if selectedSawmillWood == "pine" then
function getAmountOfPine()
local bruh = 0
local a = game.Players.LocalPlayer.Backpack:getChildren()
for i=1,#a do
if a[i].Name == "woodPine" then
bruh = bruh+1
end
end
return bruh
end
 
local blocks = workspace.Islands[game.Players.LocalPlayer.UserId .. "-island"].Blocks:getChildren()
for i=1,#blocks do
if blocks[i].Name == "sawmill" then
if blocks[i]:findFirstChild(blocks[i].Name) then
local oresCooking = blocks[i].WorkerContents:getChildren()
if blocks[i].Effects.Particles.Spark.Enabled == false then
game.Players.LocalPlayer.Character:MoveTo(blocks[i].Position)
game.ReplicatedStorage.Remotes.Functions["BLOCK_WORKER_DEPOSIT_TOOL_REQUEST"]:InvokeServer({block = blocks[i], amount = 1, toolName = "coal"})
end
if #oresCooking ~= 3 and getAmountOfPine() ~= 0 then
repeat
oresCooking = blocks[i].WorkerContents:getChildren()
game.Players.LocalPlayer.Character:MoveTo(blocks[i].Position)
game.ReplicatedStorage.Remotes.Functions["BLOCK_WORKER_DEPOSIT_TOOL_REQUEST"]:InvokeServer({block = blocks[i], amount = 1, toolName = "woodPine"})
until #oresCooking == 3 or getAmountOfPine() == 0
end
for i=1,#oresCooking do
if oresCooking[i].Name == "pinePlank" then
game.Players.LocalPlayer.Character:MoveTo(oresCooking[i].Parent.Parent.Parent.Position)
game.ReplicatedStorage.Remotes.Functions["TOOL_PICKUP_REQUEST"]:InvokeServer({tool = oresCooking[i]})
end
end
end
end
end
end
if selectedSawmillWood == "maple" then
function getAmountOfMaple()
local bruh = 0
local a = game.Players.LocalPlayer.Backpack:getChildren()
for i=1,#a do
if a[i].Name == "woodMaple" then
bruh = bruh+1
end
end
return bruh
end
 
local blocks = workspace.Islands[game.Players.LocalPlayer.UserId .. "-island"].Blocks:getChildren()
for i=1,#blocks do
if blocks[i].Name == "sawmill" then
if blocks[i]:findFirstChild(blocks[i].Name) then
local oresCooking = blocks[i].WorkerContents:getChildren()
if blocks[i].Effects.Particles.Spark.Enabled == false then
game.Players.LocalPlayer.Character:MoveTo(blocks[i].Position)
game.ReplicatedStorage.Remotes.Functions["BLOCK_WORKER_DEPOSIT_TOOL_REQUEST"]:InvokeServer({block = blocks[i], amount = 1, toolName = "coal"})
end
if #oresCooking ~= 3 and getAmountOfMaple() ~= 0 then
repeat
oresCooking = blocks[i].WorkerContents:getChildren()
game.Players.LocalPlayer.Character:MoveTo(blocks[i].Position)
game.ReplicatedStorage.Remotes.Functions["BLOCK_WORKER_DEPOSIT_TOOL_REQUEST"]:InvokeServer({block = blocks[i], amount = 1, toolName = "woodMaple"})
until #oresCooking == 3 or getAmountOfMaple() == 0
end
for i=1,#oresCooking do
if oresCooking[i].Name == "maplePlank" then
game.Players.LocalPlayer.Character:MoveTo(oresCooking[i].Parent.Parent.Parent.Position)
game.ReplicatedStorage.Remotes.Functions["TOOL_PICKUP_REQUEST"]:InvokeServer({tool = oresCooking[i]})
end
end
end
end
end
end
end
end
end)

Autofarms:Toggle("Farm Stone")
Autofarms:Toggle("Farm Coal")
Autofarms:Toggle("Farm Iron")
Autofarms:Toggle("Farm Clay")
spawn(function()
while wait(0.3) do
local rocks = workspace.Islands[game.Players.LocalPlayer.UserId .. "-island"].Blocks:getChildren()
for i=1,#rocks do
if library.flags["Farm Stone"] or library.flags["Farm Coal"] or library.flags["Farm Iron"] or library.flags["Farm Clay"] then
if rocks[i]:findFirstChild("RockStage") then
if rocks[i].Name == "rockStone" and library.flags["Farm Stone"] then
local hum = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
repeat
wait()
game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
hum.CFrame = rocks[i].CFrame + Vector3.new(0,3.4,0)
refreshTools()
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:findFirstChild(highestPickaxeName))
game.ReplicatedStorage.Remotes.Functions["BLOCK_BREAK_REQUEST"]:InvokeServer({block = rocks[i]})
until rocks[i].Parent == nil
end
if rocks[i].Name == "rockCoal" and library.flags["Farm Coal"] then
local hum = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
repeat
wait()
game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
hum.CFrame = rocks[i].CFrame + Vector3.new(0,3.4,0)
refreshTools()
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:findFirstChild(highestPickaxeName))
game.ReplicatedStorage.Remotes.Functions["BLOCK_BREAK_REQUEST"]:InvokeServer({block = rocks[i]})
until rocks[i].Parent == nil
end
if rocks[i].Name == "rockIron" and library.flags["Farm Iron"] then
local hum = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
repeat
wait()
game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
hum.CFrame = rocks[i].CFrame + Vector3.new(0,3.4,0)
refreshTools()
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:findFirstChild(highestPickaxeName))
game.ReplicatedStorage.Remotes.Functions["BLOCK_BREAK_REQUEST"]:InvokeServer({block = rocks[i]})
until rocks[i].Parent == nil
end
if rocks[i].Name == "rockClay" and library.flags["Farm Clay"] then
local hum = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
repeat
wait()
game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
hum.CFrame = rocks[i].CFrame + Vector3.new(0,3.4,0)
refreshTools()
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:findFirstChild(highestPickaxeName))
game.ReplicatedStorage.Remotes.Functions["BLOCK_BREAK_REQUEST"]:InvokeServer({block = rocks[i]})
until rocks[i].Parent == nil
end
end
end
end
end
end)

local UserInputService = game:GetService("UserInputService")
UserInputService.InputBegan:Connect(function(input)
if UserInputService:IsKeyDown(Enum.KeyCode.RightControl) then
library:ToggleVisibility()
end
end)



Autofarms:Toggle("Fishing Helper")
function playerFishingBobber()
local a = workspace:getChildren()
for i=1,#a do
if a[i].Name == "Bobber" then
if a[i].Player.Value.Name == game.Players.LocalPlayer.Name then
return a[i]
end
end
end
end


spawn(function()
workspace.ChildAdded:connect(function(new)
if new.Name == "bubbles" then
if library.flags["Fishing Helper"] then
if playerFishingBobber() ~= nil then
game.ReplicatedStorage.Remotes.Functions["PULL_FISHING_ROD"]:InvokeServer({catchAttempt = true})
end
end
end
end)
end)


Autofarms:Toggle("TP to Fish")
spawn(function()
while wait(0.1) do
if library.flags["TP to Fish"] then
if workspace:findFirstChild("Fish") then
if playerFishingBobber() == nil then
game.ReplicatedStorage.Remotes.Functions["CAST_FISHING_ROD"]:InvokeServer({playerLocation = game.Players.LocalPlayer.Character.HumanoidRootPart.Position, direction = Vector3.new(0.1,0,0), strength = 200})
end
if playerFishingBobber() ~= nil then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Fish.CFrame
wait(0.1)
if workspace:findFirstChild("Fish") then
if playerFishingBobber() ~= nil then
local a = playerFishingBobber()
a.CFrame = workspace.Fish.CFrame
end
end
end
end
end
end
end)


local Info = library:CreateSection("Info")
Info:Button("Sky Block Gui v" .. version)
Info:Button("Created by Levi#7059")
Info:Button("LeviTheOtaku @ v3rm")
Info:Button("UI Lib: Modified Aztup's UI lib")
Info:Button("Toggle GUI with RightCtrl")

library:Ready();
