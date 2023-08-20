repeat
wait()
print("Loading.")
until game:IsLoaded()
print("Game is loaded")

local L_5_ = game.PlaceId
if L_5_ == 2753915549 then
World1 = true
elseif L_5_ == 4442272183 then
World2 = true
elseif L_5_ == 7449423635 then
World3 = true
else
    game.Players.LocalPlayer:Kick("รันผิดเเมพรึป่าว ไอหนุ่ม")
end

spawn(function()
    while task.wait() do
    if game.Players.LocalPlayer.Team == nil then
    pcall(function()
        if _G.Team == "Pirate" then
        game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Size = UDim2.new(10000,1000,10000,1000)
        game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Position = UDim2.new(-4,0,-5,0)
        wait(.5)
        game:GetService("VirtualInputManager"):SendMouseButtonEvent(605,394,0,true,game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton,0)
        game:GetService("VirtualInputManager"):SendMouseButtonEvent(605,394,0,false,game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton,0)
        elseif _G.Team == "Marine" then
        game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.Size = UDim2.new(10000,1000,10000,1000)
        game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.Position = UDim2.new(-4,0,-5,0)
        wait(.5)
        game:GetService("VirtualInputManager"):SendMouseButtonEvent(605,394,0,true,game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton,0)
        game:GetService("VirtualInputManager"):SendMouseButtonEvent(605,394,0,false,game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton,0)
        else
            game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Size = UDim2.new(10000,1000,10000,1000)
        game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Position = UDim2.new(-4,0,-5,0)
        wait(.5)
        game:GetService("VirtualInputManager"):SendMouseButtonEvent(605,394,0,true,game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton,0)
        game:GetService("VirtualInputManager"):SendMouseButtonEvent(605,394,0,false,game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton,0)
        end
        end)
    end
    end
    end)

_G.Team = "Marine"
_G.Grab_Chest = true
_G.T_P_H = true
_G.WalkWater = true
_G.AutoEquiped = true
_G.No_clip = true
_G.AFK = true
_G.FixGrabChest = true
_G.AutoHopServer = true
_G.Sky = true

spawn(function()
    while task.wait() do
    pcall(function()
        if _G.WalkWater == true or _G.WalkOnWater == true then
        game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,112,1000)
        else
            game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,80,1000)
        end
        end)
    end
    end)

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.click == true then
        pcall(function()
            game:GetService'VirtualUser':CaptureController()
            game:GetService'VirtualUser':Button1Down(Vector2.new(0,1,0,1))
            end)
        end
        end)
    end)

spawn(function()
    while wait(0.05) do
    pcall(function()
        if _G.FixGrabChest == true then
        for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
        local playerPos = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
        if (v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3") and (v.Position - playerPos).Magnitude <= 10 then
        _G.Chest_100 = v
        _G.Chest_500 = v
        _G.Chest_1000 = v
        _G.Chest_1500 = v
        _G.Chest_2000 = v
        _G.Chest_2500 = v
        _G.Chest_3500 = v
        _G.Chest_4500 = v
        _G.Chest_5500 = v
        _G.Chest_6500 = v
        _G.Chest_7500 = v
        _G.Chest_9500 = v
        _G.Chest_10500 = v
        _G.Chest_12500 = v
        _G.Chest_15500 = v
        _G.Chest_17500 = v
        game:GetService('VirtualUser'):Button1Down(Vector2.new(0, 1))
        print("Found and clicked a chest")
        return
        end
        end
        end
        end)
    end
    end)

spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if _G.No_clip then
            for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA("BasePart") then
            v.CanCollide = false
            end
            end
            end
            end)
        end)
    end)

local function HandleAFK()
local bb = game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
    if _G.AFK == true then
    bb:CaptureController()
    bb:ClickButton2(Vector2.new())
    print("คุณเข้าสถานะ AFK และ ROBLOX พยายามเตะคุณ แต่เราได้รับมือกับมันแล้ว!")
    wait(2)
    print("สคริปต์ถูกเปิดใช้งานอีกครั้ง")
    end
    end)
end

require(game.ReplicatedStorage.Util.CameraShaker):Stop()

spawn(function()
    while wait() do
    if _G.AutoEquiped == true then
    pcall(function()
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.ToolTip == "Melee" and v:IsA('Tool') then
        local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name)
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid)
        end
        end
        end)
    end
    end
    end)

