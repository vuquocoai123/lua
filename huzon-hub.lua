local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/memaybeohub/Function-Scripts/main/OrionLib.lua"))()
local memaythangskidocnguloz = "\104\116\116\112\115://\114\97\119.\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116.\99\111\109/\72\105\114\105\109\105\105/\102\52\99\107\121\111\117/\109\97\105\110\47\99\99\108\117\97"
local cl = "\104\116\116\112\115://\114\97\119.\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116.\99\111\109/\72\105\114\105\109\105\105/\102\52\99\107\121\111\117/\109\97\105\110\47\99\99\108\117\97"
local memaybeo = "\104\116\116\112\115://\114\97\119.\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116.\99\111\109/\72\105\114\105\109\105\105/\102\52\99\107\121\111\117/\109\97\105\110\47\99\99\108\117\97"
repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer
repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
repeat task.wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main");
--- Join Team
repeat wait()
    if game.Players.LocalPlayer.Team == nil and game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Visible == true then
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Size = UDim2.new(0, 10000, 0, 10000)
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Position = UDim2.new(-4, 0, -5, 0)
            game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.BackgroundTransparency = 1
            wait(.5)
            game:service'VirtualInputManager':SendMouseButtonEvent(500,500, 0, true, game, 1)
            game:service'VirtualInputManager':SendMouseButtonEvent(500,500, 0, false, game, 1)
    end
until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
--- Check World/Tween + Bypass
if game.PlaceId == 2753915549 then
    World1 = true
elseif game.PlaceId == 4442272183 then
    World2 = true
elseif game.PlaceId == 7449423635 then
    World3 = true
else
    game.Players.LocalPlayer:Kick("Only Support BF Sea 3")
end 
local p = game:GetService("Players")
local lp = p.LocalPlayer
local aa = nil
local rs = game.RunService
local hb = rs.Heartbeat
local vu = game:GetService "VirtualUser"
local item = {}
local UserInputService = game:GetService("UserInputService")
local x2Code = {
    "EXP_5B",
    "CONTROL",
    "UPDATE11",
    "XMASEXP",
    "1BILLION",
    "ShutDownFix2",
    "UPD14",
    "STRAWHATMAINE",
    "TantaiGaming",
    "Colosseum",
    "Axiore",
    "Sub2Daigrock",
    "Sky Island 3",
    "Sub2OfficialNoobie",
    "SUB2NOOBMASTER123",
    "THEGREATACE",
    "Fountain City",
    "BIGNEWS",
    "FUDD10",
    "SUB2GAMERROBOT_EXP1",
    "UPD15",
    "2BILLION",
    "UPD16",
    "3BVISITS",
    "fudd10_v2",
    "Starcodeheo",
    "Magicbus",
    "JCWK",
    "Bluxxy",
    "Sub2Fer999",
    "Enyu_is_Pro"
}
if World3 then 
    distbyp = 5000
    island = {
    ["Port Town"] = CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375),
    ["Hydra Island"] = CFrame.new(5749.7861328125 + 50, 611.9736938476562, -276.2497863769531),
    ["Mansion"] = CFrame.new(-12471.169921875 + 50, 374.94024658203, -7551.677734375),
    ["Castle On The Sea"] = CFrame.new(-5085.23681640625 + 50, 316.5072021484375, -3156.202880859375),
    ["Haunted Island"] = CFrame.new(-9547.5703125, 141.0137481689453, 5535.16162109375),
    ["Great Tree"] = CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625),
    ["Candy Island"] = CFrame.new(-1106.076416015625, 13.016114234924316, -14231.9990234375),
    ["Cake Island"] = CFrame.new(-1903.6856689453125, 36.70722579956055, -11857.265625),
    ["Loaf Island"] = CFrame.new(-889.8325805664062, 64.72842407226562, -10895.8876953125),
    ["Peanut Island"] = CFrame.new(-1943.59716796875, 37.012996673583984, -10288.01171875),
    ["Cocoa Island"] = CFrame.new(147.35205078125, 23.642955780029297, -12030.5498046875),
    ["Tiki Outpost"] = CFrame.new(-16234,9,416)
    } 
