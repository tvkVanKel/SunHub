local Library = {}
local TweenService = game:GetService('TweenService')

function  Library:CreateMain(Name)

    --Check old ui 
    for _,v in pairs(game:GetService('CoreGui'):GetDescendants()) do
		if v:IsA('IntValue') and string.len(v.Name) >= 15 then
			v.Parent.Parent:Destroy()
		end
	end

    --Drag function, by Ririchi / Inori
    local UIS = game:GetService("UserInputService");
	local Heartbeat = game:GetService("RunService").Heartbeat;

	local dragger = {};

	do
		local mouse        = game:GetService("Players").LocalPlayer:GetMouse();
		local inputService = game:GetService('UserInputService');
		local heartbeat    = game:GetService("RunService").Heartbeat;

		function dragger.new(frame, secondlol)
			frame.Active = true;
			secondlol.Active = true;

			secondlol.MouseLeave:connect(function()
				IsInFrame = false;
			end)

			secondlol.MouseEnter:connect(function()
				IsInFrame = true;
			end)

			local input = secondlol.InputBegan:connect(function(key)
				if key.UserInputType == Enum.UserInputType.MouseButton1 and IsInFrame then
					local objectPosition = Vector2.new(mouse.X - frame.AbsolutePosition.X, mouse.Y - frame.AbsolutePosition.Y);
					while heartbeat:wait() and inputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
						pcall(function()
							frame:TweenPosition(UDim2.new(0, mouse.X - objectPosition.X + (frame.Size.X.Offset * frame.AnchorPoint.X), 0, mouse.Y - objectPosition.Y + (frame.Size.Y.Offset * frame.AnchorPoint.Y)), 'Out', 'Linear', 0.01, true);
						end)
					end
				end
			end)
		end
    end
    
    --Create ScreenUI
    Library.gui = Instance.new("ScreenGui")
	Library.gui.Parent = game:WaitForChild('CoreGui')
	Library.gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	Library.gui.Name = game:GetService("HttpService"):GenerateGUID(false):lower():sub(1, 10);
    Library.toggled = true
    
    --Button Effect
    function Library:buttoneffect(bucac0em)
		spawn(function()
			local mouse = game:GetService("Players").LocalPlayer:GetMouse();
			local buttonbucackoem = Instance.new("ImageLabel", bucac0em);
			local buttonbucackoemInner = Instance.new("ImageLabel", buttonbucackoem);
			buttonbucackoem.Name = "buttonbucackoem";
			buttonbucackoem.BackgroundTransparency = 1;
			buttonbucackoem.BorderSizePixel = 0;
			buttonbucackoem.Image = "rbxassetid://2708891598"
			buttonbucackoem.ImageColor3 = Color3.fromRGB(244, 244, 244);
			buttonbucackoem.ImageTransparency = 0.7;
			buttonbucackoem.ScaleType = Enum.ScaleType.Fit;
			buttonbucackoemInner.Name = "buttonbucackoem";
			buttonbucackoemInner.AnchorPoint = Vector2.new(0.5, 0.5);
			buttonbucackoemInner.BackgroundTransparency = 1;
			buttonbucackoemInner.BorderSizePixel = 0;
			buttonbucackoemInner.Position = UDim2.new(0.5, 0, 0.5, 0);
			buttonbucackoemInner.Size = UDim2.new(1, 0, 1, 0);
			buttonbucackoemInner.Image = "rbxassetid://2708891598"
			buttonbucackoemInner.ImageColor3 = Color3.fromRGB(255,255,255);
			buttonbucackoemInner.ImageTransparency = 0.7;
			buttonbucackoemInner.ScaleType = Enum.ScaleType.Fit;
			buttonbucackoem.Position = UDim2.new((mouse.X - buttonbucackoem.AbsolutePosition.X) / bucac0em.AbsoluteSize.X, 0, (mouse.Y - buttonbucackoem.AbsolutePosition.Y) / bucac0em.AbsoluteSize.Y, 0);
			local Animation = TweenService:Create(buttonbucackoem, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				Position = UDim2.new(-4.77, 0, -8, 0);
				Size = UDim2.new(10, 200, 10, 200);
				ImageTransparency = 1;
			})
			Animation:Play();

			Animation.Completed:Connect(function()
				buttonbucackoem:Destroy();
			end);
		end)
    end

    --Toggle UI Function
    function  Library:ToggledUI()
		Library.toggled = not Library.toggled
        Library.gui.Enabled = Library.toggled
	end

local MainFrame = Instance.new("Frame")
local Top = Instance.new("ImageLabel")
local MainTitle = Instance.new("TextLabel")
local ContainerFrame = Instance.new("Frame")

local UIPageLayout = Instance.new("UIPageLayout")
local TabContainer = Instance.new("ScrollingFrame")
local UIListLayout_2 = Instance.new("UIListLayout")
local TopTab = Instance.new("Frame")
local IconFrame = Instance.new("Frame")
local IconIamge = Instance.new("ImageLabel")
local IconText = Instance.new("TextLabel")

--Properties:

MainFrame.Name = "MainFrame"
MainFrame.Parent = Library.gui
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0, 650, 0, 380)

local maincornor = Instance.new('UICorner')
maincornor.Parent = MainFrame
maincornor.CornerRadius = UDim.new(0,4)

Top.Name = "Top"
Top.Parent = MainFrame
Top.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Top.BackgroundTransparency = 1.000
Top.Size = UDim2.new(1, 0, 0, 30)
Top.Image = "rbxassetid://6548062107"
Top.ImageColor3 = Color3.fromRGB(50, 50, 50)
Top.ScaleType = Enum.ScaleType.Slice
Top.SliceCenter = Rect.new(4, 4, 296, 296)

dragger.new(MainFrame,MainFrame)

local Detect = Instance.new('IntValue', MainFrame)
Detect.Name = game:GetService("HttpService"):GenerateGUID(false):lower():sub(1, 15);

MainTitle.Parent = Top
MainTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainTitle.BackgroundTransparency = 1.000
MainTitle.Position = UDim2.new(0, 5, 0, 0)
MainTitle.Size = UDim2.new(1, -5, 1, 0)
MainTitle.Font = Enum.Font.GothamBold
MainTitle.Text = Name
MainTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
MainTitle.TextSize = 14.000
MainTitle.TextXAlignment = Enum.TextXAlignment.Left


ContainerFrame.Name = "ContainerFrame"
ContainerFrame.Parent = MainFrame
ContainerFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ContainerFrame.BackgroundTransparency = 1.000
ContainerFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
ContainerFrame.ClipsDescendants = true
ContainerFrame.Position = UDim2.new(0, 260, 0, 40)
ContainerFrame.Size = UDim2.new(1, -260, 1, -40)