spawn(function()
    while wait(0.05) do
    pcall(function()
        if _G.Grab_Chest == true then
        if _G.T_P_H == true then
        if game.Players.LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") or game.Players.LocalPlayer.Character:FindFirstChild("Fist of Darkness") then
        topos(CFrame.new(-379.70889282227, 73.0458984375, 304.84692382813))
        H_F = true
        game:GetService'VirtualUser':Button1Down(Vector2.new(1280,600))
        wait(3)
        else
            _G.Chest_100 = nil
        _G.Chest_500 = nil
        _G.Chest_1000 = nil
        _G.Chest_1500 = nil
        _G.Chest_2000 = nil
        _G.Chest_2500 = nil
        _G.Chest_3500 = nil
        _G.Chest_4500 = nil
        _G.Chest_5500 = nil
        _G.Chest_6500 = nil
        _G.Chest_7500 = nil
        _G.Chest_9500 = nil
        _G.Chest_10500 = nil
        _G.Chest_12500 = nil
        _G.Chest_15500 = nil
        _G.Chest_17500 = nil
        Chest_100()
        Chest_500()
        Chest_1000()
        Chest_1500()
        Chest_2000()
        Chest_2500()
        Chest_3500()
        Chest_4500()
        Chest_5500()
        Chest_6500()
        Chest_7500()
        Chest_9500()
        Chest_10500()
        Chest_12500()
        Chest_15500()
        Chest_17500()
        if _G.Chest_100 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_100.CFrame)
        until not _G.Chest_100.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_500.CFrame)
        until not _G.Chest_500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_1000 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_1000.CFrame)
        until not _G.Chest_1000.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_1500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_1500.CFrame)
        until not _G.Chest_1500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_2000 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_2000.CFrame)
        until not _G.Chest_2000.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_2500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_2500.CFrame)
        until not _G.Chest_2500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_3500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_3500.CFrame)
        until not _G.Chest_3500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_4500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_4500.CFrame)
        until not _G.Chest_4500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_5500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_5500.CFrame)
        until not _G.Chest_5500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_6500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_6500.CFrame)
        until not _G.Chest_6500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_7500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_7500.CFrame)
        until not _G.Chest_7500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_9500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_9500.CFrame)
        until not _G.Chest_9500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_10500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_10500.CFrame)
        until not _G.Chest_10500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_12500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_12500.CFrame)
        until not _G.Chest_12500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_15500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_15500.CFrame)
        until not _G.Chest_15500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        elseif _G.Chest_17500 ~= nil then
        repeat wait(0.05)
        topos(_G.Chest_17500.CFrame)
        until not _G.Chest_17500.Parent or not Grab_Chest
        if Grab_Chest then
        end
        end
        end
        else
            end
        end
        end)
    end
    end)

function topos(Pos)
local Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
Tween = true
local Speed = 100
local EasingStyle = Enum.EasingStyle.Linear -- ลองเปลี่ยนเป็นอีกแบบถ้าต้องการ

if Distance > 0 and Distance < 350 then
Speed = math.huge
end

if Distance > 350 and Distance < 500 then
Speed = 365
end

if Distance > 500 and Distance < 750 then
Speed = 345
end

if Distance > 750 and Distance < 1000 then
Speed = 325
end

if Distance >= 1000 then
Speed = 300
end

if Tween then
if game:GetService("Workspace"):FindFirstChild("Path") and plr:FindFirstChild("BodyClip") then

local plr = game.Players.LocalPlayer.Character.HumanoidRootPart

game:GetService("TweenService"):Create(plr, TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear), {
    CFrame = Pos
}):Play()
end
end

if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
game.Players.LocalPlayer.Character.Humanoid.Sit = false
end

local tweenInfo = TweenInfo.new(Distance/Speed, EasingStyle)
local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, tweenInfo, {
    CFrame = Pos
})

tween:Play()

if Distance <= 250 then
tween:Cancel()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
end

if _G.StopTween == true then
tween:Cancel()
_G.Clip = false
end
end

