-- Plugin set

local toolbar = plugin:CreateToolbar("No More Pairs!")
local NMPBUTTON = toolbar:CreateButton("No More Pairs", "Stop using pairs()!", "http://www.roblox.com/asset/?id=16551166182")

----

local ScriptEditorService = game:GetService('ScriptEditorService')

---- Load UI and scripts

local function Load(testWidget)
	-- UI convertion made using Roblox2Lua
	
	local main_frame = Instance.new("Frame")
	main_frame.BackgroundColor3 = Color3.new(0.290196, 0.290196, 0.290196)
	main_frame.BorderColor3 = Color3.new(0, 0, 0)
	main_frame.BorderSizePixel = 0
	main_frame.Position = UDim2.new(0,0,0,0)
	main_frame.Size = UDim2.new(1,0,1,0)
	main_frame.Visible = true
	main_frame.Name = "MainFrame"
	main_frame.Parent = testWidget

	local title = Instance.new("TextLabel")
	title.Font = Enum.Font.GothamBold
	title.Text = "NoMorePairs! v0.5"
	title.TextColor3 = Color3.new(1, 1, 1)
	title.TextScaled = true
	title.TextSize = 14
	title.TextWrapped = true
	title.BackgroundColor3 = Color3.new(1, 1, 1)
	title.BackgroundTransparency = 1
	title.BorderColor3 = Color3.new(0, 0, 0)
	title.BorderSizePixel = 0
	title.Position = UDim2.new(0.0285087712, 0, 0.0170212761, 0)
	title.Size = UDim2.new(0.576754391, 0, 0.0829787254, 0)
	title.Visible = true
	title.Name = "Title"
	title.Parent = main_frame

	local credits = Instance.new("TextLabel")
	credits.Font = Enum.Font.GothamBold
	credits.Text = "therealspookyss"
	credits.TextColor3 = Color3.new(1, 1, 1)
	credits.TextScaled = true
	credits.TextSize = 14
	credits.TextWrapped = true
	credits.BackgroundColor3 = Color3.new(1, 1, 1)
	credits.BackgroundTransparency = 1
	credits.BorderColor3 = Color3.new(0, 0, 0)
	credits.BorderSizePixel = 0
	credits.Position = UDim2.new(0.0209041927, 0, 0.997435749, 0)
	credits.Size = UDim2.new(0, 116, 0, 17)
	credits.Visible = true
	credits.Name = "Credits"
	credits.Parent = title

	local nmp = Instance.new("TextButton")
	nmp.Font = Enum.Font.GothamBold
	nmp.Text = "No More Pairs!"
	nmp.TextColor3 = Color3.new(1, 1, 1)
	nmp.TextScaled = true
	nmp.TextSize = 25
	nmp.TextWrapped = true
	nmp.BackgroundColor3 = Color3.new(0.0509804, 0.635294, 0.2)
	nmp.BorderColor3 = Color3.new(0, 0, 0)
	nmp.BorderSizePixel = 0
	nmp.Position = UDim2.new(0.280701756, 0, 0.791489363, 0)
	nmp.Size = UDim2.new(0.438596487, 0, 0.106382981, 0)
	nmp.Visible = true
	nmp.Name = "NMP"
	nmp.Parent = main_frame

	local uicorner = Instance.new("UICorner")
	uicorner.CornerRadius = UDim.new(0, 5)
	uicorner.Parent = nmp

	local all = Instance.new("TextButton")
	all.Font = Enum.Font.GothamBold
	all.Text = "All the scripts in the game"
	all.TextColor3 = Color3.new(1, 1, 1)
	all.TextScaled = true
	all.TextSize = 25
	all.TextWrapped = true
	all.BackgroundColor3 = Color3.new(0.219608, 0.219608, 0.219608)
	all.BorderColor3 = Color3.new(0, 0, 0)
	all.BorderSizePixel = 0
	all.Position = UDim2.new(0.109519936, 0, 0.248303667, 0)
	all.Size = UDim2.new(0.32917437, 0, 0.0923387706, 0)
	all.Visible = true
	all.Name = "All"
	all.Parent = main_frame

	local uicorner_2 = Instance.new("UICorner")
	uicorner_2.CornerRadius = UDim.new(0, 5)
	uicorner_2.Parent = all

	local only = Instance.new("TextButton")
	only.Font = Enum.Font.GothamBold
	only.Text = "Only selected"
	only.TextColor3 = Color3.new(1, 1, 1)
	only.TextScaled = true
	only.TextSize = 25
	only.TextWrapped = true
	only.BackgroundColor3 = Color3.new(0.219608, 0.219608, 0.219608)
	only.BorderColor3 = Color3.new(0, 0, 0)
	only.BorderSizePixel = 0
	only.Position = UDim2.new(0.561131358, 0, 0.248303667, 0)
	only.Size = UDim2.new(0.329174489, 0, 0.0923387706, 0)
	only.Visible = true
	only.Name = "Only"
	only.Parent = main_frame

	local uicorner_3 = Instance.new("UICorner")
	uicorner_3.CornerRadius = UDim.new(0, 5)
	uicorner_3.Parent = only

	local division = Instance.new("Frame")
	division.BackgroundColor3 = Color3.new(0.0862745, 0.0862745, 0.0862745)
	division.BackgroundTransparency = 0.800000011920929
	division.BorderColor3 = Color3.new(0, 0, 0)
	division.BorderSizePixel = 0
	division.Position = UDim2.new(0.0416666679, 0, 0.387234032, 0)
	division.Size = UDim2.new(0.916666687, 0, 0.00851063803, 0)
	division.Visible = true
	division.Name = "Division"
	division.Parent = main_frame

	local text_label = Instance.new("TextLabel")
	text_label.Font = Enum.Font.SourceSansBold
	text_label.Text = "Type"
	text_label.TextColor3 = Color3.new(1, 1, 1)
	text_label.TextScaled = true
	text_label.TextSize = 14
	text_label.TextWrapped = true
	text_label.BackgroundColor3 = Color3.new(1, 1, 1)
	text_label.BackgroundTransparency = 1
	text_label.BorderColor3 = Color3.new(0, 0, 0)
	text_label.BorderSizePixel = 0
	text_label.Position = UDim2.new(0.238249421, 0, -28.0585651, 0)
	text_label.Size = UDim2.new(0.521249771, 0, 8.55857658, 0)
	text_label.Visible = true
	text_label.Parent = division

	local division_2 = Instance.new("Frame")
	division_2.BackgroundColor3 = Color3.new(0.0862745, 0.0862745, 0.0862745)
	division_2.BackgroundTransparency = 0.800000011920929
	division_2.BorderColor3 = Color3.new(0, 0, 0)
	division_2.BorderSizePixel = 0
	division_2.Position = UDim2.new(0.0416666679, 0, 0.725531936, 0)
	division_2.Size = UDim2.new(0.916666687, 0, 0.00851063803, 0)
	division_2.Visible = true
	division_2.Name = "Division"
	division_2.Parent = main_frame

	local text_label_2 = Instance.new("TextLabel")
	text_label_2.Font = Enum.Font.SourceSansBold
	text_label_2.Text = "Classes"
	text_label_2.TextColor3 = Color3.new(1, 1, 1)
	text_label_2.TextScaled = true
	text_label_2.TextSize = 14
	text_label_2.TextWrapped = true
	text_label_2.BackgroundColor3 = Color3.new(1, 1, 1)
	text_label_2.BackgroundTransparency = 1
	text_label_2.BorderColor3 = Color3.new(0, 0, 0)
	text_label_2.BorderSizePixel = 0
	text_label_2.Position = UDim2.new(0.308189839, 0, -43.631382, 0)
	text_label_2.Size = UDim2.new(0.380945534, 0, 8.54429817, 0)
	text_label_2.Visible = true
	text_label_2.Parent = division_2

	local modules = Instance.new("TextButton")
	modules.Font = Enum.Font.GothamBold
	modules.Text = "Modules"
	modules.TextColor3 = Color3.new(1, 1, 1)
	modules.TextSize = 20
	modules.TextWrapped = true
	modules.BackgroundColor3 = Color3.new(0.219608, 0.219608, 0.219608)
	modules.BorderColor3 = Color3.new(0, 0, 0)
	modules.BorderSizePixel = 0
	modules.Position = UDim2.new(0.106424145, 0, 0.474966407, 0)
	modules.Size = UDim2.new(0.32917428, 0, 0.094559893, 0)
	modules.Visible = true
	modules.Name = "Modules"
	modules.Parent = main_frame

	local uicorner_4 = Instance.new("UICorner")
	uicorner_4.CornerRadius = UDim.new(0, 5)
	uicorner_4.Parent = modules

	local scripts = Instance.new("TextButton")
	scripts.Font = Enum.Font.GothamBold
	scripts.Text = "Scripts"
	scripts.TextColor3 = Color3.new(1, 1, 1)
	scripts.TextSize = 20
	scripts.TextWrapped = true
	scripts.BackgroundColor3 = Color3.new(0.219608, 0.219608, 0.219608)
	scripts.BorderColor3 = Color3.new(0, 0, 0)
	scripts.BorderSizePixel = 0
	scripts.Position = UDim2.new(0.109520316, 0, 0.601769805, 0)
	scripts.Size = UDim2.new(0.326078564, 0, 0.093731977, 0)
	scripts.Visible = true
	scripts.Name = "Scripts"
	scripts.Parent = main_frame

	local uicorner_5 = Instance.new("UICorner")
	uicorner_5.CornerRadius = UDim.new(0, 5)
	uicorner_5.Parent = scripts
	local local_scripts = Instance.new("TextButton")
	local_scripts.Font = Enum.Font.GothamBold
	local_scripts.Text = "Local Scripts"
	local_scripts.TextColor3 = Color3.new(1, 1, 1)
	local_scripts.TextScaled = true
	local_scripts.TextSize = 25
	local_scripts.TextWrapped = true
	local_scripts.BackgroundColor3 = Color3.new(0.219608, 0.219608, 0.219608)
	local_scripts.BorderColor3 = Color3.new(0, 0, 0)
	local_scripts.BorderSizePixel = 0
	local_scripts.Position = UDim2.new(0.561131358, 0, 0.474966407, 0)
	local_scripts.Size = UDim2.new(0.316061854, 0, 0.0945598036, 0)
	local_scripts.Visible = true
	local_scripts.Name = "LocalScripts"
	local_scripts.Parent = main_frame

	local uicorner_6 = Instance.new("UICorner")
	uicorner_6.CornerRadius = UDim.new(0, 5)
	uicorner_6.Parent = local_scripts

	local handler = Instance.new("LocalScript")
	handler.Name = "Handler"
	handler.Parent = main_frame
	
	---

	--// Scripts

	-- Handler
	
	task.spawn(function()
		
		---- Roblox2Lua thing
		
		local script = handler

		local oldreq = require
		local function require(target)
			if modules[target] then
				return modules[target]()
			end
			return oldreq(target)
		end
		
		----

		local SelectedTXT = "" -- All the scripts or only selected
		
		----
		
		local All = script.Parent.All
		local Only = script.Parent.Only
		local SelectionService = game:GetService("Selection")
		
		---

		-- Adds escape characters to invalid characters

		local function Escape(Text)
			local Mod = string.gsub(Text, '%%', '%%%%')
				:gsub('^%^', '%%^')
				:gsub('%$$', '%%$')
				:gsub('%(', '%%(')
				:gsub('%)', '%%)')
				:gsub('%.', '%%.')
				:gsub('%[', '%%[')
				:gsub('%]', '%%]')
				:gsub('%*', '%%*')
				:gsub('%+', '%%+')
				:gsub('%-', '%%-')
				:gsub('%?', '%%?')

			return Mod
		end
		
		-----

		local function RemovePairs(ScriptInstance)
			local Worked, Error = pcall(function()
				print(string.format("Removing all the pairs() inside %s.", ScriptInstance.Name))

				local Source = ScriptInstance.Source -- Script Source

				-- A pattern to detect pairs()

				local Pattern = Escape("pairs(")
				local Pattern2 = ")"

				local modifiedSource = Source

				-- Loop for finding every single pairs() in the script

				while true do

					-- Gets where "pairs(" is

					local Start, End = string.find(modifiedSource, Pattern)

					-- if there is a pairs then

					if Start then

						-- generates a source after the 'pairs(' and gets where the ')' is

						local AfterPairs = string.sub(modifiedSource, End + 1)
						local _, PairsEnd = string.find(AfterPairs, Pattern2)

						--

						if PairsEnd then

							-- extracted is the table extracted from pairs

							local extracted = string.sub(AfterPairs, 1, PairsEnd - 1) 

							-- adds it to the modified source

							modifiedSource =  string.sub(modifiedSource, 1, Start - 1) .. extracted .. string.sub(AfterPairs, PairsEnd + 1)

							--
						end

					else

						break

					end
				end

				game:GetService('ScriptEditorService'):UpdateSourceAsync(ScriptInstance, function()
					return modifiedSource
				end)
			end)
			
			if Worked then
				print(string.format("Done removing pairs() inside %s with no errors!", ScriptInstance.Name))
			else
				print(string.format("A fatal error happened while removing pairs() from script named %s.", ScriptInstance.Name))
			end
		end
		
		-- Sets button to default

		local function Default(Button)
			Button.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
		end
		
		-- Sets button to active

		local function Active(Button)
			Button.BackgroundColor3 = Color3.fromRGB(15, 166, 20)
		end
		
		-- RemovePairs arguments, nothing much to talk here

		All.MouseButton1Up:Connect(function()
			if SelectedTXT == "Only" then
				SelectedTXT = "All"
				Default(Only)
				Active(All)
			elseif SelectedTXT == "All" then
				Default(All)
				SelectedTXT = ""
			else
				SelectedTXT = "All"
				Active(All)
			end
		end)

		Only.MouseButton1Up:Connect(function()
			if SelectedTXT == "All" then
				SelectedTXT = "Only"
				Default(All)
				Active(Only)
			elseif SelectedTXT == "Only" then
				Default(Only)
				SelectedTXT = ""
			else
				SelectedTXT = "Only"
				Active(Only)
			end
		end)

		------------ Buttons

		local LocalScripts = script.Parent.LocalScripts
		local Modules = script.Parent.Modules
		local Scripts = script.Parent.Scripts
		
		------------
		
		local Selected = {} -- selected script classes to remove pairs
		
		------------ Classes that will remove the pairs(), nothing much to talk here

		LocalScripts.MouseButton1Up:Connect(function()
			
			if table.find(Selected, "LocalScript") then
				table.remove(Selected, table.find(Selected, "LocalScript"))
				Default(LocalScripts)
			else
				table.insert(Selected, "LocalScript")
				Active(LocalScripts)
			end
		end)

		Modules.MouseButton1Up:Connect(function()
			
			if table.find(Selected, "Module") then
				table.remove(Selected, table.find(Selected, "Module"))
				Default(Modules)
			else
				table.insert(Selected, "Module")
				Active(Modules)
			end
		end)

		Scripts.MouseButton1Up:Connect(function()
			
			if table.find(Selected, "Script") then
				table.remove(Selected, table.find(Selected, "Script"))
				Default(Scripts)
			else
				table.insert(Selected, "Script")
				Active(Scripts)
			end
		end)

		-------------

		script.Parent.NMP.MouseButton1Up:Connect(function()
			
			-- if the person selected all the scripts, check which classes the person selected
			
			if SelectedTXT == "All" and #Selected > 0 then
				
				-- loop into all the game
				
				for _, Inst in game:GetDescendants() do
					
					pcall(function()
						
						-- if the class was selected then remove pairs
						
						if table.find(Selected, Inst.ClassName) then
							RemovePairs(Inst)
						end
						
						-----
						
					end)
				end
				
				print("Done removing pairs().")
			elseif SelectedTXT == "Only" then
				local SelectedInstances = SelectionService:Get() -- get selected script
				
				-- for loop in all selected instances
				
				for _, SelectedInstance in SelectedInstances do
					RemovePairs(SelectedInstance)
				end
				
				print("Done removing pairs().")
			else
				error("Invalid args.")
			end
			
			Selected = {}
			SelectedTXT = ""
			Default(Scripts)
			Default(Modules)
			Default(LocalScripts)
			Default(Only)
			Default(All)
		end)
	end)
end

------

local widgetInfo = DockWidgetPluginGuiInfo.new(
	Enum.InitialDockState.Float,
	true,
	false,
	323,
	333,
	323,
	333
)

local testWidget = plugin:CreateDockWidgetPluginGui("TestWidget", widgetInfo)
testWidget.Title = "No More Pairs!"

Load(testWidget)

-- disables widget by default

testWidget.Enabled = false

--

NMPBUTTON.Click:Connect(function()
	if testWidget.Enabled then
		testWidget.Enabled = false
	else
		testWidget.Enabled = true
	end
end)
