_G.AutoFarmBounty = true

spawn(function()
    pcall(function()
        game:GetService("RunService").RenderStepped:connect(function()
            if _G.AutoFarmBounty and TargetPlayerAim ~= nil and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name]:FindFirstChild("MousePos") then
                local args = {
                    [1] = game:GetService("Players"):FindFirstChild(TargetPlayerAim).Character.HumanoidRootPart.Position
                }
                game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
            end
        end)
    end)
end)


spawn(function()
pcall(function()
if _G.AutoFarmBounty then
while wait() do
if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
end
end
end
end)
end)

	function Tween(P1)
		Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
		if Distance < 250 then
			Speed = 600
		elseif Distance < 500 then
			Speed = 400
		elseif Distance < 1000 then
			Speed = 350
		elseif Distance >= 1000 then
			Speed = 200
		end
		game:GetService("TweenService"):Create(
			game.Players.LocalPlayer.Character.HumanoidRootPart,
			TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
			{CFrame = P1}
		):Play()
	end
	
	function Tween(P1)
		Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
		if Distance < 1000 then
			Speed = 400
		elseif Distance >= 1000 then
			Speed = 250
		end
		game:GetService("TweenService"):Create(
			game.Players.LocalPlayer.Character.HumanoidRootPart,
			TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
			{CFrame = P1}
		):Play()
		Clip = true
		wait(Distance/Speed)
		Clip = false
	end

spawn(function()
while wait() do
pcall(function()
if _G.AutoFarmBounty then
if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
end
end
end)
end
end)

local Delay = 1

CastlePostoMansion = CFrame.new(-5084.8447265625, 316.48101806641, -3145.3752441406)
MansiontoCastlePos = CFrame.new(-12464.596679688, 376.30590820312, -7567.2626953125)
Castletophydra = CFrame.new(-5095.33984375, 316.48101806641, -3168.3134765625)
HydratoCastle = CFrame.new(5741.869140625, 611.94750976562, -282.61154174805)
spawn(function()
while wait() do
pcall(function()
if _G.AutoFarmBounty then
for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
if v.Name ~= game.Players.LocalPlayer.Name then
if v:WaitForChild("Humanoid").Health > 0 and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 17000 then
plyselecthunthelpold = v.Humanoid.Health
repeat task.wait()
NameTarget = v.Name
if tostring(game.Players.LocalPlayer.Team) == "Pirates" then
Tween(v.HumanoidRootPart.CFrame * CFrame.new(0,0,15))
            elseif tostring(game.Players.LocalPlayer.Team) == "Marines" then
if game.Players[NameTarget].Team ~= game.Players.LocalPlayer.Team then
Tween(v.HumanoidRootPart.CFrame * CFrame.new(0,0,15))
end
end
spawn(function()
if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150 then
    spawn(function()
    Melee()
    SY()
    SC()
    SZ()
    SX()
    wait(1)
    Sword()
    SZ()
    SX()
    wait(1)
    BF()
    SZ()
    SX()
    end)
end
end)
v.HumanoidRootPart.CanCollide = false
TargetSelectHunt = v.Humanoid
until _G.AutoFarmBounty == false or v.Humanoid.Health == 0 or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid") or not v.Parent or NextplySelect == true
NextplySelect = false
StartCheckTarget = false
end
end
end
end
end)
end
end)

function Melee()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") then
        if v.ToolTip == "Melee" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
        end
    end
end
end
function Sword()
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then
            if v.ToolTip == "Sword" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            end
        end
    end
    end
    function BF()
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA("Tool") then
                if v.ToolTip == "Blox Fruit" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                end
            end
        end
        end

        function SY()
            game:GetService("VirtualInputManager"):SendKeyEvent(true,"Y",false,game)
            game:GetService("VirtualInputManager"):SendKeyEvent(false,"Y",false,game)
        end

function SZ()
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
end

function SX()
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
end

function SC()
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
end
spawn(function()
pcall(function()
while task.wait() do
if _G.AutoFarmBounty then
game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.Main.SafeZone.Visible = false
end
end
end)
end)

spawn(function()
pcall(function()
while wait() do
if _G.AutoFarmBounty then
if TargetSelectHunt ~= nil then
if StartCheckTarget then
wait(6.5)
if TargetSelectHunt.Health == TargetSelectHunt.MaxHealth or TargetSelectHunt.Health >= plyselecthunthelpold then
NextplySelect = true
TargetSelectHunt = nil
end
end
end
end
end
end)
end)

spawn(function()
pcall(function()
while wait(.1) do
if _G.AutoFarmBounty then
if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
end
end
end
end)
end)

spawn(function()
while wait() do
if _G.AutoFarmBounty then
pcall(function()
wait(150)
Hop()
Hop()
Hop()
Hop()
Hop()
end)
end
end
end)
