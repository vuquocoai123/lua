-- Config format 
getgenv().config = { 
  ["gui"] = {
    ["show"] = true,
    ["background"] = {
      ["big"] = {
        ["id"] = "rblxassetid://000",
        ["transparent"] = 1
      },
      ["mainbg"] = {
        ["id"] = "...",
        ["transparent"] = 50
      }
    }
  },
  ["game"] = {
    ["resettp"] = true,
    ["team"] = "Pirates", -- "p/m"
    ["safemode"] = true,
    ["buso"] = true,
    ["ken"] = true,
    ["fps"] = {
      ["screen"] = "white", -- black | white | normal
      ["fpsboost"] = true 
    },
    ["character"] = {
      ["invisible"] = true,
    },
    ["skipspecialfruit"] = true,
    ["lock"] = {
      ["value"] = "3000001", -- cant 
    },
    ["weapon"] = {
      ["Melee"] = {
        ["Z"] = {
          ["hold"] = 0.3,
          ["use"] = true
        },
        ["X"] = {
          ["hold"] = 0.3,
          ["use"] = true
        },
        ["C"] = {
          ["hold"] = 0.3,
          ["use"] = true
        },
      },
      ["Blox Fruit"] = {
        
        ["Z"] = {
          ["hold"] = 0.3,
          ["use"] = true
        },
        ["X"] = {
          ["hold"] = 0.3,
          ["use"] = true
        },
        ["C"] = {
          ["hold"] = 0.3,
          ["use"] = true
        },
        ["V"] = {
          ["hold"] = 0.3,
          ["use"] = true
        },
        ["F"] = {
          ["hold"] = 0.3,
          ["use"] = true
        },
      },
      ["Gun"] = {
        
        ["Z"] = {
          ["hold"] = 0.3,
          ["use"] = true
        },
        ["X"] = {
          ["hold"] = 0.3,
          ["use"] = true
        },
      },
      ["Sword"] = {
        
        ["Z"] = {
          ["hold"] = 0.3,
          ["use"] = true
        },
        ["X"] = {
          ["hold"] = 0.3,
          ["use"] = true
        },
      },
    },
  }, 
  ["webhook"] = {
    ["type"] = "embed", -- embed | text 
    ["image"] = "nil", 
    ["request_type"] = "3rd", -- 
    ["3rd_hook"] = "nil"
  },
}

loadstring(game:HttpGet'https://akatsuki.monnn1.repl.co/autobounty_rewrite.lua')()










-- CHECK CONFIG [! - IMPORTANT]
getgenv().script, err = pcall(function()

if not getgenv().config or getgenv().config == nil then 
  game.Players.LocalPlayer:Kick("configconfigconfigconfigconfigconfigconfigconfigconfigconfigconfigconfig")
  return 0
end 

--Liblaries
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()
loadstring(game:HttpGet'https://akatsuki.monnn1.repl.co/aimlib.lua')()
local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()


-- Variable 
getgenv().list = {}
getgenv().ticks = 150
getgenv().plist = {}
_G.debounce = {}
_G.hunt = true 
oldtarget = nil 
    
--Function 


function killinsert(target) 
 for i, v in pairs(getgenv().killed) do 
  if getgenv().killed.Name == target.Name then return end
 end 
 table.insert(getgenv().killed, getgenv().target)
end

function nametoplayer(name) 
 return game.Players[name]
end

function getNearestTarget()
dist = math.huge
p = nil
 for i, v in pairs(getgenv().players) do
 
 if v ~= game.Players.LocalPlayer and v.Character and v and p ~= v then 
    
   for _, v2 in pairs(getgenv().killed) do
   if v == v2 then
   unscan = v2
 end
end
  if (v.Character.HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame.Position). Magnitude < dist and unscan ~= v then 

   dist = (v.Character.HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position). magnitude 
   p = v
 end
 end
 end
return p
end

function topos(gotoCFrame) --- tween to position 
  if _G.debounce.Tween then return 0 end
  if (game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position - gotoCFrame.Position).Magnitude > 3000 and getgenv().config["game"]["resettp"] then 
        if num == nil and oldtarget ~= getgenv().target then
    num = 0 
oldtarget = getgenv().target

        end

    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, 100000, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
    wait(4)
    repeat wait()
 
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = gotoCFrame
    num = num + 1
    until (game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position - gotoCFrame.Position).Magnitude < 1000 or num == 300
  end
  
  repeat wait ()
  until tonumber(game.Players.LocalPlayer.Character:WaitForChild('Humanoid').Health) >= 1
  wait(.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, gotoCFrame.Y, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
    pcall(function()

    if game.Players.LocalPlayer.Character.Humanoid.Health >= 0 then
        game.Players.LocalPlayer.Character.Humanoid.Sit = false
        
    if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - gotoCFrame.Position).Magnitude <= 200 then
        pcall(function() 
            tweenz:Cancel()
        end)
        game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = gotoCFrame
    else
        local tween_s = game:service"TweenService"
        local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - gotoCFrame.Position).Magnitude/325, Enum.EasingStyle.Linear)
         tween, err = pcall(function()
            tweenz = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = gotoCFrame})
            tweenz:Play()
        end)
        if not tween then return err end
    end
    end
    function _TweenCanCle()
        tweenz:Cancel()
    end
    end)
