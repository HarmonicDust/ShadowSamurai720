local Main = {}

local Fetch = loadstring(game:HttpGet("https://raw.githubusercontent.com/HarmonicDust/My-Project/main/Functions/Fetch.lua", true))()

function Main:Initialize(Name)
    Name = Name or "ShadowSamurai720"

    local Container = {}

    Main.ProtectGui = syn and syn.protect_gui or protectgui

    local a=Instance.new"ScreenGui"
    Main.ProtectGui(a)
    a.Name="JailbreakLibrary"
    a.ZIndexBehavior=1
    a.ResetOnSpawn=false
    local b=Instance.new"ImageLabel"
    b.Name="Container"
    b.Size=UDim2.new(0,278,0,290)
    b.BackgroundTransparency=1
    b.Position=UDim2.new(0.4131122,0,0.2181426,0)
    b.BorderSizePixel=0
    b.BackgroundColor3=Color3.fromRGB(255,255,255)
    b.ScaleType=1
    b.ImageColor3=Color3.fromRGB(24,24,24)
    b.Image="http://www.roblox.com/asset/?id=5624731939"
    b.SliceCenter=Rect.new(20,20,180,280)
    b.Parent=a
    local c=Instance.new"Frame"
    c.Name="Tabs"
    c.Size=UDim2.new(0,252,0,196)
    c.BackgroundTransparency=1
    c.Position=UDim2.new(0.047,0,0.276,0)
    c.BackgroundColor3=Color3.fromRGB(255,255,255)
    c.Parent=b
    function Container:Tab(T_Name)
        local d=Instance.new"Frame"
        d.Name="Tab"
        d.Visible=false
        d.Size=UDim2.new(1,0,1,0)
        d.BackgroundColor3=Color3.fromRGB(25,25,25)
        d.Parent=c
        local e=Instance.new"UICorner"
        e.CornerRadius=UDim.new(0,6)
        e.Parent=d
        local f=Instance.new"ScrollingFrame"
        f.Size=UDim2.new(1,0,1,0)
        f.BackgroundTransparency=1
        f.Active=true
        f.BorderSizePixel=0
        f.BackgroundColor3=Color3.fromRGB(255,255,255)
        f.ScrollBarThickness=4
        f.Parent=d
        local g=Instance.new"UIListLayout"
        g.SortOrder=2
        g.Padding=UDim.new(0,3)
        g.Parent=f
        local h=Instance.new"UIPadding"
        h.PaddingTop=UDim.new(0,4)
        h.PaddingLeft=UDim.new(0,4)
        h.Parent=f
        local i=Instance.new"ImageButton"
        i.LayoutOrder=1
        i.Size=UDim2.new(0,240,0,24)
        i.BackgroundTransparency=1
        i.BackgroundColor3=Color3.fromRGB(255,255,255)
        i.ImageColor3=Color3.fromRGB(72,72,72)
        i.Image="http://www.roblox.com/asset/?id=4908048284"
        i.Parent=f
        local j=Instance.new"UIPadding"
        j.PaddingTop=UDim.new(0,4)
        j.Parent=i
        local k=Instance.new"TextLabel"
        k.Name="Title"
        k.LayoutOrder=1
        k.Size=UDim2.new(1,0,1,0)
        k.BackgroundTransparency=1
        k.BackgroundColor3=Color3.fromRGB(255,255,255)
        k.FontSize=4
        k.TextSize=12
        k.TextColor3=Color3.fromRGB(255,255,255)
        k.Text="Button"
        k.Font=32
        k.Parent=i
        --local l=Instance.new"LocalScript"
        --l.Source="local RunService = game:GetService(\"RunService\")\nlocal TweenService = game:GetService(\"TweenService\")\n\nlocal Buttons = {}\n\nButtons.Button = script.Parent\nButtons.Callback = Buttons.Callback or function() end\nButtons.Left = Buttons.Button.Arrows.LeftArrow\nButtons.Right = Buttons.Button.Arrows.RightArrow\nButtons.ListLayout = Buttons.Button.Arrows.ListLayout\nButtons.ArrowPadding = Buttons.Button.Arrows.ArrowPadding\n\nButtons.Button.MouseButton1Down:Connect(function()\n\tspawn(function()\n\t\tTweenService:Create(Buttons.Button, TweenInfo.new(.25, Enum.EasingStyle.Back), {ImageColor3 = Color3.fromRGB(152, 61, 255)}):Play()\n\t\tTweenService:Create(Buttons.Button.Title, TweenInfo.new(.25, Enum.EasingStyle.Back), {TextSize = 16}):Play()\n\t\ttask.wait(.2)\n\t\tTweenService:Create(Buttons.Button, TweenInfo.new(.25, Enum.EasingStyle.Back), {ImageColor3 = Color3.fromRGB(255, 255, 255)}):Play()\n\t\tTweenService:Create(Buttons.Button.Title, TweenInfo.new(.25, Enum.EasingStyle.Back), {TextSize = 12}):Play()\n\tend)\n\n\tButtons.Callback()\nend)\n\nRunService.RenderStepped:Connect(function()\n\tButtons.ListLayout.Padding = UDim.new(0, Buttons.Button.Title.TextBounds.X - 6)\nend)\n\nButtons.Button.MouseEnter:Connect(function()\n\tTweenService:Create(Buttons.ArrowPadding, TweenInfo.new(0.5, Enum.EasingStyle.Back), {PaddingBottom = UDim.new(0, 5)}):Play()\nend)\n\nButtons.Button.MouseLeave:Connect(function()\n\tTweenService:Create(Buttons.ArrowPadding, TweenInfo.new(0.5, Enum.EasingStyle.Back), {PaddingBottom = UDim.new(0, -40)}):Play()\nend)"
        --l.Parent=i
        local m=Instance.new"Frame"
        m.Name="Arrows"
        m.LayoutOrder=1
        m.Size=UDim2.new(1,0,1,0)
        m.ClipsDescendants=true
        m.BackgroundTransparency=1
        m.BackgroundColor3=Color3.fromRGB(255,255,255)
        m.Parent=i
        local n=Instance.new"UIListLayout"
        n.Name="ListLayout"
        n.FillDirection=0
        n.HorizontalAlignment=0
        n.VerticalAlignment=0
        n.SortOrder=2
        n.Parent=m
        local o=Instance.new"UIPadding"
        o.Name="ArrowPadding"
        o.PaddingBottom=UDim.new(0,-40)
        o.PaddingLeft=UDim.new(0,2)
        o.Parent=m
        local p=Instance.new"TextLabel"
        p.Name="LeftArrow"
        p.LayoutOrder=1
        p.Size=UDim2.new(0,24,0,24)
        p.BackgroundTransparency=1
        p.BackgroundColor3=Color3.fromRGB(255,255,255)
        p.FontSize=7
        p.TextSize=22
        p.TextColor3=Color3.fromRGB(145,145,145)
        p.Text=">"
        p.TextWrapped=true
        p.Font=26
        p.TextWrap=true
        p.Parent=m
        local q=Instance.new"TextLabel"
        q.Name="RightArrow"
        q.LayoutOrder=1
        q.Size=UDim2.new(0,24,0,24)
        q.BackgroundTransparency=1
        q.BackgroundColor3=Color3.fromRGB(255,255,255)
        q.FontSize=7
        q.TextSize=22
        q.TextColor3=Color3.fromRGB(145,145,145)
        q.Text="<"
        q.TextWrapped=true
        q.Font=26
        q.TextWrap=true
        q.Parent=m
        local r=Instance.new"TextLabel"
        r.Name="Title"
        r.LayoutOrder=1
        r.Size=UDim2.new(0,240,0,18)
        r.Position=UDim2.new(0,0,0.25,0)
        r.BackgroundColor3=Color3.fromRGB(50,50,50)
        r.FontSize=2
        r.TextSize=10
        r.TextColor3=Color3.fromRGB(255,255,255)
        r.Text="label"
        r.TextWrapped=true
        r.Font=32
        r.TextWrap=true
        r.Parent=f
        local s=Instance.new"UIPadding"
        s.PaddingTop=UDim.new(0,2)
        s.Parent=r
        local t=Instance.new"UICorner"
        t.CornerRadius=UDim.new(0,4)
        t.Parent=r
        local u=Instance.new"Frame"
        u.Name="Toggle"
        u.LayoutOrder=1
        u.Size=UDim2.new(1,0,0,18)
        u.BackgroundTransparency=1
        u.Position=UDim2.new(0,0,0.1993055,0)
        u.Parent=f
        local v=Instance.new"TextButton"
        v.Name="Value"
        v.LayoutOrder=1
        v.Size=UDim2.new(1,0,1,0)
        v.BorderColor3=Color3.fromRGB(26,26,26)
        v.BorderSizePixel=2
        v.BackgroundColor3=Color3.fromRGB(77,77,77)
        v.Text=""
        v.Parent=u
        local w=Instance.new"ImageLabel"
        w.Name="Check"
        w.LayoutOrder=1
        w.AnchorPoint=Vector2.new(0.5,0.5)
        w.Size=UDim2.new(1,0,1,0)
        w.BackgroundTransparency=1
        w.Position=UDim2.new(0.5,0,0.5,0)
        w.BorderSizePixel=0
        w.ImageColor3=Color3.fromRGB(152,61,255)
        w.Image="rbxassetid://8724615287"
        w.Parent=v
        local x=Instance.new"UIAspectRatioConstraint"
        x.Name="AspectRatio"
        x.DominantAxis=1
        x.Parent=v
        local y=Instance.new"UIListLayout"
        y.Name="ListLayout"
        y.FillDirection=0
        y.VerticalAlignment=0
        y.SortOrder=2
        y.Padding=UDim.new(0.02,0)
        y.Parent=u
        local z=Instance.new"TextLabel"
        z.Name="Title"
        z.LayoutOrder=1
        z.Size=UDim2.new(0.85,0,0.8,0)
        z.BackgroundTransparency=1
        z.FontSize=4
        z.LineHeight=0.7
        z.TextSize=12
        z.TextColor3=Color3.fromRGB(255,255,255)
        z.Text="toggle"
        z.TextWrapped=true
        z.Font=32
        z.TextWrap=true
        z.TextXAlignment=0
        z.Parent=u
        local A=Instance.new"UIStroke"
        A.Thickness=2
        A.Color=Color3.fromRGB(16,16,16)
        A.Parent=d
    end
    local B=Instance.new"Frame"
    B.Name="Tabs_Bg1"
    B.ZIndex=0
    B.Size=UDim2.new(0,252,0,24)
    B.Position=UDim2.new(0.0467235,0,0.152,0)
    B.BorderSizePixel=0
    B.BackgroundColor3=Color3.fromRGB(28,28,28)
    B.Parent=b
    local C=Instance.new"UIStroke"
    C.Thickness=2
    C.Color=Color3.fromRGB(16,16,16)
    C.Parent=B
    local D=Instance.new"UICorner"
    D.CornerRadius=UDim.new(0,6)
    D.Parent=B
    local E=Instance.new"Frame"
    E.Name="Tabs_Bg2"
    E.ZIndex=0
    E.Size=UDim2.new(0,252,0,14)
    E.Position=UDim2.new(0.0467236,0,0.1860786,0)
    E.BorderSizePixel=0
    E.BackgroundColor3=Color3.fromRGB(28,28,28)
    E.Parent=b
    local F=Instance.new"UIStroke"
    F.Thickness=2
    F.Color=Color3.fromRGB(16,16,16)
    F.Parent=E
    local G=Instance.new"TextButton"
    G.Name="Tabs"
    G.Size=UDim2.new(0,252,0,24)
    G.Position=UDim2.new(0.045,0,0.15486,0)
    G.BackgroundColor3=Color3.fromRGB(28,28,28)
    G.AutoButtonColor=false
    G.FontSize=5
    G.TextSize=14
    G.TextColor3=Color3.fromRGB(255,255,255)
    G.Text="Select a tab..."
    G.Font=22
    G.Parent=b
    
    --local H=Instance.new"LocalScript"
    --H.Source=[[local RunService = game:GetService(\"RunService\")\nlocal TweenService = game:GetService(\"TweenService\")\n\nlocal TabSelection = {}\n\nTabSelection.Selector = script.Parent\nTabSelection.Left = TabSelection.Selector.Arrows.LeftArrow\nTabSelection.Right = TabSelection.Selector.Arrows.RightArrow\nTabSelection.ListLayout = TabSelection.Selector.Arrows.ListLayout\nTabSelection.ArrowPadding = TabSelection.Selector.Arrows.ArrowPadding\nTabSelection.Tabs = TabSelection.Selector.Tabs\n\nRunService.RenderStepped:Connect(function()\n\tTabSelection.ListLayout.Padding = UDim.new(0, TabSelection.Selector.TextBounds.X - 10)\nend)\n\nTabSelection.Selector.MouseEnter:Connect(function()\n\tTweenService:Create(TabSelection.ArrowPadding, TweenInfo.new(0.5, Enum.EasingStyle.Back), {PaddingBottom = UDim.new(0, 2)}):Play()\nend)\n\nTabSelection.Selector.MouseLeave:Connect(function()\n\tTweenService:Create(TabSelection.ArrowPadding, TweenInfo.new(0.5, Enum.EasingStyle.Back), {PaddingBottom = UDim.new(0, -40)}):Play()\nend)\ntask.wait(.2)\nTabSelection.Selector.MouseButton1Down:Connect(function()\n\tTabSelection.Tabs.Visible = not TabSelection.Tabs.Visible\n\tTweenService:Create(TabSelection.Selector, TweenInfo.new(0.175, Enum.EasingStyle.Cubic), {TextSize = 26, TextColor3 = Color3.fromRGB(152, 61, 255)}):Play()\n\ttask.wait(.1)\n\tTweenService:Create(TabSelection.Selector, TweenInfo.new(0.175, Enum.EasingStyle.Cubic), {TextSize = 14, TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()\n\tfor i, v in next, TabSelection.Selector.Parent.Tabs:GetChildren() do\n\t\tfor ii, vv in next, TabSelection.Tabs:GetChildren() do\n\t\t\tif vv:FindFirstChild(\"TabName\") then\n\t\t\t\tvv.TabName.MouseButton1Down:Connect(function()\n\t\t\t\t\tif vv.TabName.Text == v.Name then\n\t\t\t\t\t\tv.Visible = true\n\t\t\t\t\t\tTabSelection.Selector.Text = vv.TabName.Text\n\t\t\t\t\t\tTabSelection.Tabs.Visible = false\n\t\t\t\t\telse\n\t\t\t\t\t\tv.Visible = false\n\t\t\t\t\tend\n\t\t\t\tend)\n\t\t\tend\n\t\tend\n\tend\nend)\n]]
    --H.Parent=G
    local I=Instance.new"Frame"
    I.Name="Arrows"
    I.Size=UDim2.new(1,0,1,0)
    I.ClipsDescendants=true
    I.BackgroundTransparency=1
    I.BackgroundColor3=Color3.fromRGB(255,255,255)
    I.Parent=G
    local J=Instance.new"UIListLayout"
    J.Name="ListLayout"
    J.FillDirection=0
    J.HorizontalAlignment=0
    J.VerticalAlignment=0
    J.SortOrder=2
    J.Parent=I
    local K=Instance.new"UIPadding"
    K.Name="ArrowPadding"
    K.PaddingBottom=UDim.new(0,-40)
    K.PaddingLeft=UDim.new(0,4)
    K.Parent=I
    local L=Instance.new"TextLabel"
    L.Name="LeftArrow"
    L.Size=UDim2.new(0,24,0,24)
    L.BackgroundTransparency=1
    L.BackgroundColor3=Color3.fromRGB(255,255,255)
    L.FontSize=7
    L.TextSize=22
    L.TextColor3=Color3.fromRGB(145,145,145)
    L.Text=">"
    L.TextWrapped=true
    L.Font=26
    L.TextWrap=true
    L.Parent=I
    local M=Instance.new"TextLabel"
    M.Name="RightArrow"
    M.Size=UDim2.new(0,24,0,24)
    M.BackgroundTransparency=1
    M.BackgroundColor3=Color3.fromRGB(255,255,255)
    M.FontSize=7
    M.TextSize=22
    M.TextColor3=Color3.fromRGB(145,145,145)
    M.Text="<"
    M.TextWrapped=true
    M.Font=26
    M.TextWrap=true
    M.Parent=I
    local N=Instance.new"UICorner"
    N.CornerRadius=UDim.new(0,6)
    N.Parent=G
    local O=Instance.new"Frame"
    O.Name="Tabs"
    O.ZIndex=2
    O.Visible=false
    O.Size=UDim2.new(1,0,-0.25,17)
    O.BackgroundTransparency=1
    O.Position=UDim2.new(0,0,1.0999998,0)
    O.BorderSizePixel=0
    O.BackgroundColor3=Color3.fromRGB(98,98,98)
    O.Parent=G
    local P=Instance.new"Frame"
    P.Name="Tab"
    P.ZIndex=2
    P.Size=UDim2.new(1,0,-0.25,17)
    P.Position=UDim2.new(0,0,1.0999998,0)
    P.BorderSizePixel=0
    P.BackgroundColor3=Color3.fromRGB(98,98,98)
    P.Parent=O
    local Q=Instance.new"Frame"
    Q.Name="Bottom"
    Q.Size=UDim2.new(1,0,0,13)
    Q.Position=UDim2.new(0,0,1.3,0)
    Q.BorderSizePixel=0
    Q.BackgroundColor3=Color3.fromRGB(98,98,98)
    Q.Parent=P
    local R=Instance.new"UICorner"
    R.CornerRadius=UDim.new(0,6)
    R.Parent=Q
    local S=Instance.new"TextButton"
    S.Name="TabName"
    S.Size=UDim2.new(1,0,0,18)
    S.Position=UDim2.new(0,0,0,6)
    S.BorderSizePixel=0
    S.BackgroundColor3=Color3.fromRGB(98,98,98)
    S.FontSize=5
    S.TextSize=14
    S.TextColor3=Color3.fromRGB(255,255,255)
    S.Text="Tab"
    S.Font=22
    S.Parent=P
    local T=Instance.new"UIListLayout"
    T.SortOrder=2
    T.Padding=UDim.new(0,12)
    T.Parent=O
    local U=Instance.new"TextLabel"
    U.Name="Name"
    U.Size=UDim2.new(0,252,0,21)
    U.BackgroundTransparency=1
    U.Position=UDim2.new(0.0467236,0,0.0482426,0)
    U.BackgroundColor3=Color3.fromRGB(255,255,255)
    U.FontSize=5
    U.TextSize=14
    U.TextColor3=Color3.fromRGB(152,61,255)
    U.Text=Name
    U.TextWrapped=true
    U.Font=22
    U.TextWrap=true
    U.TextXAlignment=0
    U.TextScaled=true
    U.Parent=b
    local V=Instance.new"Frame"
    V.Name="Divider"
    V.Size=UDim2.new(1,0,0,1)
    V.Position=UDim2.new(0,0,1.1,0)
    V.BorderSizePixel=0
    V.BackgroundColor3=Color3.fromRGB(80,80,80)
    V.Parent=U
    a.Parent=game:GetService"CoreGui"

    local function SWDDR_fake_script() -- ScreenGui.LocalScript 
        local script = Instance.new('LocalScript', G)
    
        Fetch("ShadowSamurai720/ShadowSamurai720:Library:TabSelection.lua")
        
    end
    coroutine.wrap(SWDDR_fake_script)()

    return Container
end
return Main