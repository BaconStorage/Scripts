-- Gui to Lua
-- Version: 3.2

-- Instances:

local Main = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local BaseFrame = Instance.new("Frame")
local Frame = Instance.new("Frame")
local Status = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local Line = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")

--Properties:

Main.Name = "Main"
Main.Parent = game.CoreGui
Main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = Main
MainFrame.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.381238729, 0, 0.364661664, 0)
MainFrame.Size = UDim2.new(0, 395, 0, 218)

TextLabel.Parent = MainFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0151898731, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 166, 0, 31)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Bacon Hub Bootstrapper"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

BaseFrame.Name = "BaseFrame"
BaseFrame.Parent = MainFrame
BaseFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
BaseFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
BaseFrame.BorderSizePixel = 0
BaseFrame.Position = UDim2.new(-1.54519384e-07, 0, 0.139316663, 0)
BaseFrame.Size = UDim2.new(0, 394, 0, 184)

Frame.Parent = BaseFrame
Frame.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.027841635, 0, 0.066411227, 0)
Frame.Size = UDim2.new(0, 371, 0, 158)

Status.Name = "Status"
Status.Parent = Frame
Status.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Status.BackgroundTransparency = 1.000
Status.BorderColor3 = Color3.fromRGB(0, 0, 0)
Status.BorderSizePixel = 0
Status.Position = UDim2.new(0.229110509, 0, 0.362637371, 0)
Status.Size = UDim2.new(0, 200, 0, 50)
Status.Font = Enum.Font.SourceSans
Status.Text = "Loading..."
Status.TextColor3 = Color3.fromRGB(255, 255, 255)
Status.TextSize = 21.000

UICorner.Parent = Frame

Line.Name = "Line"
Line.Parent = MainFrame
Line.BackgroundColor3 = Color3.fromRGB(221, 110, 20)
Line.BorderColor3 = Color3.fromRGB(0, 0, 0)
Line.BorderSizePixel = 0
Line.Position = UDim2.new(-1.54519384e-07, 0, 0.139013454, 0)
Line.Size = UDim2.new(0, 395, 0, -1)

UICorner_2.Parent = MainFrame

-- Scripts:

local function LJQD_fake_script() -- MainFrame.LocalScript 


	repeat wait() until MainFrame

	local Gui = MainFrame
	repeat wait() until Gui.Line
	
	
	local BootstrapperLine = Gui.Line
	local Status = Gui.BaseFrame.Frame.Status
	
	Gui.Active = true
	Gui.Draggable = true
	
	local Games = loadstring(game:HttpGet("https://pastebin.com/raw/PHq8cDSX"))()


	local Funcs = loadstring(game:HttpGet("https://pastebin.com/raw/LxLXR7sB"))()
	function Universal()
		loadstring(game:HttpGet("https://pastebin.com/raw/kH9E41je"))()
	end
	
	function GetGameName()
		return Funcs.GetGameName
	end
	
	function IsInList(GameId)
		if Games.FreeVersion[GameId] then
			return true
		end
	end
	
	
	Status.Text = "Checking Game"
	wait(2)
	
	if IsInList(game.PlaceId) then
		Status.Text = "Game Detected"
		wait(2)
		Status.Text = Funcs.GetGameName()
		wait(2)
		Gui:Destroy()
		Funcs.LoadScript(game.PlaceId)
	else
		Status.Text = "Universal"
		wait(2)
		Gui:Destroy()
		Universal()
	end
	
end
coroutine.wrap(LJQD_fake_script)()
