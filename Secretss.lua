-- NEW LIBRARY 
local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()
local window = DrRayLibrary:Load("Burgerland", "Default")
local Maintab = DrRayLibrary.newTab("Кухня", "ImageIdHere")
local Misctab = DrRayLibrary.newTab("Другое", "ImageIdHere")
local Deliverytab = DrRayLibrary.newTab("Доставка", "ImageIdHere")

Maintab.newToggle("Воппер x4", "Делает x4 Воппера одновременно! Работает только если вы Повар", false, function(toggleState)
    getgenv().Voper = toggleState
    if toggleState then
        VoperMake()
    else 
        wait(1)
    end
end)

Maintab.newButton("Приготовить x4 Котлеты ", "Работает только если вы Повар", function()
    StakeMake()
end)

Maintab.newToggle("Очистка подачи", "Работает только если вы Сборщик", false, function(toggleState)
    getgenv().Cleart = toggleState
    if toggleState then
        ClearTable()
    else 
        wait(1)
    end
end)

Maintab.newButton("Получить роль Повара", "+_+", function()
    wait(0.2)
    local args = {
        [1] = "Kitchen"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Roles"):WaitForChild("InternalEvents"):WaitForChild("TpToRole"):FireServer(unpack(args))
end)

Misctab.newButton("Восстановление Энергии", "Телепортирует к Горкам", function()
    local VirtualInputManager = game:GetService("VirtualInputManager")
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").CartTrack.ScriptParts.PromptPart.CFrame
    repeat
        wait(0.2)
        VirtualInputManager:SendKeyEvent(true, "E", false, game)
    until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Sit == true
end)

Misctab.newButton("Отключение Задержки Действий", "Очень крутая, но необратимая функция ", function()
    for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
        if v:IsA("ProximityPrompt") then
            v["HoldDuration"] = 0
        end
    end
    
    
    game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(v)
        v["HoldDuration"] = 0
    end)
end)