UIPageLayout.Parent = ContainerFrame
UIPageLayout.FillDirection = Enum.FillDirection.Vertical
UIPageLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIPageLayout.EasingDirection = Enum.EasingDirection.InOut
UIPageLayout.EasingStyle = Enum.EasingStyle.Quad
UIPageLayout.Padding = UDim.new(0, 5)
UIPageLayout.TweenTime = 0.500

TabContainer.Name = "TabContainer"
TabContainer.Parent = MainFrame
TabContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TabContainer.BackgroundTransparency = 1.000
TabContainer.BorderColor3 = Color3.fromRGB(27, 42, 53)
TabContainer.BorderSizePixel = 0
TabContainer.Position = UDim2.new(0, 5, 0, 40)
TabContainer.Selectable = false
TabContainer.Size = UDim2.new(0, 250, 1, -40)
TabContainer.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
TabContainer.CanvasSize = UDim2.new(0, 0, 0, 0)
TabContainer.ScrollBarThickness = 2
TabContainer.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"


UIListLayout_2.Parent = TabContainer
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 5)

local function TabChangeSize()
    local absoluteSize = UIListLayout_2.AbsoluteContentSize
    TabContainer.CanvasSize = UDim2.new(0,0,0,15 +absoluteSize.Y)
end

UIListLayout_2:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(TabChangeSize)

TopTab.Name = "TopTab"
TopTab.Parent = TabContainer
TopTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TopTab.BackgroundTransparency = 1.000
TopTab.Size = UDim2.new(1, -5, 0, 40)
TopTab.LayoutOrder = 0

local TopTabCorner = Instance.new('UICorner')
TopTabCorner.Parent = TopTab
TopTabCorner.CornerRadius = UDim.new(0,4)

local TopLine = Instance.new("Frame")
local Line = Instance.new("Frame")

TopLine.Name = "TopLine"
TopLine.Parent = TabContainer
TopLine.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TopLine.BackgroundTransparency = 1.000
TopLine.BorderSizePixel = 0
TopLine.LayoutOrder = 1
TopLine.Size = UDim2.new(1, -5, 0, 2)
TopLine.LayoutOrder = 1

Line.Name = "Line"
Line.Parent = TopLine
Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line.Position = UDim2.new(0, 5, 0, 0)
Line.Size = UDim2.new(1, -5, 1, 0)

local linecornor = Instance.new('UICorner')
linecornor.Parent = Line
linecornor.CornerRadius = UDim.new(0,4)

IconFrame.Name = "IconFrame"
IconFrame.Parent = TopTab
IconFrame.AnchorPoint = Vector2.new(0, 0.5)
IconFrame.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
IconFrame.ClipsDescendants = true
IconFrame.Position = UDim2.new(0, 5, 0.5, 0)
IconFrame.Size = UDim2.new(0, 35, 1, -5)

IconIamge.Name = "IconIamge"
IconIamge.Parent = IconFrame
IconIamge.AnchorPoint = Vector2.new(0.5, 0.5)
IconIamge.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
IconIamge.BackgroundTransparency = 1.000
IconIamge.Position = UDim2.new(0.5, 0, 0.5, 0)
IconIamge.Size = UDim2.new(1, -5, 1, -5)
IconIamge.Image = "http://www.roblox.com/asset/?id=8316699239"

IconText.Parent = TopTab
IconText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
IconText.BackgroundTransparency = 1.000
IconText.Position = UDim2.new(0, 45, 0, 0)
IconText.Size = UDim2.new(1, -50, 1, 0)
IconText.Font = Enum.Font.GothamBold
IconText.Text = "SunHub"
IconText.TextColor3 = Color3.fromRGB(255, 255, 255)
IconText.TextSize = 14.000
IconText.TextXAlignment = Enum.TextXAlignment.Left


local function tweenbgtran(obj,tran)
	TweenService:Create(obj,TweenInfo.new(.5),{BackgroundTransparency = tran}):Play()
end

TopTab.MouseEnter:Connect(function()
	tweenbgtran(TopTab,.8)
end)

TopTab.MouseLeave:Connect(function()
	tweenbgtran(TopTab,1)
end)

local page = {}
local LayoutOrder = - 1

function page:CreateTab(Name)

    LayoutOrder = LayoutOrder + 1
    
local InContainer = Instance.new("ScrollingFrame")
local UIContainerLayout = Instance.new("UIListLayout")

InContainer.Name = Name.."Container"
InContainer.Parent = ContainerFrame
InContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InContainer.BackgroundTransparency = 1.000
InContainer.BorderSizePixel = 0
InContainer.Position = UDim2.new(0, 3, 0, 0)
InContainer.Selectable = false
InContainer.Size = UDim2.new(1, -5, 1, 0)
InContainer.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
InContainer.CanvasSize = UDim2.new(0, 0, 0, 0)
InContainer.ScrollBarThickness = 2
InContainer.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
InContainer.LayoutOrder = LayoutOrder

UIContainerLayout.Parent = InContainer
UIContainerLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIContainerLayout.Padding = UDim.new(0, 5)

local function SectionChangeSize()
    local absoluteSize = UIContainerLayout.AbsoluteContentSize
    InContainer.CanvasSize = UDim2.new(0,0,0,5 + absoluteSize.Y)
end

UIContainerLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(SectionChangeSize)

local PageFrame = Instance.new("Frame")
local PageButton = Instance.new("TextButton")


PageFrame.Name = Name.."PageFrame"
PageFrame.Parent = TabContainer
PageFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PageFrame.BackgroundTransparency = 1.000
PageFrame.Size = UDim2.new(1, -5, 0, 40)
PageFrame.LayoutOrder = 2

PageButton.Name = Name..'PageButton'
PageButton.Parent = PageFrame
PageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PageButton.BackgroundTransparency = 1.000
PageButton.Position = UDim2.new(0, 5, 0, 0)
PageButton.Size = UDim2.new(1, -5, 1, 0)
PageButton.Font = Enum.Font.GothamBold
PageButton.TextColor3 = Color3.fromRGB(255, 255, 255)
PageButton.TextSize = 14.000
PageButton.TextXAlignment = Enum.TextXAlignment.Left
PageButton.Text = Name

PageButton.MouseButton1Click:Connect(function()
    if PageButton.Name == Name..'PageButton' then
        for i,v in pairs(ContainerFrame:GetChildren()) do
            if not (v:IsA('UIListLayout')) then
                if v.Name == Name..'Container' then
                    UIPageLayout:JumpToIndex(InContainer.LayoutOrder)
                end
            end
        end
    end
end)

