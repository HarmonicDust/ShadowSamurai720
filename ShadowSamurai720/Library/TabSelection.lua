local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")

local TabSelection = {}

TabSelection.Selector = script.Parent
TabSelection.Left = TabSelection.Selector.Arrows.LeftArrow
TabSelection.Right = TabSelection.Selector.Arrows.RightArrow
TabSelection.ListLayout = TabSelection.Selector.Arrows.ListLayout
TabSelection.ArrowPadding = TabSelection.Selector.Arrows.ArrowPadding
TabSelection.Tabs = TabSelection.Selector.Tabs

RunService.RenderStepped:Connect(function()
	TabSelection.ListLayout.Padding = UDim.new(0, TabSelection.Selector.TextBounds.X - 10)
end)

TabSelection.Selector.MouseEnter:Connect(function()
	TweenService:Create(TabSelection.ArrowPadding, TweenInfo.new(0.5, Enum.EasingStyle.Back), {PaddingBottom = UDim.new(0, 2)}):Play()
end)

TabSelection.Selector.MouseLeave:Connect(function()
	TweenService:Create(TabSelection.ArrowPadding, TweenInfo.new(0.5, Enum.EasingStyle.Back), {PaddingBottom = UDim.new(0, -40)}):Play()
end)

TabSelection.Selector.MouseButton1Down:Connect(function()
	TabSelection.Tabs.Visible = not TabSelection.Tabs.Visible
	TweenService:Create(TabSelection.Selector, TweenInfo.new(0.175, Enum.EasingStyle.Cubic), {TextSize = 26, TextColor3 = Color3.fromRGB(152, 61, 255)}):Play()
	task.wait(.1)
	TweenService:Create(TabSelection.Selector, TweenInfo.new(0.175, Enum.EasingStyle.Cubic), {TextSize = 14, TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
end)