Deliverytab.newToggle("Сбор Булочек", "Работает только если вы Доставщик", false, function(toggleState)
    getgenv().Bun = toggleState
    local energe = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Currency.Energy.TextLabel
    local VirtualInputManager = game:GetService("VirtualInputManager")
    if toggleState then
        while getgenv().Bun do
            if energe.Text == "0/30" or energe.Text == "1/30" or energe.Text == "2/30" or energe.Text == "3/30" or energe.Text == "4/30" or energe.Text == "0/40" or energe.Text == "1/40" or energe.Text == "2/40" or energe.Text == "3/40" or energe.Text == "4/40" then 
                wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").CartTrack.ScriptParts.PromptPart.CFrame
                repeat
                    wait(0.2)
                    VirtualInputManager:SendKeyEvent(true, "E", false, game)
                until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Sit == true
                repeat
                    wait(3)
                until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Sit == false
            else
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Supply.GenerationPrompts.Bun.CFrame + Vector3.new(3,5,9)
                wait(0.5)
                VirtualInputManager:SendKeyEvent(true, "E", false, game)
                wait(.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Supply.GenerationPrompts.Bun.Spawnpoint.CFrame + Vector3.new(0,-14,0)
                wait(1.8)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1628.72864, 387.527679, 1147.60547, 0.99978435, -5.05287652e-08, -0.0207671076, 5.07759381e-08, 1, 1.13748051e-08, 0.0207671076, -1.24268213e-08, 0.99978435) + Vector3.new(0,10,0)
                wait(1)
            end
        end
    end
end)
Deliverytab.newToggle("Сбор Салата", "Работает только если вы Доставщик", false, function(toggleState)
    getgenv().Lettuce = toggleState
    local energe = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Currency.Energy.TextLabel
    local VirtualInputManager = game:GetService("VirtualInputManager")
    if toggleState then
        while getgenv().Lettuce do
            if energe.Text == "0/30" or energe.Text == "1/30" or energe.Text == "2/30" or energe.Text == "3/30" or energe.Text == "4/30" or energe.Text == "0/40" or energe.Text == "1/40" or energe.Text == "2/40" or energe.Text == "3/40" or energe.Text == "4/40" then 
                wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").CartTrack.ScriptParts.PromptPart.CFrame
                repeat
                    wait(0.2)
                    VirtualInputManager:SendKeyEvent(true, "E", false, game)
                until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Sit == true
                repeat
                    wait(3)
                until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Sit == false
            else
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Supply.GenerationPrompts.Lettuce.CFrame + Vector3.new(3,5,9)
                wait(0.5)
                VirtualInputManager:SendKeyEvent(true, "E", false, game)
                wait(.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Supply.GenerationPrompts.Lettuce.Spawnpoint.CFrame + Vector3.new(0,-14,0)
                wait(1.8)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1628.72864, 387.527679, 1147.60547, 0.99978435, -5.05287652e-08, -0.0207671076, 5.07759381e-08, 1, 1.13748051e-08, 0.0207671076, -1.24268213e-08, 0.99978435) + Vector3.new(0,10,0)
                wait(1)
            end
        end
    end
end)
Deliverytab.newToggle("Сбор Помидора", "Работает только если вы Доставщик", false, function(toggleState)
    getgenv().Tomato = toggleState
    local energe = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Currency.Energy.TextLabel
    local VirtualInputManager = game:GetService("VirtualInputManager")
    if toggleState then
        while getgenv().Tomato do
            if energe.Text == "0/30" or energe.Text == "1/30" or energe.Text == "2/30" or energe.Text == "3/30" or energe.Text == "4/30" or energe.Text == "0/40" or energe.Text == "1/40" or energe.Text == "2/40" or energe.Text == "3/40" or energe.Text == "4/40" then 
                wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").CartTrack.ScriptParts.PromptPart.CFrame
                repeat
                    wait(0.2)
                    VirtualInputManager:SendKeyEvent(true, "E", false, game)
                until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Sit == true
                repeat
                    wait(3)
                until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Sit == false
            else
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Supply.GenerationPrompts.Tomato.CFrame + Vector3.new(3,5,9)
                wait(0.5)
                VirtualInputManager:SendKeyEvent(true, "E", false, game)
                wait(.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Supply.GenerationPrompts.Tomato.Spawnpoint.CFrame + Vector3.new(0,-14,0)
                wait(1.8)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1628.72864, 387.527679, 1147.60547, 0.99978435, -5.05287652e-08, -0.0207671076, 5.07759381e-08, 1, 1.13748051e-08, 0.0207671076, -1.24268213e-08, 0.99978435) + Vector3.new(0,10,0)
                wait(1)
            end
        end
    end
end)
Deliverytab.newToggle("Сбор Лука", "Работает только если вы Доставщик", false, function(toggleState)
    getgenv().Onion = toggleState
    local energe = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Currency.Energy.TextLabel
    local VirtualInputManager = game:GetService("VirtualInputManager")
    if toggleState then
        while getgenv().Onion do
            if energe.Text == "0/30" or energe.Text == "1/30" or energe.Text == "2/30" or energe.Text == "3/30" or energe.Text == "4/30" or energe.Text == "0/40" or energe.Text == "1/40" or energe.Text == "2/40" or energe.Text == "3/40" or energe.Text == "4/40" then 
                wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").CartTrack.ScriptParts.PromptPart.CFrame
                repeat
                    wait(0.2)
                    VirtualInputManager:SendKeyEvent(true, "E", false, game)
                until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Sit == true
                repeat
                    wait(3)
                until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Sit == false
            else
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Supply.GenerationPrompts.Onion.CFrame + Vector3.new(3,5,9)
                wait(0.5)
                VirtualInputManager:SendKeyEvent(true, "E", false, game)
                wait(.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Supply.GenerationPrompts.Onion.Spawnpoint.CFrame + Vector3.new(0,-14,0)
                wait(1.8)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1628.72864, 387.527679, 1147.60547, 0.99978435, -5.05287652e-08, -0.0207671076, 5.07759381e-08, 1, 1.13748051e-08, 0.0207671076, -1.24268213e-08, 0.99978435) + Vector3.new(0,10,0)
                wait(1)
            end
        end
    end
end)
Deliverytab.newToggle("Сбор Огурца", "Работает только если вы Доставщик", false, function(toggleState)
    getgenv().Pickle = toggleState
    local energe = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Currency.Energy.TextLabel
    local VirtualInputManager = game:GetService("VirtualInputManager")
    if toggleState then
        while getgenv().Pickle do
            if energe.Text == "0/30" or energe.Text == "1/30" or energe.Text == "2/30" or energe.Text == "3/30" or energe.Text == "4/30" or energe.Text == "0/40" or energe.Text == "1/40" or energe.Text == "2/40" or energe.Text == "3/40" or energe.Text == "4/40" then 
                wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").CartTrack.ScriptParts.PromptPart.CFrame
                repeat
                    wait(0.2)
                    VirtualInputManager:SendKeyEvent(true, "E", false, game)
                until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Sit == true
                repeat
                    wait(3)
                until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Sit == false
            else
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Supply.GenerationPrompts.Pickle.CFrame + Vector3.new(3,5,9)
                wait(0.5)
                VirtualInputManager:SendKeyEvent(true, "E", false, game)
                wait(.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Supply.GenerationPrompts.Pickle.Spawnpoint.CFrame + Vector3.new(0,-14,0)
                wait(1.8)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1628.72864, 387.527679, 1147.60547, 0.99978435, -5.05287652e-08, -0.0207671076, 5.07759381e-08, 1, 1.13748051e-08, 0.0207671076, -1.24268213e-08, 0.99978435) + Vector3.new(0,10,0)
                wait(1)
            end
        end
    end
end)
Deliverytab.newToggle("Сбор Сыра", "Работает только если вы Доставщик", false, function(toggleState)
    getgenv().Cheese = toggleState
    local energe = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Currency.Energy.TextLabel
    local VirtualInputManager = game:GetService("VirtualInputManager")
    if toggleState then
        while getgenv().Cheese do
            if energe.Text == "0/30" or energe.Text == "1/30" or energe.Text == "2/30" or energe.Text == "3/30" or energe.Text == "4/30" or energe.Text == "0/40" or energe.Text == "1/40" or energe.Text == "2/40" or energe.Text == "3/40" or energe.Text == "4/40" then 
                wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").CartTrack.ScriptParts.PromptPart.CFrame
                repeat
                    wait(0.2)
                    VirtualInputManager:SendKeyEvent(true, "E", false, game)
                until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Sit == true
                repeat
                    wait(3)
                until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Sit == false
            else
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Supply.GenerationPrompts.Cheese.CFrame + Vector3.new(3,5,9)
                wait(0.5)
                VirtualInputManager:SendKeyEvent(true, "E", false, game)
                wait(.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Supply.GenerationPrompts.Cheese.Spawnpoint.CFrame + Vector3.new(0,-14,0)
                wait(1.8)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1628.72864, 387.527679, 1147.60547, 0.99978435, -5.05287652e-08, -0.0207671076, 5.07759381e-08, 1, 1.13748051e-08, 0.0207671076, -1.24268213e-08, 0.99978435) + Vector3.new(0,10,0)
                wait(1)
            end
        end
    end
end)
Deliverytab.newToggle("Сбор Котлет", "Работает только если вы Доставщик", false, function(toggleState)
    getgenv().Patty = toggleState
    local energe = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Currency.Energy.TextLabel
    local VirtualInputManager = game:GetService("VirtualInputManager")
    if toggleState then
        while getgenv().Patty do
            if energe.Text == "0/30" or energe.Text == "1/30" or energe.Text == "2/30" or energe.Text == "3/30" or energe.Text == "4/30" or energe.Text == "0/40" or energe.Text == "1/40" or energe.Text == "2/40" or energe.Text == "3/40" or energe.Text == "4/40" then 
                wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").CartTrack.ScriptParts.PromptPart.CFrame
                repeat
                    wait(0.2)
                    VirtualInputManager:SendKeyEvent(true, "E", false, game)
                until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Sit == true
                repeat
                    wait(3)
                until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Sit == false
            else
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Supply.GenerationPrompts.Patty.CFrame + Vector3.new(3,5,9)
                wait(0.5)
                VirtualInputManager:SendKeyEvent(true, "E", false, game)
                wait(.2)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Supply.GenerationPrompts.Patty.Spawnpoint.CFrame + Vector3.new(0,-14,0)
                wait(1.8)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1628.72864, 387.527679, 1147.60547, 0.99978435, -5.05287652e-08, -0.0207671076, 5.07759381e-08, 1, 1.13748051e-08, 0.0207671076, -1.24268213e-08, 0.99978435) + Vector3.new(0,10,0)
                wait(1)
            end
        end
    end