local PageCorner = Instance.new('UICorner')
PageCorner.Parent = PageFrame
PageCorner.CornerRadius = UDim.new(0,4)

PageFrame.MouseEnter:Connect(function()
	tweenbgtran(PageFrame,.8)
end)

PageFrame.MouseLeave:Connect(function()
	tweenbgtran(PageFrame,1)
end)

local create_section = {}

function create_section:NewSection(Name)


    local Section = Instance.new("Frame")
    local SectionUIIListLayout = Instance.new("UIListLayout")
    local SectionFrame = Instance.new("Frame")
    local SectionTitle = Instance.new("TextLabel")

    
    Section.Name = "Section"
    Section.Parent = InContainer
    Section.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    Section.BorderSizePixel = 0
    Section.Size = UDim2.new(1, -5, 0, 100)

    
    SectionUIIListLayout.Parent = Section
    SectionUIIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    SectionUIIListLayout.Padding = UDim.new(0, 5)

    local function ChangeSectionSize()
        local absoluteSize = SectionUIIListLayout.AbsoluteContentSize
        Section.Size = UDim2.new(1,-5,0,10 + absoluteSize.Y)
    end
    
    SectionUIIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(ChangeSectionSize)
    
    local SectionCorner = Instance.new('UICorner')
    SectionCorner.Parent = Section
    SectionCorner.CornerRadius = UDim.new(0,8)
    
    SectionFrame.Name = "SectionFrame"
    SectionFrame.Parent = Section
    SectionFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    SectionFrame.BackgroundTransparency = 1.000
    SectionFrame.Size = UDim2.new(1, 0, 0, 25)
    
    SectionTitle.Name = "SectionTitle"
    SectionTitle.Parent = SectionFrame
    SectionTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    SectionTitle.BackgroundTransparency = 1.000
    SectionTitle.Position = UDim2.new(0, 5, 0, 0)
    SectionTitle.Size = UDim2.new(1, -5, 1, 0)
    SectionTitle.Font = Enum.Font.GothamBold
    SectionTitle.Text = Name
    SectionTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
    SectionTitle.TextSize = 16.000
    SectionTitle.TextXAlignment = Enum.TextXAlignment.Left



local in_section = {}

function in_section:NewToggle(Name,Callback)

    local Callback = Callback or function() end 

    local ToggleFrame = Instance.new("Frame")
    local ToggleTitle = Instance.new("TextLabel")
    local ToggleButton = Instance.new("TextButton")
    local checkbox = Instance.new("ImageLabel")
    local fill = Instance.new("ImageLabel")
    local check = Instance.new("ImageLabel")
    
    ToggleFrame.Name = "ToggleFrame"
    ToggleFrame.Parent = Section
    ToggleFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ToggleFrame.BackgroundTransparency = 1.000
    ToggleFrame.Size = UDim2.new(1, 0, 0, 25)
    
    ToggleTitle.Name = "ToggleTitle"
    ToggleTitle.Parent = ToggleFrame
    ToggleTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ToggleTitle.BackgroundTransparency = 1.000
    ToggleTitle.Position = UDim2.new(0, 20, 0, 0)
    ToggleTitle.Size = UDim2.new(1, -60, 1, 0)
    ToggleTitle.Font = Enum.Font.GothamBold
    ToggleTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
    ToggleTitle.TextSize = 14.000
    ToggleTitle.TextXAlignment = Enum.TextXAlignment.Left
    ToggleTitle.Text = Name;
    
    ToggleButton.Name = "ToggleButton"
    ToggleButton.Parent = ToggleFrame
    ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ToggleButton.BackgroundTransparency = 1.000
    ToggleButton.Size = UDim2.new(1, 0, 1, 0)
    ToggleButton.Font = Enum.Font.SourceSans
    ToggleButton.Text = ""
    ToggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    ToggleButton.TextSize = 14.000
    
    checkbox.Name = "checkbox"
    checkbox.Parent = ToggleButton
    checkbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    checkbox.BackgroundTransparency = 1.000
    checkbox.Position = UDim2.new(1, -30, 0, 0)
    checkbox.Size = UDim2.new(0, 25, 0, 25)
    checkbox.Image = "rbxassetid://4552505888"
    checkbox.ImageColor3 = Color3.fromRGB(43, 44, 47)
    
    fill.Name = "fill"
    fill.Parent = checkbox
    fill.AnchorPoint = Vector2.new(0.5, 0.5)
    fill.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    fill.BackgroundTransparency = 1.000
    fill.Position = UDim2.new(0.5, 0, 0.5, 0)
    fill.Size = UDim2.new(1, 0, 1, 0)
    fill.ZIndex = 0
    fill.Image = "rbxassetid://4555402813"
    fill.ImageColor3 = Color3.fromRGB(43, 44, 47)
    fill.ImageTransparency = 1.000
    
    check.Name = "check"
    check.Parent = fill
    check.AnchorPoint = Vector2.new(0.5, 0.5)
    check.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    check.BackgroundTransparency = 1.000
    check.Position = UDim2.new(0.5, 0, 0.5, 0)
    check.Size = UDim2.new(1, -4, 1, -4)
    check.Image = "rbxassetid://4555411759"
    check.ImageTransparency = 1.000

local Stage = false 


ToggleButton.MouseButton1Click:Connect(function()
	Stage = not Stage 
	local imagetran = Stage and 0 or 1 
	local imagesize = Stage and UDim2.new(1,0,1,0) or UDim2.new(0,0,0,0)
	TweenService:Create(fill,TweenInfo.new(.25),{Size = imagesize,ImageTransparency = imagetran}):Play()
    TweenService:Create(check,TweenInfo.new(.25),{ImageTransparency = imagetran}):Play()
    Callback(Stage)
end)

 local in_toggle = {}

 function in_toggle:SetStage(aa)
	local imagetran = aa and 0 or 1 
	local imagesize = aa and UDim2.new(1,0,1,0) or UDim2.new(0,0,0,0)
	TweenService:Create(fill,TweenInfo.new(.25),{Size = imagesize,ImageTransparency = imagetran}):Play()
    TweenService:Create(check,TweenInfo.new(.25),{ImageTransparency = imagetran}):Play()
    Callback(aa)
 end

 return in_toggle;

 --Ended in toggle function

end

function in_section:NewButton(Name,Callback)

local Callback = Callback or function() end 

local ButtonFrame = Instance.new("Frame")
local ButtonFrameCorner = Instance.new("Frame")
local Button = Instance.new("TextButton")