function GetDistance(target)
return math.floor((target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
end


function StopTween(target)
if not target then
_G.StopTween = true
wait()
topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
wait()
if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
end
_G.StopTween = false
_G.Clip = false
end
end

function Chest_100()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
_G.Chest_100 = v
return
elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
_G.Chest_100 = v
return
elseif v.Name == "Chest3" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
_G.Chest_100 = v
return
end
end
end
function Chest_500()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
_G.Chest_500 = v
return
elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
_G.Chest_500 = v
return
elseif v.Name == "Chest3" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
_G.Chest_500 = v
return
end
end
end
function Chest_1000()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
_G.Chest_1000 = v
return
elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
_G.Chest_1000 = v
return
elseif v.Name == "Chest3" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
_G.Chest_1000 = v
return
end
end
end
function Chest_1500()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500 then
_G.Chest_1500 = v
return
elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500 then
_G.Chest_1500 = v
return
elseif v.Name == "Chest3" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500 then
_G.Chest_1500 = v
return
end
end
end
function Chest_2000()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
_G.Chest_2000 = v
return
elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
_G.Chest_2000 = v
return
elseif v.Name == "Chest3" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
_G.Chest_2000 = v
return
end
end
end
function Chest_2500()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2500 then
_G.Chest_2500 = v
return
elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2500 then
_G.Chest_2500 = v
return
elseif v.Name == "Chest3" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2500 then
_G.Chest_2500 = v
return
end
end
end
function Chest_3500()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3500 then
_G.Chest_3500 = v
return
elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3500 then
_G.Chest_3500 = v
return
elseif v.Name == "Chest3" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3500 then
_G.Chest_3500 = v
return
end
end
end
function Chest_4500()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4500 then
_G.Chest_4500 = v
return
elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4500 then
_G.Chest_4500 = v
return
elseif v.Name == "Chest3" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4500 then
_G.Chest_4500 = v
return
end
end
end
function Chest_5500()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5500 then
_G.Chest_5500 = v
return
elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5500 then
_G.Chest_5500 = v
return
elseif v.Name == "Chest3" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5500 then
_G.Chest_5500 = v
return
end
end
end
function Chest_6500()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 6500 then
_G.Chest_6500 = v
return
elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 6500 then
_G.Chest_6500 = v
return
elseif v.Name == "Chest3" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 6500 then
_G.Chest_6500 = v
return
end
end
end
function Chest_7500()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 7500 then
_G.Chest_7500 = v
return
elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 7500 then
_G.Chest_7500 = v
return
elseif v.Name == "Chest3" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 7500 then
_G.Chest_7500 = v
return
end
end
end
function Chest_9500()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 9500 then
_G.Chest_9500 = v
return
elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 9500 then
_G.Chest_9500 = v
return
elseif v.Name == "Chest3" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 9500 then
_G.Chest_9500 = v
return
end
end
end
function Chest_10500()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10500 then
_G.Chest_10500 = v
return
elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10500 then
_G.Chest_10500 = v
return
elseif v.Name == "Chest3" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10500 then
_G.Chest_10500 = v
return
end
end
end
function Chest_12500()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 12500 then
_G.Chest_12500 = v
return
elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 12500 then
_G.Chest_12500 = v
return
elseif v.Name == "Chest3" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 12500 then
_G.Chest_12500 = v
return
end
end
end
function Chest_15500()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 15500 then
_G.Chest_15500 = v
return
elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 15500 then
_G.Chest_15500 = v
return
elseif v.Name == "Chest3" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 15500 then
_G.Chest_15500 = v
return
end
end
end
function Chest_17500()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 17500 then
_G.Chest_17500 = v
return
elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 17500 then
_G.Chest_17500 = v
return
elseif v.Name == "Chest3" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 17500 then
_G.Chest_17500 = v
return
end
end
end

function Sky()
    if _G.Sky == true then
        wait(0.05)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
        game.StarterGui:SetCore("SendNotification", {
    Title = "SPX",
    Text = "เปิดฟามวิหารสกาย...",
    Icon = "rbxassetid://14457679352",
    Duration = 5
})
    end
end

Sky()

function YT()
game.StarterGui:SetCore("SendNotification", {
    Title = "SPX Notification",
    Text = "YT-LocalPlayer5757",
    Icon = "rbxassetid://14457679352",
    Duration = 5
})
end

YT()

function CR ()
require(game:GetService("ReplicatedStorage").Notification).new("จัดทำโดย  YT LocalPlayer5757 !"):Display();
wait()
setthreadcontext(5)
end

CR()

function Hop()
    if _G.AutoHopServer == true then
wait(12)
game.StarterGui:SetCore("SendNotification", {
    Title = "SPX HopServer",
    Text = "กำลังย้ายเซิฟ...",
    Icon = "rbxassetid://14457679352",
    Duration = 5
})
        local PlaceID = game.PlaceId
        local AllIDs = {}
        local foundAnything = ""
        local actualHour = os.date("!*t").hour
        local Deleted = false
        function TPReturner()
            local Site;
            if foundAnything == "" then
                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
            else
                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
            end
            local ID = ""
            if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                foundAnything = Site.nextPageCursor
            end
            local num = 0;
            for i,v in pairs(Site.data) do
                local Possible = true
                ID = tostring(v.id)
                if tonumber(v.maxPlayers) > tonumber(v.playing) then
                    for _,Existing in pairs(AllIDs) do
                        if num ~= 0 then
                            if ID == tostring(Existing) then
                                Possible = false
                            end
                        else
                            if tonumber(actualHour) ~= tonumber(Existing) then
                                local delFile = pcall(function()
                                    AllIDs = {}
                                    table.insert(AllIDs, actualHour)
                                end)
                            end
                        end
                        num = num + 1
                    end
                    if Possible == true then
                        table.insert(AllIDs, ID)
                        wait()
                        pcall(function()
                            wait()
                            game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                        end)
                        wait(4)
                    end
                end
            end
        end
        function Teleport() 
            while wait() do
                pcall(function()
                    TPReturner()
                    if foundAnything ~= "" then
                        TPReturner()
                    end
                end)
            end
        end
        Teleport()
    end
end

Hop()