end)






function VoperMake()
    spawn(function()
        while getgenv().Voper do
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("OvenPattyA1"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("RawPatty")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(.2)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("OvenPattyA2"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("RawPatty")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(.2)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("OvenPattyB1"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("RawPatty")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(.2)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("OvenPattyB2"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("RawPatty")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(.2)
            -- КОТЛЕТЫ НА ГРИЛЬ +
            
            -- БУЛОЧКИ НИЖНИИ -
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("BurgerB"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("Bun")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(.4)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("BurgerA"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("Bun")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(.4)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("BurgerG"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("Bun")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(.4)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("BurgerF"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("Bun")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(.4)
            -- БУЛОЧКИ НИЖНИИ +
            
            -- КОТЛЕТЫ НА БУЛОЧКИ - 
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("OvenPattyA1"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("BurgerB")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("CombineObjects"):FireServer(unpack(args))
            task.wait(1.2)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("OvenPattyA2"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("BurgerA")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("CombineObjects"):FireServer(unpack(args))
            task.wait(1.2)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("OvenPattyB1"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("BurgerG")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("CombineObjects"):FireServer(unpack(args))
            task.wait(1.2)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("OvenPattyB2"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("BurgerF")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("CombineObjects"):FireServer(unpack(args))
            task.wait(1.2)
            -- КОТЛЕТЫ НА БУЛОЧКИ - 
            
            -- ОПЯТЬ КОТЛЕТЫ -
            
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("OvenPattyA1"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("RawPatty")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(.2)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("OvenPattyA2"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("RawPatty")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(.2)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("OvenPattyB1"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("RawPatty")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(.2)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("OvenPattyB2"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("RawPatty")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(.4)
            -- ОПЯТЬ КОТЛЕТЫ +
            
            -- ОГУРЧИК --
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("BurgerB"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("Pickle")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(.2)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("BurgerA"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("Pickle")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(.2)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("BurgerG"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("Pickle")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(.2)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("BurgerF"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("Pickle")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(.4)
            -- ОГУРЧИК +
            
            -- КЕТЧУП - 
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("BurgerB"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("Ketchup")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(.2)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("BurgerA"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("Ketchup")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(.2)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("BurgerG"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("Ketchup")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(.2)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("BurgerF"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("Ketchup")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(.4)
            -- КЕТЧУП +
            
            -- ЛУК - 
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("BurgerB"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("Onion")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(.2)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("BurgerA"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("Onion")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(.2)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("BurgerG"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("Onion")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(.2)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("BurgerF"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("Onion")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(.2)
            -- ЛУК +
            
            -- ПОМИДОР -
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("BurgerB"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("Tomato")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(.2)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("BurgerA"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("Tomato")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(.2)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("BurgerG"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("Tomato")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(.2)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("BurgerF"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("Tomato")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(.2)
            -- ПОМИДОР +
            
            -- ЛУТУСЬ
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("BurgerB"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("Lettuce")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(.2)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("BurgerA"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("Lettuce")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(.2)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("BurgerG"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("Lettuce")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(.2)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("BurgerF"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("Lettuce")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(.4)
            -- ЛУТУСЬ +
            
            -- МАЙОНЕЗ
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("BurgerB"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("Mayonaise")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(.2)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("BurgerA"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("Mayonaise")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(.2)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("BurgerG"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("Mayonaise")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(.2)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("BurgerF"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("Mayonaise")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(1)
            -- МАЙОНЕЗ +
            
            -- БУЛОЧКА
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("BurgerB"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("Bun")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(1)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("BurgerA"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("Bun")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(1)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("BurgerG"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("Bun")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            task.wait(1)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("BurgerF"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("Bun")
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
            wait(3)
        end
    end)
end


function StakeMake()
    spawn(function()
        local args = {
            [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("OvenPattyA1"),
            [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("RawPatty")
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
        task.wait(.2)
        local args = {
            [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("OvenPattyA2"),
            [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("RawPatty")
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
        task.wait(.2)
        local args = {
            [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("OvenPattyB1"),
            [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("RawPatty")
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
        task.wait(.2)
        local args = {
            [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("OvenPattyB2"),
            [2] = workspace:WaitForChild("Kitchen"):WaitForChild("IngredientCreators"):WaitForChild("RawPatty")
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("AddIngredient"):FireServer(unpack(args))
        task.wait(.2)
    end)
end

function ClearTable()
    spawn(function()
        while getgenv().Cleart do
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("TransitionJ"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("DisposalB")
            }
            wait(.5)
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("CombineObjects"):FireServer(unpack(args))
        
            wait(.5)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("TransitionT"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("DisposalB")
            }
        
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("CombineObjects"):FireServer(unpack(args))
        
            wait(.5)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("TransitionI"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("DisposalB")
            }
        
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("CombineObjects"):FireServer(unpack(args))
        
            wait(.5)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("TransitionS"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("DisposalB")
            }
        
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("CombineObjects"):FireServer(unpack(args))
        end
    end)
end
