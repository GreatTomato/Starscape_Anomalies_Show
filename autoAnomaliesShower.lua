
function piska()
    local ScreenGui = Instance.new("ScreenGui")
    TextLabel = Instance.new("TextLabel")

    --Properties:

    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    TextLabel.Parent = ScreenGui
    TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BackgroundTransparency = 0.750
    TextLabel.Position = UDim2.new(0.845440507, 0, 0.133689836, 0)
    TextLabel.Size = UDim2.new(0, 200, 0, 10)
    TextLabel.Font = Enum.Font.SourceSans
    TextLabel.Text = "Please wait..."
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextSize = 16.000
	TextLabel.TextStrokeTransparency = 0.500
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel.TextYAlignment = Enum.TextYAlignment.Top

    -- Scripts:

    --local function HDUW_fake_script() -- TextLabel.LocalScript 
    function nona()
		local script = Instance.new('LocalScript', TextLabel)
		wait(1)
		local textLabel = script.Parent
		local assus = ""
		children = workspace.Objects.Anomalies:GetChildren()
		local textSize = 0
		if #children == 0 then
		textLabel = "No anomalies here"
		textSize = 16
		else
		for i = 1, #children do
			local child = children[i]
			assus = assus ..  " №" .. i .. ": ".. child.Name .. "\n"
			textSize = textSize + 16
		end
		end
		--wait(10)
		--textLabel.Text = " I ate a headgehog"
		textLabel.Text = assus
		textLabel.Size = UDim2.new(0, 150, 0,textSize)
	end
    --end
coroutine.wrap(nona)()
end

wait(1);
piska()
local UserInputService = game:GetService("UserInputService")
game:GetService("UserInputService").InputEnded:connect(function(Input)
    if Input.KeyCode == Enum.KeyCode.Space then
        nona()
    end
end)

--[[game:GetService('RunService').Heartbeat:Connect(function()
  if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
    nona()
  end
end)]]
