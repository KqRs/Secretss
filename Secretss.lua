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

Misctab.newButton("TP", "SUPPLY", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1980.80334, 111.89325, 2015.25854, -0.986074865, -1.96702814e-08, 0.166301906, -1.1049198e-08, 1, 5.27651451e-08, -0.166301906, 5.0192881e-08, -0.986074865)
end)

Deliverytab.newButton("ПОЛУЧИТЬ РАКЕТУ", "ДА", function()
    GetRocket()
end)

Deliverytab.newToggle("Сбор Булочек", "Работает только если вы Доставщик", false, function(toggleState)
    getgenv().Bun = toggleState
    local energe = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Currency.Energy.TextLabel
    local VirtualInputManager = game:GetService("VirtualInputManager")
    if toggleState then
        while getgenv().Bun do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Supply.GenerationPrompts.Bun.CFrame + Vector3.new(3,0,9)
            wait(0.6)
            VirtualInputManager:SendKeyEvent(true, "E", false, game)
            wait(0.1)
            VirtualInputManager:SendKeyEvent(true, "E", false, game)
            wait(0.4)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2055.59521, 112.59124, 2047.5752, -0.947956324, -3.48592515e-08, -0.318400383, -9.86109061e-09, 1, -8.01235487e-08, 0.318400383, -7.28138474e-08, -0.947956324)
            wait(1.4)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1628.72864, 387.527679, 1147.60547, 0.99978435, -5.05287652e-08, -0.0207671076, 5.07759381e-08, 1, 1.13748051e-08, 0.0207671076, -1.24268213e-08, 0.99978435) + Vector3.new(0,6,0)
            wait(0.7)
        end
    end
end)
Deliverytab.newToggle("Сбор Салата", "Работает только если вы Доставщик", false, function(toggleState)
    getgenv().Lettuce = toggleState
    local energe = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Currency.Energy.TextLabel
    local VirtualInputManager = game:GetService("VirtualInputManager")
    if toggleState then
        while getgenv().Lettuce do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Supply.GenerationPrompts.Lettuce.CFrame + Vector3.new(3,0,9)
            wait(0.6)
            VirtualInputManager:SendKeyEvent(true, "E", false, game)
            wait(0.1)
            VirtualInputManager:SendKeyEvent(true, "E", false, game)
            wait(0.4)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2035.70288, 112.689873, 2054.99292, -0.949388742, -3.74417652e-08, -0.314103484, -9.28101596e-09, 1, -9.11498148e-08, 0.314103484, -8.36214085e-08, -0.949388742)
            wait(1.4)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1628.72864, 387.527679, 1147.60547, 0.99978435, -5.05287652e-08, -0.0207671076, 5.07759381e-08, 1, 1.13748051e-08, 0.0207671076, -1.24268213e-08, 0.99978435) + Vector3.new(0,10,0)
            wait(0.7)
        end
    end
end)
Deliverytab.newToggle("Сбор Помидора", "Работает только если вы Доставщик", false, function(toggleState)
    getgenv().Tomato = toggleState
    local energe = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Currency.Energy.TextLabel
    local VirtualInputManager = game:GetService("VirtualInputManager")
    if toggleState then
        while getgenv().Tomato do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Supply.GenerationPrompts.Tomato.CFrame + Vector3.new(3,0,9)
            wait(0.6)
            VirtualInputManager:SendKeyEvent(true, "E", false, game)
            wait(0.1)
            VirtualInputManager:SendKeyEvent(true, "E", false, game)
            wait(0.4)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2015.69568, 112.795868, 2061.57886, -0.947974741, 3.37611681e-08, -0.318345606, 1.20004318e-08, 1, 7.0316851e-08, 0.318345606, 6.28383106e-08, -0.947974741)
            wait(1.4)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1628.72864, 387.527679, 1147.60547, 0.99978435, -5.05287652e-08, -0.0207671076, 5.07759381e-08, 1, 1.13748051e-08, 0.0207671076, -1.24268213e-08, 0.99978435) + Vector3.new(0,10,0)
            wait(0.7)
        end
    end
end)
Deliverytab.newToggle("Сбор Лука", "Работает только если вы Доставщик", false, function(toggleState)
    getgenv().Onion = toggleState
    local energe = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Currency.Energy.TextLabel
    local VirtualInputManager = game:GetService("VirtualInputManager")
    if toggleState then
        while getgenv().Onion do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Supply.GenerationPrompts.Onion.CFrame + Vector3.new(3,0,9)
            wait(0.6)
            VirtualInputManager:SendKeyEvent(true, "E", false, game)
            wait(0.1)
            VirtualInputManager:SendKeyEvent(true, "E", false, game)
            wait(0.4)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1994.83069, 112.883392, 2068.69531, -0.953961372, 4.19368895e-09, -0.29992947, 3.55305174e-10, 1, 1.28521602e-08, 0.29992947, 1.21538974e-08, -0.953961372)
            wait(1.4)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1628.72864, 387.527679, 1147.60547, 0.99978435, -5.05287652e-08, -0.0207671076, 5.07759381e-08, 1, 1.13748051e-08, 0.0207671076, -1.24268213e-08, 0.99978435) + Vector3.new(0,10,0)
            wait(0.7)
        end
    end