elseif World2 then 
    distbyp = 3500
    island = { 
    a = CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938),
    b = CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094),
    c= CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375),
    d= CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344),
    e=CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828), 
    f=CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875),
    g=CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188),
    h=CFrame.new(923.40197753906, 125.05712890625, 32885.875),
    i=CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125),
    }
elseif World1 then 
    distbyp = 1500
    island = { 
    a = CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594), 
    b = CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156), 
    c = CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688), 
    d = CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969), 
    e =CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754), 
    f = CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094) ,
    g = CFrame.new(-4607.82275, 872.54248, -1667.55688), 
    h = CFrame.new(-7952.31006, 5545.52832, -320.704956),
    i = CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313),
    j = CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969),
    k = CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469),
    l = CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813),
    m = CFrame.new(61163.8515625, 11.6796875, 1819.7841796875),
    n = CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875),
    o =CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656),
    p = CFrame.new(-4813.0249, 903.708557, -1912.69055),
    q = CFrame.new(-4970.21875, 717.707275, -2622.35449),
    } 
end
--- Tween / Bypass
function bypass(Pos)   
    if lp.Character:FindFirstChild("Head") and lp.Character:FindFirstChild("HumanoidRootPart") and lp.Character:FindFirstChild("Humanoid") then
        dist = math.huge
        is = nil
        for i , v in pairs(island) do
            if (Pos.Position-v.Position).magnitude < dist then
                is = v 
                dist = (Pos.Position-v.Position).magnitude 
            end
        end 
        if is == nil then return; end
        if lp:DistanceFromCharacter(Pos.Position) > distbyp then 
            if (lp.Character.Head.Position-Pos.Position).magnitude > (is.Position-Pos.Position).magnitude then
                if tween then
                    tween:Destroy()
                end
                if (is.X == 61163.8515625 and is.Y ==11.6796875 and is.Z == 1819.7841796875) or is == CFrame.new(-12471.169921875 + 50, 374.94024658203, -7551.677734375) or is == CFrame.new(-5085.23681640625 + 50, 316.5072021484375, -3156.202880859375) or is == CFrame.new(5749.7861328125 + 50, 611.9736938476562, -276.2497863769531) then
                    if tween then
                       tween:Cancel()
                    end
                    repeat task.wait()
                        lp.Character.HumanoidRootPart.CFrame = is  
                    until lp.Character.PrimaryPart.CFrame == is  
                    task.wait(0.1)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                else
                    if _G.BypassTP then
                        if tween then
                           tween:Cancel()
                        end
                        lp.Character.HumanoidRootPart.CFrame = is 
                        lp.Character:BreakJoints()
                        lp.Character.HumanoidRootPart.CFrame = is 
                        task.wait(2)
                        repeat task.wait()
                            lp.Character.PrimaryPart.CFrame = is
                        until lp.Character:FindFirstChild("Humanoid").Health > 0
                        task.wait(0.5)
                    end 
                end
            end
        end
    end
end
function to(Pos)
    pcall(function()
        if lp.Character:FindFirstChild("HumanoidRootPart") and lp.Character:FindFirstChild("Humanoid").Health > 0 then
                Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                if not game.Players.LocalPlayer.Character.PrimaryPart:FindFirstChild("Hold") then
                    local Hold = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.PrimaryPart)
                    Hold.Name = "Hold"
                    Hold.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                    Hold.Velocity = Vector3.new(0, 0, 0)
                end
                if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                end
                if Distance <= 350 then
                    lp.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
                end
                if Distance < 1000 then
                    Speed = 375
                elseif Distance >= 1000 then
                    Speed = 350
                end
                pcall(function()
                    tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear),{CFrame = Pos})
                    tween:Play()
                end)
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible then
                    if not string.find(string.lower(game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Text), "risk") then
                        bypass(Pos)
                    end
                else
                    bypass(Pos)
                end
                if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                end
                if _G.StopTween then
                    NoClip = false
                    tween:Cancel()
                else
                    NoClip = true
                end
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, Pos.Y, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
        end
    end)
