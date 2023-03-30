if game.ReplicatedStorage:FindFirstChild("GameAnalytics") then
game.ReplicatedStorage:FindFirstChild("GameAnalytics"):remove()
end

local stuffToSell = {"Cinnamoroll Bar Stool", "Cinnamoroll Table", "Cinnamoroll Counter", "Cinnamoroll Wall", "Cinnamoroll Cup Statue", "Cinnamoroll Wall (S)", "Cinnamoroll Wall (M)", "Cinnamoroll Wall (Arc)", "Cinnamoroll Wallpaper", "Cinnamoroll Ceiling Light", "Pink Cinnamoroll Flower", "Blue Cinnamoroll Flower", "Cinnamoroll Floor E", "Cinnamoroll Floor F"}
local sellArgs = {}

local item = game.Players.LocalPlayer.PlayerGui.UIPlayer.UIStorage.StorageFrame.Items.ItemList:getChildren()

for x=1,#stuffToSell do
local id = nil
local count = 0
for i=1,#item do
if item[i]:findFirstChild("Text") then
if item[i].Text.Text == stuffToSell[x] then
id = tonumber(item[i].Name)
if string.split(item[i].ShuLiang.Text, "x")[2] == nil then
count = count + tonumber(string.split(item[i].ShuLiang.Text, "X")[2])
elseif string.split(item[i].ShuLiang.Text, "X")[2] == nil then
count = count + tonumber(string.split(item[i].ShuLiang.Text, "x")[2])
end
end
end
end

if count > 200 then
table.insert(sellArgs, {["itemCount"] = count-200, ["itemTemplateID"] = id})
end
end

game:GetService("ReplicatedStorage"):WaitForChild("GameCommon"):WaitForChild("Messages"):WaitForChild("BuyAndSellItem"):FireServer(2, sellArgs)