end 

--Hop 
function Hop()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    function TPReturner()
        local Site
        if foundAnything == "" then
            Site =
                game.HttpService:JSONDecode(
                game:HttpGet(
                    "https://games.roblox.com/v1/games/" .. PlaceID .. "/servers/Public?sortOrder=Asc&limit=100"
                )
            )
        else
            Site =
                game.HttpService:JSONDecode(
                game:HttpGet(
                    "https://games.roblox.com/v1/games/" ..
                        PlaceID .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. foundAnything
                )
            )
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0
        for i, v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _, Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile =
                                pcall(
                                function()
                                    AllIDs = {}
                                    table.insert(AllIDs, actualHour)
                                end
                            )
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(
                        function()
                            wait()
                            game:GetService("TeleportService"):TeleportToPlaceInstance(
                                PlaceID,
                                ID,
                                game.Players.LocalPlayer
                            )
                        end
                    )
                    wait(4)
                end
            end
        end
    end
    function Teleport()
        while wait() do
            pcall(
                function()
                    TPReturner()
                    if foundAnything ~= "" then
                        TPReturner()
                    end
                end
            )
        end
    end
    Teleport()
end

-- buso 
function buso() 
    if(not(game.Players.LocalPlayer.Character:FindFirstChild('HasBuso')))then
local rel = game.ReplicatedStorage

        rel.Remotes.CommF_:InvokeServer('Buso')
    end
end

function keydown(use) -- Send key to client

    game:GetService("VirtualInputManager"):SendKeyEvent(true,use,false,game.Players.LocalPlayer.Character.HumanoidRootPart)

    wait(.1)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,use,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
end 

--equip tool by tooltip
function equip(tooltip)
   local player = game.Players.LocalPlayer
   local character = player.Character or player.CharacterAdded:Wait()

   for _, item in pairs(player.Backpack:GetChildren()) do
      if item:IsA("Tool") and item.ToolTip == tooltip then
         local humanoid = character:FindFirstChildOfClass("Humanoid")
         if humanoid and not humanoid:IsDescendantOf(item) then
            humanoid:UnequipTools()
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(item)
            return true
         end
      end
   end
   
   return false
end

-- big part 
function bighitbox(part)
  part.Character.HumanoidRootPart.Size = Vector3.new(50,50,50)
end 

-- using random item (wont be call)
function spam()

for i, v in pairs(getgenv().config["game"]["weapon"]) do 
print(i)
    
    
    equip(i)
        for i2, v2 in pairs(v) do 
      print('i2: '..i2)    
           if v2 and v2.use then 
           getgenv().down = true
wait()
            for a=0,(v2.hold * 10) do  

              keydown(i2) 
              a = a + 1
              
          end 
          getgenv().down = false 
            wait(1)
        end
      end
    
    end
  end 

-- get cframe 
function getpcframe(p)
 if tonumber(game.Players.LocalPlayer.Character.Humanoid.Health) < 5000 and tonumber(game.Players.LocalPlayer.Character.Humanoid.Health) > 1 then
                 Notification.new("info", "Akatsuki", 'Hiding...')
                 return p.Character.HumanoidRootPart.CFrame + Vector3.new(0, 900, 00)
             end 
  if getgenv().down then
  return p.Character: GetPrimaryPartCFrame() + Vector3.new(0, 150, 0)
  end

return p.Character: GetPrimaryPartCFrame()
end 

-- log 
function log(str) 
getgenv().btns2:Label(str)
end 

-- Starter Script ._.

spawn(function() -- Create Part Below Player 
 while wait() do
    local player = game.Players.LocalPlayer
  
    local part = Instance.new("Part")
    part.Anchored = true
    part.Size = Vector3.new(20, 1, 20) 
    part.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame - Vector3.new(0, (game.Players.LocalPlayer.Character.HumanoidRootPart.Size.Y/4) + (part.Size.Y/2), 0)
    part.Parent = workspace 
    part.Transparency = 00
    while wait() do
        part.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y - 40, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
    end 
end
end)