end
--- Buso 
function Buso()
    if (not (game.Players.LocalPlayer.Character:FindFirstChild("HasBuso"))) then
        local rel = game.ReplicatedStorage
        rel.Remotes.CommF_:InvokeServer("Buso")
    end
end
--- Ken 
function Ken()
    if game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui") and game.Players.LocalPlayer.PlayerGui:FindFirstChild("ScreenGui") and game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
        buoi = true
    else
        game:service("VirtualUser"):CaptureController()
        game:service("VirtualUser"):SetKeyDown("0x65")
        game:service("VirtualUser"):SetKeyUp("0x65")
    end
end
--- Sent Key To Cilent 
function down(use,l)
    pcall(function()
        game:GetService("VirtualInputManager"):SendKeyEvent(true,use,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
        task.wait(l)
        game:GetService("VirtualInputManager"):SendKeyEvent(false,use,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
    end)
end
--- Equip 
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
--- EquipItem
function EquipWeapon(Tool)
    pcall(
        function()
            if game.Players.LocalPlayer.Backpack:FindFirstChild(Tool) then
                local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(Tool)
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid)
            end
        end
    )
end
-- Redeem Code
function UseCode(Text)
    game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Text)
end
-- Get Level
function getLevel()
    return lp.Data.Level.Value