ButtonFrame.Name = Name.."ButtonFrame"
ButtonFrame.Parent = Section
ButtonFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ButtonFrame.BackgroundTransparency = 1.000
ButtonFrame.Size = UDim2.new(1, -10, 0, 25)

ButtonFrameCorner.Name = Name.."ButtonFrameCorner"
ButtonFrameCorner.Parent = ButtonFrame
ButtonFrameCorner.BackgroundColor3 = Color3.fromRGB(43, 44, 47)
ButtonFrameCorner.Position = UDim2.new(0, 20, 0, 0)
ButtonFrameCorner.Size = UDim2.new(1, -20, 1, 0)
ButtonFrameCorner.ZIndex = 2
ButtonFrameCorner.BorderSizePixel = 0
ButtonFrameCorner.ClipsDescendants = true

local ButtonCorner = Instance.new('UICorner')
ButtonCorner.Parent = ButtonFrameCorner
ButtonCorner.CornerRadius = UDim.new(0,4)

Button.Name = Name.."Button"
Button.Parent = ButtonFrameCorner
Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button.BackgroundTransparency = 1.000
Button.BorderSizePixel = 0
Button.Size = UDim2.new(1, 0, 1, 0)
Button.Font = Enum.Font.GothamBold
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.TextSize = 14.000
Button.Text = Name

Button.MouseButton1Click:Connect(function()
    Library:buttoneffect(ButtonFrameCorner)
end)
Button.MouseButton1Click:Connect(function()
    Callback()
end)

end

function in_section:NewLabel(Name,Setting)

    local TextColor = Color3.fromRGB(255,255,255)
	local BGColor = Color3.fromRGB(43, 44, 47)
				if Setting then 
					TextColor = Setting.TextColor or Color3.fromRGB(255,255,255)

					BGColor = Setting.BGColor or Color3.fromRGB(43, 44, 47)
				end

    
local LabelFrame = Instance.new("Frame")
local LabelFrameCorner = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")


LabelFrame.Name = Name.."LabelFrame"
LabelFrame.Parent = Section
LabelFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LabelFrame.BackgroundTransparency = 1.000
LabelFrame.Size = UDim2.new(1, -10, 0, 25)

LabelFrameCorner.Name =Name.. "LabelFrameCorner"
LabelFrameCorner.Parent = LabelFrame
LabelFrameCorner.BackgroundColor3 = BGColor
LabelFrameCorner.Position = UDim2.new(0, 20, 0, 0)
LabelFrameCorner.Size = UDim2.new(1, -20, 1, 0)
LabelFrameCorner.ZIndex = 2

local LabelCorner = Instance.new('UICorner')
LabelCorner.Parent = LabelFrameCorner
LabelCorner.CornerRadius = UDim.new(0,4)

TextLabel.Parent = LabelFrameCorner
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0, 5, 0, 0)
TextLabel.Size = UDim2.new(1, -5, 1, 0)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.TextColor3 = TextColor
TextLabel.TextSize = 14.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.Text = Name

local label_function = {}

function label_function:SetText(Text)
    TextLabel.Text = Text
end 

function label_function:SetTextColor(Color)
    TextLabel.TextColor3 = Color 
end

return label_function;

end

function in_section:NewTextBox(Name,Setting,Callback)

    local Callback = Callback or function() end 
	local Numberonly = Setting.Number or Setting.number or false
    
local TextboxFrame = Instance.new("Frame")
local Textboxtitle = Instance.new("TextLabel")
local TextboxFrameCorner = Instance.new("Frame")
local Textbox = Instance.new("TextBox")


TextboxFrame.Name = "TextboxFrame"
TextboxFrame.Parent = Section
TextboxFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextboxFrame.BackgroundTransparency = 1.000
TextboxFrame.Size = UDim2.new(1, 0, 0, 50)

Textboxtitle.Name = "Textboxtitle"
Textboxtitle.Parent = TextboxFrame
Textboxtitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Textboxtitle.BackgroundTransparency = 1.000
Textboxtitle.Position = UDim2.new(0, 20, 0, 0)
Textboxtitle.Size = UDim2.new(1, -25, 0, 25)
Textboxtitle.Font = Enum.Font.GothamBold
Textboxtitle.Text = Name
Textboxtitle.TextColor3 = Color3.fromRGB(255, 255, 255)
Textboxtitle.TextSize = 14.000
Textboxtitle.TextXAlignment = Enum.TextXAlignment.Left

TextboxFrameCorner.Name = "TextboxFrameCorner"
TextboxFrameCorner.Parent = TextboxFrame
TextboxFrameCorner.BackgroundColor3 = Color3.fromRGB(43, 44, 47)
TextboxFrameCorner.Position = UDim2.new(0, 20, 0, 25)
TextboxFrameCorner.Size = UDim2.new(1, -30, 0, 25)
TextboxFrameCorner.ZIndex = 2

local TextboxCorner = Instance.new('UICorner')
TextboxCorner.Parent = TextboxFrameCorner
TextboxCorner.CornerRadius = UDim.new(0,4)

Textbox.Name = "Textbox"
Textbox.Parent = TextboxFrameCorner
Textbox.Active = false
Textbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Textbox.BackgroundTransparency = 1.000
Textbox.Position = UDim2.new(0, 5, 0, 0)
Textbox.Selectable = false
Textbox.Size = UDim2.new(1, -5, 1, 0)
Textbox.ClearTextOnFocus = false
Textbox.Font = Enum.Font.GothamBold
Textbox.PlaceholderText = Name
Textbox.Text = ""
Textbox.TextColor3 = Color3.fromRGB(255, 255, 255)
Textbox.TextSize = 14.000
Textbox.TextXAlignment = Enum.TextXAlignment.Left

				if Numberonly then 
					Textbox:GetPropertyChangedSignal("Text"):Connect(function()
						if tonumber(Textbox.Text) then 
						else 
							Textbox.PlaceholderText = 'Number only -.-'
							Textbox.Text = ''
						end
					end)
				else
                end
                
                Textbox.FocusLost:Connect(function()
                    if Textbox.Text ~= '' then
                    Callback(Textbox.Text)
                    end
                end)

				local textbox_function = {}

					function textbox_function:SetValue(Value)
						Textbox.Text = Value
						Callback(Value)
					end 

					return textbox_function;

end

function in_section:NewSlider(Name,Setting,Callback)

local SliderFrame = Instance.new("Frame")
local Valueicon = Instance.new("ImageLabel")
local ValueLabel = Instance.new("TextLabel")
local TitleLabel = Instance.new("TextLabel")
local Sliderbar = Instance.new("Frame")
local Bar = Instance.new("Frame")
local SliderButton = Instance.new("TextButton")
local ButtonIcon = Instance.new("ImageLabel")
local Icon = Instance.new("ImageLabel")
local SliderValue = Instance.new("TextLabel")
local SliderValueFrame = Instance.new("Frame")