end)
Deliverytab.newToggle("Сбор Огурца", "Работает только если вы Доставщик", false, function(toggleState)
    getgenv().Pickle = toggleState
    local energe = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Currency.Energy.TextLabel
    local VirtualInputManager = game:GetService("VirtualInputManager")
    if toggleState then
        while getgenv().Pickle do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Supply.GenerationPrompts.Pickle.CFrame + Vector3.new(3,0,9)
            wait(0.6)
            VirtualInputManager:SendKeyEvent(true, "E", false, game)
            wait(0.4)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1974.90491, 113.007843, 2076.0061, -0.937414944, 1.45005785e-08, -0.348214269, 4.80522733e-09, 1, 2.87067117e-08, 0.348214269, 2.52368526e-08, -0.937414944)
            wait(1.4)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1628.72864, 387.527679, 1147.60547, 0.99978435, -5.05287652e-08, -0.0207671076, 5.07759381e-08, 1, 1.13748051e-08, 0.0207671076, -1.24268213e-08, 0.99978435) + Vector3.new(0,10,0)
            wait(0.7)
        end
    end
end)
Deliverytab.newToggle("Сбор Сыра", "Работает только если вы Доставщик", false, function(toggleState)
    getgenv().Cheese = toggleState
    local energe = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Currency.Energy.TextLabel
    local VirtualInputManager = game:GetService("VirtualInputManager")
    if toggleState then
        while getgenv().Cheese do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Supply.GenerationPrompts.Cheese.CFrame + Vector3.new(3,0,9)
            wait(0.6)
            VirtualInputManager:SendKeyEvent(true, "E", false, game)
            wait(0.1)
            VirtualInputManager:SendKeyEvent(true, "E", false, game)
            wait(0.4)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1955.31152, 113.081619, 2084.10791, -0.947274864, -2.5139606e-08, -0.320422083, -4.35198499e-09, 1, -6.55918555e-08, 0.320422083, -6.07390405e-08, -0.947274864)
            wait(1.4)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1628.72864, 387.527679, 1147.60547, 0.99978435, -5.05287652e-08, -0.0207671076, 5.07759381e-08, 1, 1.13748051e-08, 0.0207671076, -1.24268213e-08, 0.99978435) + Vector3.new(0,10,0)
            wait(0.7)
        end
    end
end)
Deliverytab.newToggle("Сбор Котлет", "Работает только если вы Доставщик", false, function(toggleState)
    getgenv().Patty = toggleState
    local energe = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Currency.Energy.TextLabel
    local VirtualInputManager = game:GetService("VirtualInputManager")
    if toggleState then
        while getgenv().Patty do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Supply.GenerationPrompts.Patty.CFrame + Vector3.new(3,0,9)
            wait(0.6)
            VirtualInputManager:SendKeyEvent(true, "E", false, game)
            wait(0.1)
            VirtualInputManager:SendKeyEvent(true, "E", false, game)
            wait(0.4)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1934.93079, 113.168205, 2090.54492, -0.945509732, 2.90418054e-08, -0.325593889, 6.1233405e-09, 1, 7.14145116e-08, 0.325593889, 6.55293917e-08, -0.945509732)
            wait(1.4)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1628.72864, 387.527679, 1147.60547, 0.99978435, -5.05287652e-08, -0.0207671076, 5.07759381e-08, 1, 1.13748051e-08, 0.0207671076, -1.24268213e-08, 0.99978435) + Vector3.new(0,10,0)
            wait(0.7)
        end
    end
end)

function Holding()
    for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
        if v:IsA("ProximityPrompt") then
            v["HoldDuration"] = 0
        end
    end
    
    
    game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(v)
        v["HoldDuration"] = 0
    end)
end
Holding()

function GetRocket()
    local VirtualInputManager = game:GetService("VirtualInputManager")
    wait(0.5)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").RuntimeTemp.SupplyRockets.CargoRocket.ExitPart.CFrame
    wait(0.1)
    VirtualInputManager:SendKeyEvent(true, "E", false, game)
    VirtualInputManager:SendKeyEvent(true, "E", false, game)
    VirtualInputManager:SendKeyEvent(true, "E", false, game)
    VirtualInputManager:SendKeyEvent(true, "E", false, game)
    VirtualInputManager:SendKeyEvent(true, "E", false, game)
    wait(2)
    VirtualInputManager:SendKeyEvent(true, "S", false, game)
    wait(0.5)
    VirtualInputManager:SendKeyEvent(false, "S", false, game)
    wait(3)
    VirtualInputManager:SendKeyEvent(true, "E", false, game)
    VirtualInputManager:SendKeyEvent(true, "E", false, game)
    VirtualInputManager:SendKeyEvent(true, "E", false, game)
    VirtualInputManager:SendKeyEvent(true, "E", false, game)
    VirtualInputManager:SendKeyEvent(true, "E", false, game)
end



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
            wait(1)
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("CombineObjects"):FireServer(unpack(args))
        
            wait(1)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("TransitionT"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("DisposalB")
            }
        
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("CombineObjects"):FireServer(unpack(args))
        
            wait(1)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("TransitionI"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("DisposalB")
            }
        
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("CombineObjects"):FireServer(unpack(args))
        
            wait(1)
            local args = {
                [1] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("TransitionS"),
                [2] = workspace:WaitForChild("Kitchen"):WaitForChild("KitchenObjects"):WaitForChild("DisposalB")
            }
        
            game:GetService("ReplicatedStorage"):WaitForChild("Kitchen"):WaitForChild("Events"):WaitForChild("CombineObjects"):FireServer(unpack(args))
            wait(1)
        end
    end)
end
