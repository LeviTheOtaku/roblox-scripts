_G.AutoPlay = true

function getPlayerTycoon()
local tycoon = workspace["Zednov's Tycoon Kit"]:WaitForChild("Tycoons"):getChildren()
for i=1,#tycoon do
if tycoon[i].Owner.Value == game.Players.LocalPlayer then
return tycoon[i] 
end
end
end

function getNextButton()
local button = getPlayerTycoon():WaitForChild("Buttons"):getDescendants()
local cheapest = math.huge
local cheapestbutton = nil
for i=1,#button do
if button[i]:findFirstChild("Head") and button[i]:findFirstChild("Head").Transparency ~= 1 then
if button[i].Price.Value < cheapest then
cheapest = button[i].Price.Value
cheapestbutton = button[i]
end
end
end
return cheapestbutton
end

function touchPart(part)
local character = game:GetService("Players").LocalPlayer.Character or game:GetService("Players").LocalPlayer.CharacterAdded:Wait()
local charparts = character:FindFirstChildWhichIsA("BasePart")
firetouchinterest(part,charparts,0)
wait()
firetouchinterest(part,charparts,1)
end

while true do
wait(0.5)
if _G.AutoPlay == true then
if game.Players.LocalPlayer.leaderstats.Cash.Value >= getNextButton().Price.Value then
touchPart(getNextButton().Head)
elseif (getPlayerTycoon().CurrencyToCollect.Value + game.Players.LocalPlayer.leaderstats.Cash.Value) >= getNextButton().Price.Value then
touchPart(getPlayerTycoon().Essentials:WaitForChild("Giver"))
wait()
touchPart(getNextButton().Head)
end
end
end
