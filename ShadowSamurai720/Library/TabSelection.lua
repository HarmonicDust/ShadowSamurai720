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
task.wait(.2)
TabSelection.Selector.MouseButton1Down:Connect(function()
	TabSelection.Tabs.Visible = not TabSelection.Tabs.Visible
	TweenService:Create(TabSelection.Selector, TweenInfo.new(0.175, Enum.EasingStyle.Cubic), {TextSize = 26, TextColor3 = Color3.fromRGB(152, 61, 255)}):Play()
	task.wait(.1)
	TweenService:Create(TabSelection.Selector, TweenInfo.new(0.175, Enum.EasingStyle.Cubic), {TextSize = 14, TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
	for i, v in next, TabSelection.Selector.Parent.Tabs:GetChildren() do
		for ii, vv in next, TabSelection.Tabs:GetChildren() do
			if vv:FindFirstChild("TabName") then
				vv.TabName.MouseButton1Down:Connect(function()
					if vv.TabName.Text == v.Name then
						v.Visible = true
						TabSelection.Selector.Text = vv.TabName.Text
						TabSelection.Tabs.Visible = false
					else
						v.Visible = false
					end
				end)
			end
		end
	end
end)

return TabSelection