end
--- No Clip ---
spawn(function()
    while game:GetService("RunService").Stepped:wait() do
        pcall(function()
            if NoClip then
                local character = game.Players.LocalPlayer.Character
                for _, v in pairs(character:GetChildren()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end
        end)
    end
end)
--- Rejoin
game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
    if child.Name == "ErrorPrompt" and child:FindFirstChild("MessageArea") and child.MessageArea:FindFirstChild("ErrorFrame") then
        print("Rimus Hub - Auto Rejoin!")
        game:GetService("TeleportService"):Teleport(game.PlaceId)
    end
end)
--- Check Quest
function CheckQuest()
    local Lvl = game:GetService("Players").LocalPlayer.Data.Level.Value
    if Lvl >= 1 and Lvl <= 9 then
        if tostring(game.Players.LocalPlayer.Team) == "Marines" then
            NameMon = "Trainee [Lv. 5]"
            NameQuest = "MarineQuest"
            LevelQuest = 1
            Mon = "Trainee"
            CFrameQuest = CFrame.new(-2709.67944, 24.5206585, 2104.24585, -0.744724929, -3.97967455e-08, -0.667371571, 4.32403588e-08, 1, -1.07884304e-07, 0.667371571, -1.09201515e-07, -0.744724929)
        elseif tostring(game.Players.LocalPlayer.Team) == "Pirates" then
            NameMon = "Bandit [Lv. 5]"
            Mon = "Bandit"
            NameQuest = "BanditQuest1"
            LevelQuest = 1
            CFrameQuest = CFrame.new(1059.99731, 16.9222069, 1549.28162, -0.95466274, 7.29721794e-09, 0.297689587, 1.05190106e-08, 1, 9.22064114e-09, -0.297689587, 1.19340022e-08, -0.95466274)
        end
        return {
            [1] = LevelQuest,
            [2] = CFrameQuest,
            [3] = NameMon,
            [4] = NameQuest,
            [5] = LevelRequire,
            [6] = Mon,
            [7] = CFrameMon
        }
    end

    if Lvl >= 15 and Lvl <= 29 then
        NameMon = "Gorilla [Lv. 20]"
        NameQuest = "JungleQuest"
        LevelQuest = 2
        Mon = "Gorilla"
        CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
        CFrameMon = CFrame.new(-1142.0293, 40.5877495, -516.118103, 0.55559355, 7.58965513e-08, 0.831454039, 1.24594361e-08, 1, -9.96073553e-08, -0.831454039, 6.57006538e-08, 0.55559355)
        return {
            [1] = LevelQuest,
            [2] = CFrameQuest,
            [3] = NameMon,
            [4] = NameQuest,
            [5] = LevelRequire,
            [6] = Mon,
            [7] = CFrameMon
        }
    end

    
    local GuideModule = require(game:GetService("ReplicatedStorage").GuideModule)
    local Quests = require(game:GetService("ReplicatedStorage").Quests)
    for i,v in pairs(GuideModule["Data"]["NPCList"]) do
        for i1,v1 in pairs(v["Levels"]) do
            if Lvl >= v1 then
                if not LevelRequire then
                    LevelRequire = 0
                end
                if v1 > LevelRequire then
                    CFrameQuest = i["CFrame"]
                    LevelQuest = i1
                    LevelRequire = v1
                end
                if #v["Levels"] == 3 and LevelQuest == 3 then
                    CFrameQuest = i["CFrame"]
                    LevelQuest = 2
                    LevelRequire = v["Levels"][2]
                end
            end
        end
    end
    for i,v in pairs(Quests) do
        for i1,v1 in pairs(v) do
            if v1["LevelReq"] == LevelRequire and i ~= "CitizenQuest" then
                NameQuest = i
                for i2,v2 in pairs(v1["Task"]) do
                    NameMon = i2
                    Mon = string.split(i2," [Lv. ".. v1["LevelReq"] .. "]")[1]
                end
            end
        end
    end
    if NameQuest == "MarineQuest2" then
        NameQuest = "MarineQuest2"
        LevelQuest = 1
        NameMon = "Chief Petty Officer [Lv. 120]"
        Mon = "Chief Petty Officer"
        LevelRequire = 120
    elseif NameQuest == "ImpelQuest" then
        NameQuest = "PrisonerQuest"
        LevelQuest = 2
        NameMon = "Dangerous Prisoner [Lv. 190]"
        Mon = "Dangerous Prisoner"
        LevelRequire = 210
        CFrameQuest = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118)
    elseif NameQuest == "SkyExp1Quest" then
        if LevelQuest == 1 then
            CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
        elseif LevelQuest == 2 then
            CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
        end
    elseif NameQuest == "Area2Quest" and LevelQuest == 2 then
        NameQuest = "Area2Quest"
        LevelQuest = 1
        NameMon = "Swan Pirate [Lv. 775]"
        Mon = "Swan Pirate"
        LevelRequire = 775
    end
    NameMon = NameMon:sub(1,#NameMon)
    if not NameMon:find("Lv") then
        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
            MonLV = string.match(v.Name, "%d+")
            if v.Name:find(NameMon) and #v.Name > #NameMon and tonumber(MonLV) <= Lvl + 50 then
                NameMon = v.Name
            end
        end
    end
    if not NameMon:find("Lv") then
        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
            MonLV = string.match(v.Name, "%d+")
            if v.Name:find(NameMon) and #v.Name > #NameMon and tonumber(MonLV) <= Lvl + 50 then
                NameMon = v.Name
                Mon = a
            end
        end
    end
    for _,v in pairs(workspace._WorldOrigin.EnemySpawns:GetChildren()) do
        if v.Name == NameMon then
            CFrameMon = v.CFrame * CFrame.new(0,30,0)
        end
    end

    return {
        [1] = LevelQuest,
        [2] = CFrameQuest,
        [3] = NameMon,
        [4] = NameQuest,
        [5] = LevelRequire,
        [6] = Mon,
        [7] = CFrameMon
    }
end
--- Fast Attack
function GetBladeHit()
    local CombatFrameworkLib = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))
    local CmrFwLib = CombatFrameworkLib[2]
    local p13 = CmrFwLib.activeController
    local weapon = p13.blades[1]
    if not weapon then 
        return weapon
    end
    while weapon.Parent ~= game.Players.LocalPlayer.Character do
        weapon = weapon.Parent 
    end
    return weapon