SliderFrame.Name = "SliderFrame"
SliderFrame.Parent = Section
SliderFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SliderFrame.BackgroundTransparency = 1.000
SliderFrame.Size = UDim2.new(1, 0, 0, 65)

Valueicon.Name = "Valueicon"
Valueicon.Parent = SliderFrame
Valueicon.Active = true
Valueicon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Valueicon.BackgroundTransparency = 1.000
Valueicon.Position = UDim2.new(1, -110, 0, 0)
Valueicon.Selectable = true
Valueicon.Size = UDim2.new(0, 100, 0, 25)
Valueicon.Image = "rbxassetid://3570695787"
Valueicon.ImageColor3 = Color3.fromRGB(43, 44, 47)
Valueicon.ScaleType = Enum.ScaleType.Slice
Valueicon.SliceCenter = Rect.new(100, 100, 100, 100)
Valueicon.SliceScale = 0.020

ValueLabel.Name = "ValueLabel"
ValueLabel.Parent = SliderFrame
ValueLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ValueLabel.BackgroundTransparency = 1.000
ValueLabel.Position = UDim2.new(1, -110, 0, 0)
ValueLabel.Size = UDim2.new(0, 100, 0, 25)
ValueLabel.Font = Enum.Font.GothamBold
ValueLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
ValueLabel.TextSize = 14.000

TitleLabel.Name = "TitleLabel"
TitleLabel.Parent = SliderFrame
TitleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.BackgroundTransparency = 1.000
TitleLabel.Position = UDim2.new(0, 20, 0, 0)
TitleLabel.Size = UDim2.new(1, -130, 0, 25)
TitleLabel.Font = Enum.Font.GothamBold
TitleLabel.Text = Name
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.TextSize = 14.000
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left

Sliderbar.Name = "Sliderbar"
Sliderbar.Parent = SliderFrame
Sliderbar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Sliderbar.Position = UDim2.new(0, 40, 0, 50)
Sliderbar.Size = UDim2.new(0, 310, 0, 6)

local SliderbarCorner = Instance.new('UICorner')
SliderbarCorner.Parent = Sliderbar
SliderbarCorner.CornerRadius = UDim.new(0,8)

Bar.Name = "Bar"
Bar.Parent = Sliderbar
Bar.BackgroundColor3 = Color3.fromRGB(43, 44, 47)
Bar.Size = UDim2.new(0, 0, 1, 0)

local BarCorner = Instance.new('UICorner')
BarCorner.Parent = Bar
BarCorner.CornerRadius = UDim.new(0,8)

SliderButton.Name = "SliderButton"
SliderButton.Parent = Bar
SliderButton.AnchorPoint = Vector2.new(0, 0.5)
SliderButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SliderButton.BackgroundTransparency = 1.000
SliderButton.BorderSizePixel = 0
SliderButton.Position = UDim2.new(1, -5, 0.5, 0)
SliderButton.Size = UDim2.new(0, 12, 0, 12)
SliderButton.Font = Enum.Font.SourceSans
SliderButton.Text = ""
SliderButton.TextColor3 = Color3.fromRGB(0, 0, 0)
SliderButton.TextSize = 14.000

ButtonIcon.Name = "ButtonIcon"
ButtonIcon.Parent = SliderButton
ButtonIcon.Active = true
ButtonIcon.AnchorPoint = Vector2.new(0.5, 0.5)
ButtonIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ButtonIcon.BackgroundTransparency = 1.000
ButtonIcon.Position = UDim2.new(0.5, 0, 0.5, 0)
ButtonIcon.Selectable = true
ButtonIcon.Size = UDim2.new(1, 0, 1, 0)
ButtonIcon.Image = "rbxassetid://3570695787"
ButtonIcon.ScaleType = Enum.ScaleType.Slice
ButtonIcon.SliceCenter = Rect.new(100, 100, 100, 100)

Icon.Name = "Icon"
Icon.Parent = SliderButton
Icon.AnchorPoint = Vector2.new(0.5, 0)
Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon.BackgroundTransparency = 1.000
Icon.Position = UDim2.new(0.5, 0, 0, -5)
Icon.Rotation = 90.000
Icon.Size = UDim2.new(1, 0, 1, 0)
Icon.ZIndex = 2
Icon.Image = "http://www.roblox.com/asset/?id=4765412721"
Icon.ImageColor3 = Color3.fromRGB(43, 44, 47)
Icon.ImageTransparency = 1.000

SliderValue.Name = "SliderValue"
SliderValue.Parent = SliderButton
SliderValue.AnchorPoint = Vector2.new(0.5, 0)
SliderValue.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
SliderValue.BackgroundTransparency = 1.000
SliderValue.BorderSizePixel = 0
SliderValue.Position = UDim2.new(0.5, 0, 0, -20)
SliderValue.Size = UDim2.new(0, 70, 0, 20)
SliderValue.ZIndex = 2
SliderValue.Font = Enum.Font.GothamBold
SliderValue.TextColor3 = Color3.fromRGB(255, 255, 255)
SliderValue.TextSize = 12.000
SliderValue.TextTransparency = 1.000

SliderValueFrame.Name = "SliderValueFrame"
SliderValueFrame.Parent = SliderButton
SliderValueFrame.AnchorPoint = Vector2.new(0.5, 0)
SliderValueFrame.BackgroundColor3 = Color3.fromRGB(43, 44, 47)
SliderValueFrame.BackgroundTransparency = 1.000
SliderValueFrame.Position = UDim2.new(0.5, 0, -1, -8)
SliderValueFrame.Size = UDim2.new(0, 70, 0, 20)

local SliderValueFrameCorner = Instance.new('UICorner')
SliderValueFrameCorner.Parent = SliderValueFrame
SliderValueFrameCorner.CornerRadius = UDim.new(0,4)

Callback = Callback or function() end

local mouse = game.Players.LocalPlayer:GetMouse()
local uis = game:GetService("UserInputService")
local Value;

local Min = Setting.Min or Setting.min or 0 
local Max  = Setting.Max or Setting.max or 100 
local Precise = Setting.Precise or Setting.precise or false
local Donvi = Setting.Donvi or Setting.Donvi or ''

ValueLabel.Text = Min
SliderValue.Text = Min

local Callback = Callback or function() end

local sizechia = 310

