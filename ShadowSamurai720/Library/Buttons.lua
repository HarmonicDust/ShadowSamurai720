local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")

local Buttons = {}

Buttons.Button = script.Parent
Buttons.Callback = Buttons.Callback or function() end
Buttons.Left = Buttons.Button.Arrows.LeftArrow
Buttons.Right = Buttons.Button.Arrows.RightArrow
Buttons.ListLayout = Buttons.Button.Arrows.ListLayout
Buttons.ArrowPadding = Buttons.Button.Arrows.ArrowPadding

Buttons.Button.MouseButton1Down:Connect(function()
	spawn(function()
		TweenService:Create(Buttons.Button, TweenInfo.new(.25, Enum.EasingStyle.Back), {ImageColor3 = Color3.fromRGB(152, 61, 255)}):Play()
		TweenService:Create(Buttons.Button.Title, TweenInfo.new(.25, Enum.EasingStyle.Back), {TextSize = 16}):Play()
		task.wait(.2)
		TweenService:Create(Buttons.Button, TweenInfo.new(.25, Enum.EasingStyle.Back), {ImageColor3 = Color3.fromRGB(255, 255, 255)}):Play()
		TweenService:Create(Buttons.Button.Title, TweenInfo.new(.25, Enum.EasingStyle.Back), {TextSize = 12}):Play()
	end)

	Buttons.Callback()
end)

RunService.RenderStepped:Connect(function()
	Buttons.ListLayout.Padding = UDim.new(0, Buttons.Button.Title.TextBounds.X - 6)
end)

Buttons.Button.MouseEnter:Connect(function()
	TweenService:Create(Buttons.ArrowPadding, TweenInfo.new(0.5, Enum.EasingStyle.Back), {PaddingBottom = UDim.new(0, 5)}):Play()
end)

Buttons.Button.MouseLeave:Connect(function()
	TweenService:Create(Buttons.ArrowPadding, TweenInfo.new(0.5, Enum.EasingStyle.Back), {PaddingBottom = UDim.new(0, -40)}):Play()
end)

return Buttons