end
function getHits(Size)
    local Hits = {}
    local Enemies = workspace.Enemies:GetChildren()
    local Characters = workspace.Characters:GetChildren()
    for i=1,#Enemies do local v = Enemies[i]
        local Human = v:FindFirstChildOfClass("Humanoid")
        if Human and Human.RootPart and Human.Health > 0 and game.Players.LocalPlayer:DistanceFromCharacter(Human.RootPart.Position) < Size+55 then
            table.insert(Hits,Human.RootPart)
        end
    end
    for i=1,#Characters do local v = Characters[i]
        if v ~= game.Players.LocalPlayer.Character then
            local Human = v:FindFirstChildOfClass("Humanoid")
            if Human and Human.RootPart and Human.Health > 0 and game.Players.LocalPlayer:DistanceFromCharacter(Human.RootPart.Position) < Size+55 then
                table.insert(Hits,Human.RootPart)
            end
        end
    end
    return Hits
end

abc = true
task.spawn(function()
    local a = game.Players.LocalPlayer
    local b = require(a.PlayerScripts.CombatFramework.Particle)
    local c = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
    if not shared.orl then
        shared.orl = c.wrapAttackAnimationAsync
    end
    if not shared.cpc then
        shared.cpc = b.play
    end
    if abc then
        pcall(function()
            c.wrapAttackAnimationAsync = function(d, e, f, g, h)
                local i = c.getBladeHits(e, f, g)
                if i then
                    b.play = function()
                    end
                    d:Play(0.25, 0.25, 0.25)
                    h(i)
                    b.play = shared.cpc
                    wait(.5)
                    d:Stop()
                end
            end
        end)
    end
end)
function AttackHit()
    local CombatFrameworkLib = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))
    local CmrFwLib = CombatFrameworkLib[2]
    for i = 1, 1 do
        local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(lp.Character,{lp.Character.HumanoidRootPart},60)
        local cac = {}
        local hash = {}
        for k, v in pairs(bladehit) do
            if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                table.insert(cac, v.Parent.HumanoidRootPart)
                hash[v.Parent] = true
            end
        end
        bladehit = cac
        if #bladehit > 0 then
            pcall(function()
                CmrFwLib.activeController.timeToNextAttack = 1
                CmrFwLib.activeController.attacking = false
                CmrFwLib.activeController.blocking = false
                CmrFwLib.activeController.timeToNextBlock = 0
                CmrFwLib.activeController.increment = 3
                CmrFwLib.activeController.hitboxMagnitude = 100
                CmrFwLib.activeController.focusStart = 0
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetBladeHit()))
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "")
            end)
        end
    end
end
function SuperFastAttack()
    local CbFw = debug.getupvalues(require(lp.PlayerScripts.CombatFramework))
    local CbFw2 = CbFw[2]
    local AC = CbFw2.activeController
    for i = 1, 1 do 
        local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
        lp.Character,
        {lp.Character.HumanoidRootPart},
        60
        )
        local cac = {}
        local hash = {}
        for k, v in pairs(bladehit) do
            if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                table.insert(cac, v.Parent.HumanoidRootPart)
                hash[v.Parent] = true
            end
        end
        bladehit = cac
        if #bladehit > 0 then
            local u8 = debug.getupvalue(AC.attack, 5)
            local u9 = debug.getupvalue(AC.attack, 6)
            local u7 = debug.getupvalue(AC.attack, 4)
            local u10 = debug.getupvalue(AC.attack, 7)
            local u12 = (u8 * 798405 + u7 * 727595) % u9
            local u13 = u7 * 798405
            (function()
                u12 = (u12 * u9 + u13) % 1099511627776
                u8 = math.floor(u12 / u9)
                u7 = u12 - u8 * u9
            end)()
            u10 = u10 + 1
            debug.setupvalue(AC.attack, 5, u8)
            debug.setupvalue(AC.attack, 6, u9)
            debug.setupvalue(AC.attack, 4, u7)
            debug.setupvalue(AC.attack, 7, u10)
            pcall(function()
                for k, v in pairs(AC.animator.anims.basic) do
                    v:Play()
                end                  
            end)
            if lp.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then 
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
                game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "")
            end
        end
    end