SliderButton.MouseButton1Down:Connect(function()
   local value = Precise and  tonumber(string.format("%.2f",(((tonumber(Max) - tonumber(Min)) / sizechia) * Bar.AbsoluteSize.X) + tonumber(Min))) or math.floor((((tonumber(Max) - tonumber(Min)) / sizechia) * Bar.AbsoluteSize.X) + tonumber(Min))

    pcall(function()
        Callback(value)
    end)
    Bar.Size = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X, 0, sizechia), 0, 6)
    moveconnection = mouse.Move:Connect(function()   
        local value = Precise and  tonumber(string.format("%.2f",(((tonumber(Max) - tonumber(Min)) / sizechia) * Bar.AbsoluteSize.X) + tonumber(Min))) or math.floor((((tonumber(Max) - tonumber(Min)) / sizechia) * Bar.AbsoluteSize.X) + tonumber(Min))
            pcall(function()
            Callback(value)
        end)
        SliderValue.Text = value..Donvi
        ValueLabel.Text = value..Donvi
        Bar.Size = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X, 0, sizechia), 0, 6)
    end)
    releaseconnection = uis.InputEnded:Connect(function(Mouse)
        if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
            local value = Precise and  tonumber(string.format("%.2f",(((tonumber(Max) - tonumber(Min)) / sizechia) * Bar.AbsoluteSize.X) + tonumber(Min))) or math.floor((((tonumber(Max) - tonumber(Min)) / sizechia) * Bar.AbsoluteSize.X) + tonumber(Min))

                pcall(function()
                Callback(value)
            end)
            Bar.Size = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X, 0, sizechia), 0, 6)
            moveconnection:Disconnect()
            releaseconnection:Disconnect()
        end
    end)
			end)	
			
			SliderFrame.MouseEnter:Connect(function()
	TweenService:Create(Icon, TweenInfo.new(0.25), {ImageTransparency = 0}):Play()
	TweenService:Create(SliderValueFrame, TweenInfo.new(0.25), {BackgroundTransparency = 0}):Play()
	TweenService:Create(SliderValue, TweenInfo.new(0.25), {TextTransparency = 0}):Play()
end)

SliderFrame.MouseLeave:Connect(function()
	TweenService:Create(Icon, TweenInfo.new(0.25), {ImageTransparency = 1}):Play()
	TweenService:Create(SliderValueFrame, TweenInfo.new(0.25), {BackgroundTransparency = 1}):Play()
	TweenService:Create(SliderValue, TweenInfo.new(0.25), {TextTransparency = 1}):Play()
end)

end

function in_section:NewDropdown(Name,Setting,Callback)

    local List = Setting.List or Setting.list
    local SearchSetting = Setting.search or Setting.Search or  Setting.Timkiem or false
    local ToggedSetting = Setting.Toggled  or false

    local Callback = Callback or function() end
    
    local DropdownFrame = Instance.new("Frame")
local Dropcornor = Instance.new("ImageLabel")
local TitleLabel = Instance.new("TextLabel")
local Dropdownlist = Instance.new("ImageLabel")
local InDropdownlist = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")

local Dropdownbutton = Instance.new("TextButton")

local Dropdownbox = Instance.new("TextBox")

local dropisbusy = false

DropdownFrame.Name = Name.."DropdownFrame"
DropdownFrame.Parent = Section
DropdownFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DropdownFrame.BackgroundTransparency = 1.000
DropdownFrame.Position = UDim2.new(0, 0, 0.521684587, 0)
DropdownFrame.Size = UDim2.new(1, 0, 0.0199999996, 50)

Dropcornor.Name = Name.."Dropcornor"
Dropcornor.Parent = DropdownFrame
Dropcornor.Active = true
Dropcornor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dropcornor.BackgroundTransparency = 1.000
Dropcornor.Position = UDim2.new(0, 20, 0, 30)
Dropcornor.Selectable = true
Dropcornor.Size = UDim2.new(0, 145, 0, 25)
Dropcornor.Image = "rbxassetid://3570695787"
Dropcornor.ImageColor3 = Color3.fromRGB(43, 44, 47)
Dropcornor.ScaleType = Enum.ScaleType.Slice
Dropcornor.SliceCenter = Rect.new(100, 100, 100, 100)
Dropcornor.SliceScale = 0.020

TitleLabel.Name = "TitleLabel"
TitleLabel.Parent = DropdownFrame
TitleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.BackgroundTransparency = 1.000
TitleLabel.Position = UDim2.new(0, 20, 0, 0)
TitleLabel.Size = UDim2.new(1, -30, 0, 25)
TitleLabel.Font = Enum.Font.GothamBold
TitleLabel.Text = Name
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.TextSize = 14.000
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left

Dropdownlist.Name = "Dropdownlist"
Dropdownlist.Parent = DropdownFrame
Dropdownlist.AnchorPoint = Vector2.new(0.5, 0)
Dropdownlist.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Dropdownlist.BackgroundTransparency = 1.000
Dropdownlist.ClipsDescendants = true
Dropdownlist.Position = UDim2.new(0.5, 0, 0, 65)
Dropdownlist.Size = UDim2.new(1, -10, 0, 0)
Dropdownlist.ZIndex = 3
Dropdownlist.Image = "rbxassetid://3570695787"
Dropdownlist.ImageColor3 = Color3.fromRGB(20, 20, 20)
Dropdownlist.ScaleType = Enum.ScaleType.Slice
Dropdownlist.SliceCenter = Rect.new(100, 100, 100, 100)
Dropdownlist.SliceScale = 0.020

if SearchSetting then
    Dropdownbox.Name = "ValueLabel"
    Dropdownbox.Parent = DropdownFrame
    Dropdownbox.Active = false
    Dropdownbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Dropdownbox.BackgroundTransparency = 1.000
    Dropdownbox.Position = UDim2.new(0, 20, 0, 30)
    Dropdownbox.Selectable = false
    Dropdownbox.Size = UDim2.new(0, 145, 0, 25)
    Dropdownbox.Font = Enum.Font.GothamBold
    Dropdownbox.Text = Name
    if string.len(Name) > 17 then 
        Dropdownbox.Text = ''
        Dropdownbox.PlaceholderText = string.match(Name,'.................').."..."
    else 
        Dropdownbox.Text = ''
        Dropdownbox.PlaceholderText = Name
    end
    Dropdownbox.TextColor3 = Color3.fromRGB(255, 255, 255)
    Dropdownbox.TextSize = 14.000