for i, v in pairs(game.Players:GetPlayers()) do --UIs Player List
 table.insert(getgenv().plist, v.Name)
end 

-- UIs 



local win = DiscordLib:Window("Akatsuki Community")

local serv = win:Server("Game", "")
local btns = serv:Channel("â€¢ Hunt") 
local label = btns:Label("Welcome To Akatsuki Community!")
local drop = btns:Dropdown("Select Target", getgenv().plist, function(bool)
getgenv().target = nametoplayer(bool)
end)
btns:Toggle("Start",true, function(bool)
_G.hunt = bool
end)
btns:Button("Next Player", function()
game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)
btns:Button("Hop", function()

_G.hunt = false 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, 255500, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
Hop()
while wait() do
table.insert('a', getgenv().target)
end
end)
 getgenv().btns2 = serv:Channel("â€¢ log")
for i, v in pairs(game.Players:GetPlayers()) do 
 getgenv().btns2:Label('â€¢ '.. v.Name .. '[Lv. '.. v.Data.Level.Value .. '] - [âŒ]')
end 

-- Main Script 

--waitload
repeat wait() 
 if game:IsLoaded() then 
    if game.Players and Game.Players.LocalPlayer then 
     break
    end
  end
until 1 == 2
    
-- Team Join 
    repeat wait()

		if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then

			if getgenv().config["game"]["team"] == nil or getgenv().config["game"]["team"] == "Pirates"  then
            local A_1 = "SetTeam"
            local A_2 = "Pirates"
            local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
            Event:InvokeServer(A_1, A_2)

			elseif getgenv().config["game"]["team"] == "Marines"  then
				local A_1 = "SetTeam"
				local A_2 = "Marines"
				local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
				Event:InvokeServer(A_1, A_2)
			else
				game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Size = UDim2.new(0, 10000, 0, 10000)
				game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Position = UDim2.new(-4, 0, -5, 0)
				game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.BackgroundTransparency = 1
				wait(.5)
				game:GetService'VirtualUser':Button1Down(Vector2.new(99,99))
				game:GetService'VirtualUser':Button1Up(Vector2.new(99,99))
			end
		end
	until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded() 
	
	wait(1)

game.Players.LocalPlayer.Character.Humanoid.Health = 0 - math.huge
wait()
getgenv().target = game.Players.LocalPlayer 

-- buso 
    spawn(function()
  while getgenv().config["game"]["buso"] and wait(1) do 
    buso()
 wait()
end
end) 
    
-- Starting Fetch Target

spawn(function()
    while _G.hunt do
        if tonumber(game.Players.LocalPlayer.Character.Humanoid.Health) < 1 or tonumber(getgenv().target.Character.Humanoid.Health) < 1 or _G.firstexec then 
        if not _G.debounce.Target then 
              _G.debounce.Target = true
            repeat wait() until tonumber(game.Players.LocalPlayer.Character:WaitForChild('Humanoid').Health) > 0 
            if getgenv().target.Character then 
                table.insert(getgenv().killed, getgenv().target ) 
            end 
            log('Killed: '.. getgenv().target.Name)
            _G.firstexec = false
            print('c') 
              repeat wait() 
                getgenv().target = getNearestTarget ()
              until getgenv().target.Character
              bighitbox(getgenv().target)
            Notification.new("info", "Akatsuki Community", getgenv().target.Name)
            repeat wait() until tonumber(game.Players.LocalPlayer.Character.Humanoid.Health) > 0 
        _G.debounce.Target = false 
        end
        
        end 
    end 
end)


--main hunt 
game:GetService"RunService".RenderStepped:Connect(function() 
        wait(1)
        if getgenv().target and getgenv().target.Character and getgenv().target.Character:WaitForChild('HumanoidRootPart') then 
           
            local pcframe = getpcframe(getgenv().target)
            if pcframe then
                wait() 
                topos(pcframe)
          end
        end 
      end)
spawn(function() 
 

             while getgenv().target and getgenv().target.Character and (getgenv().target.Character.HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude < 60 and _G.hunt do
  wait()               
                 
                 
spam()

             end

           end)
  end )

-- sv hop xd
      spawn(function()
while _G.hunt and wait() do
if #getgenv().killed > 8 or #getgenv().killed >= #game.Players:GetPlayers() or getgenv().script == false then 
        if getgenv().script == false then 
          Notification:new("info", "Akatsuki", 'Have Error, Hopping')
print(err)

wait(10)
        end
Hop()
while wait() do 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, 255500, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z) 
        end
end
end
end)
  