end
CombatFrameworkR = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
y = debug.getupvalues(CombatFrameworkR)[2]
task.spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if Fastattack then
            if typeof(y) == "table" then
                if lp.Character:FindFirstChild("Humanoid").Health > 0 then
                    pcall(function()
                        y.activeController.timeToNextAttack = 0
                        y.activeController.hitboxMagnitude = 60
                        y.activeController.active = false
                        y.activeController.timeToNextBlock = 0
                        y.activeController.focusStart = 1655503339.0980349
                        y.activeController.increment = 1
                        y.activeController.blocking = false
                        y.activeController.attacking = false
                        y.activeController.humanoid.AutoRotate = true
                    end)
                end
            end
        end
    end)
end)
spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if autoclick then
            game:GetService("VirtualUser"):CaptureController()
            game:GetService("VirtualUser"):Button1Down(Vector2.new(0,1,0,1))
        end
    end)
end)
spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if Fastattack then
            if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
                game.Players.LocalPlayer.Character.Stun.Value = 0
                game.Players.LocalPlayer.Character.Humanoid.Sit = false
                game.Players.LocalPlayer.Character.Busy.Value = false
            end
        end
    end)
end)
spawn(function()
    while task.wait() do
        if Fastattack and _G.FastAttackDelay ~= nil then
            autoclick = true
            AttackHit()
            task.wait(_G.FastAttackDelay)
        end
    end
end)
--- Aim
spawn(function()
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg,false)
    gg.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if aim and AimPos ~= nil then
                        args[2] = AimPos.Position
                        return old(unpack(args))
                    end
                end
            end
        end
        return old(...)
    end)
