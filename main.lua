local function isMobile()
    return game:GetService("UserInputService"):GetPlatform() == Enum.UserInputPlatform.Gamepad or Enum.UserInputPlatform.Touch
end

if not isMobile() then
    game.Players.LocalPlayer:Kick("Mobile And Tablet Devices Only!")
    return
end

local function createGUI()
    local screenGui = Instance.new("ScreenGui")
    screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 300, 0, 400)
    frame.Position = UDim2.new(0.5, -150, 0.5, -200)
    frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    frame.Parent = screenGui

    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, 0, 0, 50)
    title.Position = UDim2.new(0, 0, 0, 0)
    title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.Text = "Enter Password"
    title.TextSize = 24
    title.Font = Enum.Font.SourceSans
    title.Parent = frame

    local passwordBox = Instance.new("TextBox")
    passwordBox.Size = UDim2.new(1, 0, 0, 50)
    passwordBox.Position = UDim2.new(0, 0, 0, 50)
    passwordBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    passwordBox.TextColor3 = Color3.fromRGB(0, 0, 0)
    passwordBox.Text = ""
    passwordBox.PlaceholderText = "Password"
    passwordBox.Font = Enum.Font.SourceSans
    passwordBox.Parent = frame

    local submitButton = Instance.new("TextButton")
    submitButton.Size = UDim2.new(1, 0, 0, 50)
    submitButton.Position = UDim2.new(0, 0, 0, 100)
    submitButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
    submitButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    submitButton.Text = "Submit"
    submitButton.Font = Enum.Font.SourceSans
    submitButton.Parent = frame

    submitButton.MouseButton1Click:Connect(function()
        if passwordBox.Text == "expl0!tHUB" then
            title.Text = "Welcome Please Click Continue"
            submitButton.Text = "Continue"
            submitButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        else
            game.Players.LocalPlayer:Kick("Wrong Password.")
        end
    end)

    submitButton.MouseButton1Click:Connect(function()
        if submitButton.Text == "Continue" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/your-username/Expl0itHUB-Script/main/loader.lua"))()
        end
    end)
end

createGUI()
