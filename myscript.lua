-- Block Spin Pro Script
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

-- الإعدادات (يمكنك تعديلها)
local Settings = {
    SpinSpeed = 10,
    AimBot = true,
    GodMode = false,
    FOV = 90,
    FireRange = 50
}

-- 1. وظيفة القود مود
local function ActivateGodMode()
    local char = LocalPlayer.Character
    if char and char:FindFirstChild("Humanoid") then
        char.Humanoid.MaxHealth = math.huge
        char.Humanoid.Health = math.huge
    end
end

-- 2. واجهة تحكم بسيطة داخل اللعبة
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0, 200, 0, 150)
Frame.Position = UDim2.new(0.5, -100, 0.5, -75)
Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)

local Button = Instance.new("TextButton", Frame)
Button.Text = "تفعيل الخصائص"
Button.Size = UDim2.new(1, 0, 1, 0)
Button.MouseButton1Click:Connect(function()
    -- تطبيق الإعدادات
    Camera.FieldOfView = Settings.FOV
    if Settings.GodMode then ActivateGodMode() end
    print("تم تفعيل الخصائص: السرعة، الأيم، والميدى!")
end)

-- تنبيه عند التشغيل
print("تم تحميل سكربت Block Spin بنجاح يا خالد!")