else 
    Dropdownbutton.Name = "ValueLabel"
    Dropdownbutton.Parent = DropdownFrame
    Dropdownbutton.Active = false
    Dropdownbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Dropdownbutton.BackgroundTransparency = 1.000
    Dropdownbutton.Position = UDim2.new(0, 20, 0, 30)
    Dropdownbutton.Selectable = false
    Dropdownbutton.Size = UDim2.new(0, 145, 0, 25)
    Dropdownbutton.Font = Enum.Font.GothamBold
    Dropdownbutton.Text = Name
    if string.len(Name) > 17 then 
        Dropdownbutton.Text = string.match(Name,'.................').."..."
    else 
        Dropdownbutton.Text = Name
    end 
    Dropdownbutton.TextColor3 = Color3.fromRGB(255, 255, 255)
    Dropdownbutton.TextSize = 14.000
    Dropdownbutton.TextColor3 = Color3.fromRGB(255, 255, 255)
    Dropdownbutton.TextSize = 14.000


end 

InDropdownlist.Name = 'InDropdownlist'
InDropdownlist.Parent = Dropdownlist
InDropdownlist.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InDropdownlist.BackgroundTransparency = 1.000
InDropdownlist.Position = UDim2.new(0, 0, 0, 5)
InDropdownlist.Size = UDim2.new(1, 0, 1, -5)
InDropdownlist.CanvasSize = UDim2.new(0, 0, 0, 0)
InDropdownlist.ScrollBarThickness = 0

UIListLayout.Parent = InDropdownlist
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

local function onContentSizeChanged()
    local absoluteSize = UIListLayout.AbsoluteContentSize
    InDropdownlist.CanvasSize = UDim2.new(0, 0, 0, 5 + absoluteSize.Y)
end

UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(onContentSizeChanged)

local isbusy = false

				local found = {}

				local searchtable = {}

				if ToggedSetting then 

					for i, v in pairs(List) do
						table.insert(searchtable, string.lower(i))
					end

				else 

					for i, v in pairs(List) do
						table.insert(searchtable, string.lower(v))
					end

				end


				local function edit()
					for i in pairs(found) do
						found[i] = nil
					end
					for h, l in pairs(InDropdownlist:GetChildren()) do
						if not l:IsA("UIListLayout") and not l:IsA("UIPadding") and not l:IsA('UIGridLayout') then
							l.Visible = false
						end
					end
					Dropdownbox.Text = string.lower(Dropdownbox.Text)
				end

				local function Search()
					local Results = {}
					for i, v in pairs(searchtable) do
						if string.find(v, Dropdownbox.Text) then
							table.insert(found, v)
						end
					end
					for a, b in pairs(InDropdownlist:GetChildren()) do
						for c, d in pairs(found) do
							if d == b.Name then
								b.Visible = true
							end
						end
					end
				end

				local function clear_object_in_list()
					for i,v in next, InDropdownlist:GetChildren() do 
                        if v:IsA('ImageLabel') or v:IsA('Frame') then 
                            v:Destroy()
						end
					end
				end

				local function refreshlist()
					clear_object_in_list()

					searchtable = {}

					if ToggedSetting then 

						for i, v in pairs(List) do
							table.insert(searchtable, string.lower(i))
						end
	
					else 
	
						for i, v in pairs(List) do
							table.insert(searchtable, string.lower(v))
						end
	
					end


					if ToggedSetting then 


						local on,off = Color3.fromRGB(31, 131, 255), Color3.fromRGB(244, 40, 40)
						for i,v in next, List do 
							local ButtonFrame = Instance.new("Frame")
							local Button = Instance.new("TextButton")
							local Buttonicon = Instance.new("ImageLabel")

							ButtonFrame.Name = string.lower(i)
							ButtonFrame.Parent = InDropdownlist
							ButtonFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							ButtonFrame.BackgroundTransparency = 1.000
							ButtonFrame.Size = UDim2.new(1, 0, 0, 25)

							Button.Name = "Button"
							Button.Parent = ButtonFrame
							Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							Button.BackgroundTransparency = 1.000
							Button.BorderSizePixel = 0
							Button.Size = UDim2.new(1, 0, 1, 0)
							Button.ZIndex = 4
							Button.Font = Enum.Font.GothamBold
							Button.Text = i
							Button.TextColor3 = Color3.fromRGB(255, 255, 255)
							Button.TextSize = 14.000

							Buttonicon.Name = "Buttonicon"
							Buttonicon.Parent = ButtonFrame
							Buttonicon.Active = true
							Buttonicon.AnchorPoint = Vector2.new(0.5, 0.5)
							Buttonicon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							Buttonicon.BackgroundTransparency = 1.000
							Buttonicon.Position = UDim2.new(0.5, 0, 0.5, 0)
							Buttonicon.Selectable = true
							Buttonicon.Size = UDim2.new(1, -10, 1, -4)
							Buttonicon.ZIndex = 3
							Buttonicon.Image = "rbxassetid://3570695787"
							Buttonicon.ImageColor3 = v and on or off
							Buttonicon.ScaleType = Enum.ScaleType.Slice
							Buttonicon.SliceCenter = Rect.new(100, 100, 100, 100)
							Buttonicon.SliceScale = 0.020

							Button.MouseButton1Click:Connect(function()
								v = not v 

								local colors = v and on or off

								TweenService:Create(Buttonicon,TweenInfo.new(.5),{ImageColor3 = colors}):Play()

								if Callback then
									Callback(i,v)
								end
							end)

						end

					else 

						for i,v in next, List do 
							local TextButton = Instance.new("TextButton")
							local TextButton_Roundify_2px = Instance.new("ImageLabel")

							local aa = Instance.new("ImageLabel")
							local TextButton = Instance.new("TextButton")


							aa.Name = string.lower(v)
							aa.Parent = InDropdownlist
							aa.Active = true
							aa.AnchorPoint = Vector2.new(0.5, 0.5)
							aa.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							aa.BackgroundTransparency = 1.000
							aa.Position = UDim2.new(0.5, 0, 0.5, 0)
							aa.Selectable = true
							aa.Size = UDim2.new(1, -10, 0, 20)
							aa.Image = "rbxassetid://3570695787"
							aa.ImageColor3 = Color3.fromRGB(47, 47, 47)
							aa.ScaleType = Enum.ScaleType.Slice
							aa.SliceCenter = Rect.new(100, 100, 100, 100)
							aa.SliceScale = 0.020

							TextButton.Parent = aa
							TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							TextButton.BackgroundTransparency = 1.000
							TextButton.BorderSizePixel = 0
							TextButton.Size = UDim2.new(1, 0, 1, 0)
							TextButton.ZIndex = 2
							TextButton.Font = Enum.Font.GothamBold
							TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
							TextButton.TextSize = 14.000
                            TextButton.Text = v
                            
                            TextButton.MouseEnter:Connect(function()
                                    TweenService:Create(aa,TweenInfo.new(.5),{BackgroundColor3 = Color3.fromRGB(43,44,47)}):Play()
                            end)

                            TextButton.MouseLeave:Connect(function()
                                    TweenService:Create(aa,TweenInfo.new(.5),{BackgroundColor3 = Color3.fromRGB(44,44,44)}):Play()
                            end)


							if string.len(TextButton.Text) > 45 then 
								TextButton.TextScaled = true
							end
							TextButton.MouseButton1Click:Connect(function()
								isbusy = false
								dropisbusy = false
								if SearchSetting then 
									if string.len(v) > 17 then 
										Dropdownbox.PlaceholderText = string.match(v,'.................').."..."
										Dropdownbox.Text = ''
									else 
										Dropdownbox.PlaceholderText = v
										Dropdownbox.Text = ''
									end
								else 
									if string.len(v) > 17 then 
										Dropdownbutton.Text = string.match(v,'.................').."..."
									else
										Dropdownbutton.Text = v
									end
								end 
								TweenService:Create(Dropdownlist,TweenInfo.new(.5),{Size = UDim2.new(1, -10,0, 0)}):Play()
								TweenService:Create(DropdownFrame,TweenInfo.new(.5),{Size = UDim2.new(1,0 ,0, 65)}):Play()
								InDropdownlist.ScrollBarThickness = 0
								refreshlist()
								if Callback then 
									Callback(v)
								end

							end)

						end 
					end

				end

				Dropdownbox.Changed:Connect(function()
					edit()
					Search()
				end)


				Dropdownbox.Focused:Connect(function()
					refreshlist()
					isbusy = not isbusy 
					local listsize = isbusy and UDim2.new(1, -10,0, 180) or UDim2.new(1, -10,0, 0)
					local dropframesize = isbusy and UDim2.new(1,0 ,0, 250) or UDim2.new(1, 0,0, 65)
					TweenService:Create(Dropdownlist,TweenInfo.new(.5),{Size = listsize}):Play()
					TweenService:Create(DropdownFrame,TweenInfo.new(.5),{Size = dropframesize}):Play()
				end)

				Dropdownbutton.MouseButton1Click:Connect(function()
					isbusy = not isbusy 
					local listsize = isbusy and UDim2.new(1, -10,0, 180) or UDim2.new(1, -10,0, 0)
					local dropframesize = isbusy and UDim2.new(1,0 ,0, 250) or UDim2.new(1, 0,0, 65)
					refreshlist()
					TweenService:Create(Dropdownlist,TweenInfo.new(.5),{Size = listsize}):Play()
					TweenService:Create(DropdownFrame,TweenInfo.new(.5),{Size = dropframesize}):Play()

				end)




