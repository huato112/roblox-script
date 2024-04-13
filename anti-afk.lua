local bb = game:GetService('VirtualUser')
local kickCount = 0

local ba = Instance.new("ScreenGui")
local ab = Instance.new("TextLabel")

ba.Parent = game.CoreGui
ba.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ab.Parent = ba
ab.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
ab.Position = UDim2.new(0, 0, 0.158377, 0)
ab.Size = UDim2.new(0, 185, 0, 22)
ab.Font = Enum.Font.ArialBold
ab.Text = "Roblox tried to kick you 0 times"
ab.TextColor3 = Color3.new(0, 1, 1)
ab.TextSize = 10

local function updateGUI()
    ab.Text = "Roblox tried to kick you " .. kickCount .. " time(s)"
end

game:GetService('Players').LocalPlayer.Idled:Connect(function()
    bb:CaptureController()
    bb:ClickButton2(Vector2.new())
    kickCount = kickCount + 1
    updateGUI()
    wait(2)
    updateGUI()
end)
