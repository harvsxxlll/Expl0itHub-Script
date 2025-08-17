local function createLoadingAnimation()
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
    title.Text = "expl0!t HUB v0.1"
    title.TextSize = 24
    title.Font = Enum.Font.SourceSans
    title.Parent = frame

    local line = Instance.new("Frame")
    line.Size = UDim2.new(1, 0, 0, 2)
    line.Position = UDim2.new(0, 0, 0, 50)
    line.BackgroundColor3 = Color3.fromRGB(128, 128, 128)
    line.Parent = frame

    local speedHack = Instance.new("TextLabel")
    speedHack.Size = UDim2.new(1, 0, 0, 50)
    speedHack.Position = UDim2.new(0, 0, 0, 52)
    speedHack.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    speedHack.TextColor3 = Color3.fromRGB(255, 255, 255)
    speedHack.Text = "Speed Hack"
    speedHack.TextSize = 20
    speedHack.Font = Enum.Font.SourceSans
    speedHack.Parent = frame

    local speedBox = Instance.new("TextBox")
    speedBox.Size = UDim2.new(0.7, 0, 0, 50)
    speedBox.Position = UDim2.new(0, 0, 0, 102)
    speedBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    speedBox.TextColor3 = Color3.fromRGB(0, 0, 0)
    speedBox.Text = ""
    speedBox.PlaceholderText = "Enter Speed"
    speedBox.Font = Enum.Font.SourceSans
    speedBox.Parent = frame

    local speedReset = Instance.new("TextButton")
    speedReset.Size = UDim2.new(0.3, 0, 0, 50)
    speedReset.Position = UDim2.new(0.7, 0, 0, 102)
    speedReset.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    speedReset.TextColor3 = Color3.fromRGB(0, 0, 0)
    speedReset.Text = "Reset"
    speedReset.Font = Enum.Font.SourceSans
    speedReset.Parent = frame

    speedReset.MouseButton1Click:Connect(function()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end)

    speedBox.FocusLost:Connect(function()
        local speed = tonumber(speedBox.Text)
        if speed then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
        end
    end)

    local jumpPower = Instance.new("TextLabel")
    jumpPower.Size = UDim2.new(1, 0, 0, 50)
    jumpPower.Position = UDim2.new(0, 0, 0, 152)
    jumpPower.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    jumpPower.TextColor3 = Color3.fromRGB(255, 255, 255)
    jumpPower.Text = "Jump Power"
    jumpPower.TextSize = 20
    jumpPower.Font = Enum.Font.SourceSans
    jumpPower.Parent = frame

    local jumpBox = Instance.new("TextBox")
    jumpBox.Size = UDim2.new(0.7, 0, 0, 50)
    jumpBox.Position = UDim2.new(0, 0, 0, 202)
    jumpBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    jumpBox.TextColor3 = Color3.fromRGB(0, 0, 0)
    jumpBox.Text = ""
    jumpBox.PlaceholderText = "Enter Jump Power"
    jumpBox.Font = Enum.Font.SourceSans
    jumpBox.Parent = frame

    local jumpReset = Instance.new("TextButton")
    jumpReset.Size = UDim2.new(0.3, 0, 0, 50)
    jumpReset.Position = UDim2.new(0.7, 0, 0, 202)
    jumpReset.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    jumpReset.TextColor3 = Color3.fromRGB(0, 0, 0)
    jumpReset.Text = "Reset"
    jumpReset.Font = Enum.Font.SourceSans
    jumpReset.Parent = frame

    jumpReset.MouseButton1Click:Connect(function()
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    end)

    jumpBox.FocusLost:Connect(function()
        local jump = tonumber(jumpBox.Text)
        if jump then
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = jump
        end
    end)

    local gravity = Instance.new("TextLabel")
    gravity.Size = UDim2.new(1, 0, 0, 50)
    gravity.Position = UDim2.new(0, 0, 0, 252)
    gravity.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    gravity.TextColor3 = Color3.fromRGB(255, 255, 255)
    gravity.Text = "Set Gravity"
    gravity.TextSize = 20
    gravity.Font = Enum.Font.SourceSans
    gravity.Parent = frame

    local gravityBox = Instance.new("TextBox")
    gravityBox.Size = UDim2.new(0.7, 0, 0, 50)
    gravityBox.Position = UDim2.new(0, 0, 0, 302)
    gravityBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    gravityBox.TextColor3 = Color3.fromRGB(0, 0, 0)
    gravityBox.Text = ""
    gravityBox.PlaceholderText = "Enter Gravity"
    gravityBox.Font = Enum.Font.SourceSans
    gravityBox.Parent = frame

    local gravityReset = Instance.new("TextButton")
    gravityReset.Size = UDim2.new(0.3, 0, 0, 50)
    gravityReset.Position = UDim2.new(0.7, 0, 0, 302)
    gravityReset.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    gravityReset.TextColor3 = Color3.fromRGB(0, 0, 0)
    gravityReset.Text = "Reset"
    gravityReset.Font = Enum.Font.SourceSans
    gravityReset.Parent = frame

    gravityReset.MouseButton1Click:Connect(function()
        game.Workspace.Gravity = 196.2
    end)

    gravityBox.FocusLost:Connect(function()
        local grav = tonumber(gravityBox.Text)
        if grav then
            game.Workspace.Gravity = grav
        end
    end)

    local sitOnHead = Instance.new("TextLabel")
    sitOnHead.Size = UDim2.new(1, 0, 0, 50)
    sitOnHead.Position = UDim2.new(0, 0, 0, 352)
    sitOnHead.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    sitOnHead.TextColor3 = Color3.fromRGB(255, 255, 255)
    sitOnHead.Text = "Sit On Player Head"
    sitOnHead.TextSize = 20
    sitOnHead.Font = Enum.Font.SourceSans
    sitOnHead.Parent = frame

    local sitBox = Instance.new("TextBox")
    sitBox.Size = UDim2.new(0.7, 0, 0, 50)
    sitBox.Position = UDim2.new(0, 0, 0, 402)
    sitBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    sitBox.TextColor3 = Color3.fromRGB(0, 0, 0)
    sitBox.Text = ""
    sitBox.PlaceholderText = "Enter Player Name"
    sitBox.Font = Enum.Font.SourceSans
    sitBox.Parent = frame

    local sitReset = Instance.new("TextButton")
    sitReset.Size = UDim2.new(0.3, 0, 0, 50)
    sitReset.Position = UDim2.new(0.7, 0, 0, 402)
    sitReset.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    sitReset.TextColor3 = Color3.fromRGB(0, 0, 0)
    sitReset.Text = "Reset"
    sitReset.Font = Enum.Font.SourceSans
    sitReset.Parent = frame

    sitReset.MouseButton1Click:Connect(function()
        game.Players.LocalPlayer.Character.Humanoid.Sit = false
    end)

    sitBox.FocusLost:Connect(function()
        local player = game.Players:FindFirstChild(sitBox.Text)
        if player then
            local character = player.Character
            if character then
                local head = character:FindFirstChild("Head")
                if head then
                    game.Players.LocalPlayer.Character.Humanoid.Sit = true
                    game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(head.CFrame)
                end
            end
        end
    end)

    local infiniteJump = Instance.new("TextButton")
    infiniteJump.Size = UDim2.new(1, 0, 0, 50)
    infiniteJump.Position = UDim2.new(0, 0, 0, 452)
    infiniteJump.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    infiniteJump.TextColor3 = Color3.fromRGB(0, 0, 0)
    infiniteJump.Text = "Disabled"
    infiniteJump.Font = Enum.Font.SourceSans
    infiniteJump.Parent = frame

    local jumpEnabled = false

    infiniteJump.MouseButton1Click:Connect(function()
        jumpEnabled = not jumpEnabled
        if jumpEnabled then
            infiniteJump.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
            infiniteJump.Text = "Enabled"
        else
            infiniteJump.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
            infiniteJump.Text = "Disabled"
        end
    end)

    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50

    game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("JumpPower"):Connect(function()
        if jumpEnabled then
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
        end
    end)

    local tpToPlayer = Instance.new("TextLabel")
    tpToPlayer.Size = UDim2.new(1, 0, 0, 50)
    tpToPlayer.Position = UDim2.new(0, 0, 0, 502)
    tpToPlayer.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    tpToPlayer.TextColor3 = Color3.fromRGB(255, 255, 255)
    tpToPlayer.Text = "TP To Player"
    tpToPlayer.TextSize = 20
    tpToPlayer.Font = Enum.Font.SourceSans
    tpToPlayer.Parent = frame

    local tpBox = Instance.new("TextBox")
    tpBox.Size = UDim2.new(1, 0, 0, 50)
    tpBox.Position = UDim2.new(0, 0, 0, 552)
    tpBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tpBox.TextColor3 = Color3.fromRGB(0, 0, 0)
    tpBox.Text = ""
    tpBox.PlaceholderText = "Enter Player Name"
    tpBox.Font = Enum.Font.SourceSans
    tpBox.Parent = frame

    tpBox.FocusLost:Connect(function()
        local player = game.Players:FindFirstChild(tpBox.Text)
        if player then
            local character = player.Character
            if character then
                game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(character.PrimaryPart.CFrame)
            end
        end
    end)

    local flingPlayer = Instance.new("TextLabel")
    flingPlayer.Size = UDim2.new(1, 0, 0, 50)
    flingPlayer.Position = UDim2.new(0, 0, 0, 602)
    flingPlayer.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    flingPlayer.TextColor3 = Color3.fromRGB(255, 255, 25