end)
local Mouse = lp:GetMouse()
Mouse.Button1Down:Connect(function()
    pcall(function()
        if aim and AimPos ~= nil and AimRootPart ~= nil then
            local args = {
                [1] = PosMon.Position,
                [2] = AimRootPart
            }
            game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteFunctionShoot:InvokeServer(unpack(args))
        end
    end)
end)
--- Stop Tween
function StopTween(target)
    if not target then
        _G.StopTween = true
        wait()
        to(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        _G.StopTween = false
    end
end
--- Bring Mob
function FindAverageCFrame(cframeList)
    local totalPosition = Vector3.new()
    local validCount = 0
    for i = 1, #cframeList do
        local cframe = cframeList[i]
        local isFarEnough = true
        for j = 1, #cframeList do
            if i ~= j then
                local distance = (cframe.Position - cframeList[j].Position).Magnitude
                if distance > (350 * j) then
                    isFarEnough = false
                    break
                end
            end
        end
        if isFarEnough then
            totalPosition = totalPosition + cframe.Position
            validCount = validCount + 1
        end
    end
    local averagePosition = totalPosition / validCount
    local averageCFrame = CFrame.new(averagePosition)
    return averageCFrame
end
function NameMobNear()
    local Mob
    local MobTable = {}
    for i, v in pairs(Workspace.Enemies:GetChildren()) do
        if not table.find(MobTable, v) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
            table.insert(MobTable, v)
        end
    end
    local Min = math.huge
    for i, v in pairs(MobTable) do
        local Dis = game.Players.LocalPlayer:DistanceFromCharacter(v.HumanoidRootPart.Position)
        if Min > Dis and Mob ~= v.Name then
            Min = Dis
            Mob = v.Name
        end
    end
    return Mob
end
function Bring(BringName,Boss)
    if Boss then
        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
            if v and v.Name == BringName and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid").Health <= 0 then
                v:Destroy()
            end
        end
    else
        BringName = tostring(BringName)
        BringList = {}
        BringList2 = {}
        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
            if v and v.Parent and v:FindFirstChild("HumanoidRootPart") and v.Name ==  then
                table.insert(BringList,v.HumanoidRootPart.CFrame)
                table.insert(BringList2, v)
            end
        end
        BringCFrame = FindAverageCFrame(BringList)
        for i,v in pairs(BringList2) do
            if v and v.Parent and v.Name == BringName and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid").Health > 0 and (v.HumanoidRootPart.Position - BringCFrame.Position).Magnitude < 350 then
                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                v.HumanoidRootPart.CFrame = BringCFrame
                v.Humanoid:ChangeState(14)
                v.HumanoidRootPart.CanCollide = false
                v.Head.CanCollide = false
                if v.Humanoid:FindFirstChild("Animator") then
                    v.Humanoid.Animator:Destroy()
                end
                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
            end
        end
    end
end
function FindCFrameOfName(FindName)
    CFrameReturn = lp.Character.HumanoidRootPart.CFrame
    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
        if v and v.Parent and v:FindFirstChild("HumanoidRootPart") and v.Name == FindName then
            CFrameReturn = v.HumanoidRootPart.CFrame
        end
    end
    return CFrameReturn
end
--- Circle
local radius = 100
local angle = 0
function getNextPosition(center)
    angle = angle + 5
    return center + Vector3.new(math.sin(math.rad(angle)) * radius, 0, math.cos(math.rad(angle)) * radius)
end
--- Kill Mob
function KillMob(Mob,Quest,ModFarm,Boss)
    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
        if v and v.Parent and v.Name == Mob and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid").Health > 0 then
            repeat task.wait()
                aim = true
                AimRootPart = v.HumanoidRootPart
                equip(_G.SelectWeapon)
                Buso()
                Bring(v.Name,Boss)
                PosMon = FindCFrameOfName(v.Name)
                to(FindCFrameOfName(v.Name) * CFrame.new(0, 30, 0))
                Fastattack = true
            until not v or not v.Parent or v:FindFirstChild("Humanoid").Health <= 0 or (Quest and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) or ModFarm == false
        end
    end
end
--- Use
local Window = OrionLib:MakeWindow({Name = "Rimus Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "Rimus Hub Config"})

local MainTab = Window:MakeTab({
	Name = "Main",
	Icon = "",
	PremiumOnly = false
})

_G.SelectWeapon = "Melee"
MainTab:AddDropdown({
	Name = "Select Weapon",
	Default = "Melee",
	Options = {"Melee","Sword","Fruit","Gun"},
	Callback = function(Value)
		_G.SelectWeapon = Value
	end    
})
MainTab:AddDropdown({
	Name = "Fast Attack Speed",
	Default = "0.1",
	Options = {"0", "0.1", "0.15", "0.155", "0.16", "0.165", "0.17", "0.175", "0.18", "0.185"},
	Callback = function(Value)
		_G.FastAttackDelay = Value
	end    
})
MainTab:AddToggle({
	Name = "Bypass TP",
	Default = true,
	Callback = function(Value)
		_G.BypassTP = Value
	end    
}) 
MainTab:AddParagraph("Main Farm","Auto Farm")
MainTab:AddToggle({
	Name = "Auto Farm Level",
	Default = false,
	Flag = "FarmLevel",
	Save = true,
	Callback = function(Value)
		_G.AutoFarmLevel = Value
		StopTween(_G.AutoFarmLevel)
	end    
})
spawn(function()
    while task.wait() do 
        if _G.AutoFarmLevel then
            CheckQuest()
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
            elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
                if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,NameMon) then
                    if game.Workspace.Enemies:FindFirstChild(Mon) then
                        KillMob(Mon,true,_G.AutoFarmLevel,false)
                    else
                        Fastattack = false
                        aim = false
                        to(getNextPosition(CFrameQuest))
                    end
                else
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                end
            end
        end
    end
end)
MainTab:AddToggle({
	Name = "Farm Nearest",
	Default = false,
	Flag = "FarmNearest",
	Save = true,
	Callback = function(Value)
		_G.AutoFarmNearest = Value
		StopTween(_G.AutoFarmNearest)
	end    
})
spawn(function()
	while task.wait() do
		if _G.AutoFarmNearest then
			MobNear = NameMobNearest()
            KillMob(MobNear,true,_G.AutoFarmNearest,false)
		end
	end
end)
MainTab:AddToggle({
	Name = "Auto Katakuri",
	Default = false,
	Flag = "FarmKata",
	Save = true,
	Callback = function(Value)
		_G.AutoKatakuri = Value
		StopTween(_G.AutoKatakuri)
	end    
})
spawn(function()
    while task.wait() do 
        if _G.AutoKatakuri then
            if game:GetService("Workspace").Enemies:FindFirstChild("Dough King") or game.ReplicatedStorage:FindFirstChild("Dough King") or game.ReplicatedStorage:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then   
                if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                    KillMob("Cake Prince",false,_G.AutoKatakuri,true)
                else
                    KillMob("Dough King",false,_G.AutoKatakuri,true)
                end
            else
                if game.Workspace.Enemies:FindFirstChild("Baking Staff") or game.Workspace.Enemies:FindFirstChild("Head Baker") or game.Workspace.Enemies:FindFirstChild("Cake Guard") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do  
                        if (v.Name == "Baking Staff" or v.Name == "Head Baker" or v.Name == "Cake Guard" or v.Name == "Cookie Crafter") then
                            if getLevel() >= 2200 then
                                NameQuest = "CakeQuest1"
                                LevelQuest = 1
                                NameMon = "Cookie Crafter"
                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,NameMon) then
                                        KillMob(v.Name,true,_G.AutoKatakuri,false)
                                    else
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                                    end
                                end
                            else
                                KillMob(v.Name,false,_G.AutoKatakuri,false)
                            end
                        end
                    end
                else
                    Fastattack = false
                    aim = false
                    to(getNextPosition(CFrame.new(-2207.641845703125, 118.56587982177734, -12196.0546875)))
                end
            end
        end
    end
end)
MainTab:AddToggle({
	Name = "Auto Farm Bone",
	Default = false,
	Flag = "FarmBone",
	Save = true,
	Callback = function(Value)
		_G.AutoFarmBone = Value
		StopTween(_G.AutoFarmBone)
	end    
})
spawn(function()
    while task.wait() do 
        if _G.AutoFarmBone then
            if game.Workspace.Enemies:FindFirstChild("Reborn Skeleton") or game.Workspace.Enemies:FindFirstChild("Living Zombie") or game.Workspace.Enemies:FindFirstChild("Demonic Soul") or game.Workspace.Enemies:FindFirstChild("Posessed Mummy") then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do  
                    if (v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy") then
                        if getLevel() >= 1975 then
                            NameQuest = "HauntedQuest1"
                            QuestLv = 1
                            NameMon = "Reborn Skeleton"
                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                            elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
                                if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,NameMon) then
                                    KillMob(v.Name,true,_G.AutoFarmBonei,false)
                                else
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                                end
                            end
                        else
                            KillMob(v.Name,false,_G.AutoFarmBone,false)
                        end
                    end
                end
            else
                Fastattack = false
                aim = false
                to(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
            end
        end
    end
end)