end

function in_section:NewBind(Name,Setting,Callback)
    
    local Callback = Callback or function() end
	local keycodename = Setting.KeyDefault or Setting.Key or Setting.Default
	local Default = Setting.KeyDefault or Setting.Key or Setting.Default
	local Toggleui = Setting.ToggleUI or false
	local Type = tostring(Default):match("UserInputType") and "UserInputType" or "KeyCode"
	keycodename = tostring(keycodename):gsub("Enum.UserInputType.", "")
	keycodename = tostring(keycodename):gsub("Enum.KeyCode.", "")

local BindFrame = Instance.new("Frame")
local BindIcon = Instance.new("ImageLabel")
local BindText = Instance.new("TextButton")
local TitleLabel = Instance.new("TextLabel")

BindFrame.Name = "BindFrame"
BindFrame.Parent = Section
BindFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BindFrame.BackgroundTransparency = 1.000
BindFrame.Position = UDim2.new(0, 0, 0.651684582, 0)
BindFrame.Size = UDim2.new(1, 0, 0, 25)

BindIcon.Name = "BindIcon"
BindIcon.Parent = BindFrame
BindIcon.Active = true
BindIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BindIcon.BackgroundTransparency = 1.000
BindIcon.Position = UDim2.new(1, -110, 0, 0)
BindIcon.Selectable = true
BindIcon.Size = UDim2.new(0, 100, 0, 25)
BindIcon.Image = "rbxassetid://3570695787"
BindIcon.ImageColor3 = Color3.fromRGB(38, 38, 38)
BindIcon.ScaleType = Enum.ScaleType.Slice
BindIcon.SliceCenter = Rect.new(100, 100, 100, 100)
BindIcon.SliceScale = 0.020

BindText.Name = "BindText"
BindText.Parent = BindFrame
BindText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BindText.BackgroundTransparency = 1.000
BindText.Position = UDim2.new(1, -110, 0, 0)
BindText.Size = UDim2.new(0, 100, 0, 25)
BindText.Font = Enum.Font.GothamBold
BindText.TextColor3 = Color3.fromRGB(255, 255, 255)
BindText.TextSize = 14.000
BindText.Text = tostring(Default):gsub("Enum.KeyCode.", "")

TitleLabel.Name = "TitleLabel"
TitleLabel.Parent = BindFrame
TitleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.BackgroundTransparency = 1.000
TitleLabel.Position = UDim2.new(0, 20, 0, 0)
TitleLabel.Size = UDim2.new(1, -130, 0, 25)
TitleLabel.Font = Enum.Font.GothamBold
TitleLabel.Text = Name
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.TextSize = 14.000
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left

local WhitelistedType = {
    [Enum.UserInputType.MouseButton1] = "Mouse1";
    [Enum.UserInputType.MouseButton2] = "Mouse2";
    [Enum.UserInputType.MouseButton3] = "Mouse3";
};

BindText.MouseButton1Click:Connect(function()
    local Connection;

    BindText.Text = "...";

    Connection = UIS.InputBegan:Connect(function(i)
        if WhitelistedType[i.UserInputType] then
            BindText.Text = WhitelistedType[i.UserInputType];
            spawn(function()
                wait(0.1)
                Default = i.UserInputType;
                Type = "UserInputType";
            end);
        elseif i.KeyCode ~= Enum.KeyCode.Unknown then
            BindText.Text = tostring(i.KeyCode):gsub("Enum.KeyCode.", "");
            spawn(function()
                wait(0.1)
                Default = i.KeyCode;
                Type = "KeyCode";
            end);
        else
            warn("Exception: " .. i.UserInputType .. " " .. i.KeyCode);
        end;


        Connection:Disconnect();
    end);
end);

UIS.InputBegan:Connect(function(i)
    if (Default == i.UserInputType or Default == i.KeyCode) then
        if Toggleui then 
            Library:ToggledUI()
        else 
            Callback(Default);
        end
    end;
end);


end


return in_section;

--Ended in section

end


return create_section;

--Ended section

end

return page;

--Ended page

end;


return Library;

--Ended Library
