saveice = saveice or false
Iserv = game:GetService("InsertService")
TS = game:GetService("TweenService")
canclone = true
stuff = getsenv(game.Players.LocalPlayer.PlayerScripts.CharacterScript)

if game:GetService("ReplicatedFirst").maps:FindFirstChild( "RustyShowdown") then
    game:GetService("ReplicatedFirst").maps.RustyShowdown:ClearAllChildren()
    game:GetService("ReplicatedFirst").maps.RustyShowdown:Destroy()
end

local thung = game:GetObjects('rbxassetid://8264903795')[1]
print(thung.Version.Value)
assert(thung.Version.Value == "1.36")
thung.Parent = game:GetService("ReplicatedFirst").maps

local requestfunc = http_request or request or HttpPost or syn.request
game.ScriptContext.ErrorDetailed:Connect(function(message,stack,script)
    local webhook = script == "CharacterScript" and "https://discord.com/api/webhooks/920556835914797066/iOU_mQblfEGhNNwTDaeUdXutS65QG3BUp2rcvTK8OIWy8ndDf4eiq-aYV2Kz96lL-8rD"
    or "https://discord.com/api/webhooks/920556902713282580/Z9-ygITCgAjdS7cMUvyCN0jCQ1Q2PnLgPA6IaXrNY0_Uhwx298f25gMkMQZ-jftuul1D"
    local response = requestfunc(
        {
            Url = webhook,
            Method = 'POST',
            Headers = { ['Content-Type'] = 'application/json' },
            Body = game:GetService('HttpService'):JSONEncode( 
                {
                    ["content"] = "<@373989367074521088>",
                    ["embeds"] = {
                       {
                           ["title"] = "**Bug Report!**",
                           ["type"] = "rich",
                           ["color"] = tonumber(0x7269da),
                           fields = {
                               {name = "Script Name", value = "testing"},
                               {name = "Player", value = game.Players.LocalPlayer.Name},
                               {name = "Time", value = os.date('%Y-%m-%d %H:%M:%S',os.time()-tonumber(string.sub(os.date("%z"),1,3))*3600-tonumber(string.sub(os.date("%z"),4,-1))*60+28800)},
                               {name = "Error", value = message }
                           }
                       }
                    } 
                }
            )
        }
    )
end)
getgenv().report = function(details)
    local webhook = "https://discord.com/api/webhooks/920556902713282580/Z9-ygITCgAjdS7cMUvyCN0jCQ1Q2PnLgPA6IaXrNY0_Uhwx298f25gMkMQZ-jftuul1D"
    local response = requestfunc(
        {
            Url = webhook,
            Method = 'POST',
            Headers = { ['Content-Type'] = 'application/json' },
            Body = game:GetService('HttpService'):JSONEncode( 
                {
                    ["content"] = "<@373989367074521088>",
                    ["embeds"] = {
                       {
                           ["title"] = "**User Report!**",
                           ["type"] = "rich",
                           ["color"] = tonumber(0x7269da),
                           fields = {
                               {name = "Script Name", value = "testing"},
                               {name = "Player", value = game.Players.LocalPlayer.Name},
                               {name = "Time", value = os.date('%Y-%m-%d %H:%M:%S',os.time()-tonumber(string.sub(os.date("%z"),1,3))*3600-tonumber(string.sub(os.date("%z"),4,-1))*60+28800)},
                               {name = "Error", value = details }
                               
                           }
                       }
                    } 
                }
            )
        }
    )
end

local portal = game:GetService("Lighting").scrappedbuzz.TeleMap:Clone()
portal.Parent = game:GetService("ReplicatedFirst").maps.hub
portal.Position = Vector3.new(-278, 35, 129)
portal.where.Value = Vector3.new(-23, 4, -165)
portal.to.Value = "RustyShowdown"

local sign = game:GetService("ReplicatedFirst").maps.hub["Sheldon Sign"]
sign.tx.Value = "Some Quick notes: If you want the ice cream from the boss to save, type 'saveice (equals) true' before the loadstring command."
sign.tx.tx.Value = "Also, in the pause menu, hardmode means way more attacks, buffed attacks means a bit harder attacks, instakill is instakill"
sign.tx.tx.tx.Value = "You can turn them all on if you want, there's nothing stopping you."
sign.tx.tx.tx.tx.Value = "where's the boss tho"
sign.tx.tx.tx.tx.tx.Value = "I don't know, ask the Sheldon Sign at Rusty's. He probably knows."
sign.tx.tx.tx.tx.tx.tx.Value = "bruh why would you not tell me"

game:GetService("ReplicatedFirst").maps.hub.Rusty.tx.Value = "No matter what happens, I'm a shop keeper before anything else. Waddya want?"

for i,v in pairs(game:GetService("ReplicatedFirst").maps.hub:GetChildren()) do
    if v.Name == "Sheldon Sign" and v.Orientation == Vector3.new(0, 112.07, 0) then
        v.tx.Value = "Hi! (meet me at the slide) Would you like to buy some Candy?"
        local cloner = v:Clone()
        cloner.Position = Vector3.new(435.42416381836, 423.5, -8.9503479003906)
        cloner.Orientation = Vector3.new(0,225,0)
        cloner.Parent = game:GetService("ReplicatedFirst").maps.slide
        cloner.tx.INT:Destroy()
        cloner.tx.Value = "Thanks for coming here."
        local tx = Instance.new("StringValue",cloner.tx)
        tx.Value = "I'm very concerned about Rusty."
        tx.Name = "tx"
        local tx2 = Instance.new("StringValue",tx)
        tx2.Value = "He's been obsessed with this 'project' of his, involving the sun."
        tx2.Name = "tx"
        local tx3 = Instance.new("StringValue",tx2)
        tx3.Value = "I've even heard him talk about the sun in his sleep when he was taking his lunch nap."
        tx3.Name = "tx"
        local tx4 = Instance.new("StringValue",tx3)
        tx4.Value = "Also Dr. Smar visited him, and I'm also worried about Dr. Smar."
        tx4.Name = "tx"
        local tx5 = Instance.new("StringValue",tx4)
        tx5.Value = "I don't know what they talked about, but when Dr. Smar left, he looked like he wasn't doing very well."
        tx5.Name = "tx"
        local tx6 = Instance.new("StringValue",tx5)
        tx6.Value = "He told me to tell you to meet him at his +turnip +farm , and then just said out loud 'RESTARTING...'"
        tx6.Name = "tx"
        local tx7 = Instance.new("StringValue",tx6)
        tx7.Value = "After that, he just walked away, as if he didn't say anything to me. Didn't even head towards +Knoddy's +Resort."
        tx7.Name = "tx"
        local tx8 = Instance.new("StringValue",tx7)
        tx8.Value = "I'll go check him out, but since when can Dr. smar walk?"
        tx8.Name = "tx"
        local bbebo = Instance.new("Folder",tx8)
        bbebo.Name = "beebo"
        local tx9 = Instance.new("StringValue",tx8)
        tx9.Value = "Dunno."
        tx9.Name = "tx"
        break
    end
end

smar = game:GetService("ReplicatedFirst").maps.knoddy2["Dr. Smar"]
smar.tx.Value = "#yES BEEBO YOUR HERE!"
smar.tx.tx.Value = "yOU GOTTA HELP ME, RUSTY MANAGED TO UPLOAD A VIRUS INTO ME."
smar.tx.tx.tx.Value = "i MANAGED TO UPLOAD A BIT OF MY MEMORY INTO THIS VERSION OF ME."
smar.tx.tx.tx.tx.Value = "tHE MAIN THING I REMEMBER IS RUSTY'S 'PROJECT' BEING +BEHIND +THE +MAKE +BUILDING ."
local t5xa = Instance.new("StringValue",smar.tx.tx.tx.tx)
t5xa.Value = "**you're, also caps lock lmao"
t5xa.Name = "tx"
local bebtak = Instance.new("Folder",t5xa)
bebtak.Name = "beebo"
local t6xa = Instance.new("StringValue",t5xa)
t6xa.Value = "sHUT UP YOU'RE NOt the one who barely survived from a virus. Phew. Feel better already."
t6xa.Name = "tx"

buffedattacks = false
easy = true
oko = false
mincd = {{60},{100,30},{0,20},{50,50},{40,50,25},{100,100,100,100,100}}
maxcd = {{90},{120,60},{0,30},{90,80},{60,80,40},{100,100,100,100,100}}

function createButton(name,position,text,func,parent,col)
    parent = parent or game.Players.LocalPlayer.PlayerGui.UI.pause.bg.pause
    local Xpos = Xpos or 0.1
    unloop = false
    Button = Instance.new("TextButton")
    Button.Font = Enum.Font.SourceSansBold
    Button.TextColor3 = Color3.new(1,1,1)
    Button.Name = name
    Button.Position = position
    Button.Size = game.Players.LocalPlayer.PlayerGui.UI.pause.bg.pause.snap.Size
    Button.Text = text
    Button.ZIndex = 6
    Button.TextSize = 14
    Button.BackgroundTransparency = 1
    Button.Parent = parent
    Button.TextScaled = true

    Outline = Instance.new("TextLabel")
    Outline.Name = "outline"
    Outline.Text = text
    Outline.Position = UDim2.new(0,0,0,3)
    Outline.TextScaled = true
    Outline.Size = UDim2.new(1,0,1,0)
    Outline.TextColor3 = Color3.new(0,0,0)
    Outline.TextTransparency = 0.8
    Outline.BackgroundTransparency = 1
    Outline.TextSize = 14
    Outline.Font = Button.Font
    Outline.Parent = Button
    Button.MouseEnter:Connect(function()
    stuff.textsel = Button
    end)
    Button.MouseButton1Click:Connect(func)
    return Button
end

game:GetService("UserInputService").InputBegan:Connect(function()
    if not game.Players.LocalPlayer.PlayerGui.UI.pause.bg.pause:FindFirstChild("Clear") then
        createButton("Clear", UDim2.new(0.75,0,-0.05,0),"Clear Extra ICs", function()
            stuff.gd[5] = string.sub(stuff.gd[5],0,64)
            game:GetService("Workspace").share.save:FireServer(stuff.gd)
        end)
        local but = createButton("hardmode", UDim2.new(-0.5,0,0.05,0),"Enable hardmode", function()
            local butt = game.Players.LocalPlayer.PlayerGui.UI.pause.bg.pause.hardmode
            if easy then
                butt.TextColor3 = Color3.fromRGB(0,255,0)
                easy = false
            else 
                butt.TextColor3 = Color3.fromRGB(255,0,0)
                easy = true
            end
        end)
        if not easy then
            but.TextColor3 = Color3.fromRGB(0,255,0)
        else 
            but.TextColor3 = Color3.fromRGB(255,0,0)
        end
        but = createButton("instakill", UDim2.new(0.5,0,0.05,0),"Enable intsakill", function()
            local butt = game.Players.LocalPlayer.PlayerGui.UI.pause.bg.pause.instakill
            if oko then
                butt.TextColor3 = Color3.fromRGB(255,0,0)
                oko = false
            else 
                butt.TextColor3 = Color3.fromRGB(0,255,0)
                oko = true
            end
        end)
        if not oko then
            but.TextColor3 = Color3.fromRGB(255,0,0)
        else 
            but.TextColor3 = Color3.fromRGB(0,255,0)
        end
        but = createButton("buff", UDim2.new(0,0,0,0),"Enable buffed attacks", function()
            local butt = game.Players.LocalPlayer.PlayerGui.UI.pause.bg.pause.buff
            if buffedattacks then
                butt.TextColor3 = Color3.fromRGB(255,0,0)
                buffedattacks = false
            else 
                butt.TextColor3 = Color3.fromRGB(0,255,0)
                buffedattacks = true
            end
        end)
        if not buffedattacks then
            but.TextColor3 = Color3.fromRGB(255,0,0)
        else 
            but.TextColor3 = Color3.fromRGB(0,255,0)
        end
    end
end)
mousedown = false
Game.Players.LocalPlayer:GetMouse().Button1Down:Connect(function()
    mousedown = true
    wait()
    mousedown = false
end)

function doshadowbeebo(clones,delay,intialdelay)
    print("done")
    poses = {}
    allowes = {}
    k = 0
    intialdelay = intialdelay or 0
    for i=1,clones do
        allowes[i] = 0
    end
    print("before cos")
    coroutine.wrap(function()
        while canclone do
            -- need to check for textbox object in workspace
            if stuff.canmove and not stuff.gotice and not stuff.store and not stuff.paused and not stuff.talking then
                clone = workspace.vis:clone()
                for i,v in pairs(clone:GetDescendants()) do
                    if v:IsA("MeshPart") then
                        v.TextureID = ""
                        v.Material = Enum.Material.Neon
                        v.Color = Color3.fromRGB(150,0,200)
                        v.Transparency = 0.5
                        if v.Name == "board" or v.Name == "w1" or v.Name == "w2" then
                            v.Transparency = 1
                        end
                    elseif v:IsA("Sound") or v:IsA("Decal") then
                        v:Destroy()
                    end
                end
                clone.Name = "antivis"
                poses[k] = clone
                k = k + 1
            end
            wait()
        end
    end)()
    coroutine.wrap(function()
        p = 0
        while canclone do
            if stuff.canmove and not stuff.gotice and not stuff.store and not stuff.paused and not stuff.talking then
                for h=1,clones do
                    if allowes[h] ~= 0 then
                        if h ~= clones then
                            poses[p-allowes[h]].Parent = nil
                        else
                            poses[p-allowes[h]]:Destroy()
                        end
                    end
                end
                p = p + 1
                for h=1,clones do
                    if allowes[h] ~= 0 then
                        poses[p-allowes[h]].Parent = game.workspace
                    end
                end
            end
            wait()
        end
    end)()
    wait(intialdelay)
    print("for")
    for g=1,clones do
        if stuff.canmove and not stuff.gotice and not stuff.store and not stuff.paused and not stuff.talking then
            if canclone then
                allowes[g] = p
                workspace.RustyShowdown["fshadowbeebo" .. tostring(g)]:Destroy()
            end
            wait(delay)
        end
        if not canclone then break end
        wait()
    end
end

local newtext = game:GetObjects('rbxassetid://8270497253')[1]
newtext.Parent = workspace

local sur = newtext.SurfaceGui
sur.Enabled = false

game:GetService("RunService").RenderStepped:Connect(function()
    newtext.CFrame = stuff.vcf * CFrame.new(0, -3, -7)
end)

talking = false
function dodialogue(textobj,Name,auto,waite)
    if not talking then
        talking = true
        sur.Enabled = true
        sur.spin.Visible = false
        if textobj:FindFirstChild("beebo") then
            sur.bg.Image = "rbxassetid://1442127057"
            sur.beebo.Visible = true
            sur.person.Visible = false
        else
            sur.bg.Image = "rbxassetid://1442126894"
            sur.beebo.Visible = false
            sur.person.Visible = true
            sur.person.Text = Name
            sur.person.outline.Text = Name
        end
        if not auto then
            stuff.canmove = false
        end
        for i = 0, string.len(textobj.Value) do
            sur.said.Text = string.sub(textobj.Value,0,i)
            wait()
            if (mousedown and not auto) then break end
        end
        mousedown = false
        sur.said.Text = textobj.Value
        wait(0.2)
        if auto then
            sur.spin.Visible = false
            wait(waite)
        else
            sur.spin.Visible = true
            repeat
                sur.spin.Rotation = sur.spin.Rotation + 3
                wait()
            until mousedown
        end
        mousedown, talking = false, false
        if textobj:FindFirstChild("tx") then
            dodialogue(textobj.tx,Name,auto,waite)
        else
            sur.Enabled = false
            stuff.canmove = true
        end
    end
end

stuff.icrt[11] = "???"
if saveice then
    stuff.icr[11] = {
        c68 = "The Rusty Showdown"
    }
else
    stuff.icr[11] = {
        c6969 = "The Rusty Showdown"
    }
end

function ClosestPointOnPart(Part, Point)
	local Transform = Part.CFrame:pointToObjectSpace(Point) -- Transform into local space
	local HalfSize = Part.Size * 0.5
	return Part.CFrame * Vector3.new( -- Clamp & transform into world space
		math.clamp(Transform.x, -HalfSize.x, HalfSize.x),
		math.clamp(Transform.y, -HalfSize.y, HalfSize.y),
		math.clamp(Transform.z, -HalfSize.z, HalfSize.z)
	)
end

func = stuff.toattack
stuff.toattack = function()
    coroutine.wrap(func)()
    if stuff.map.Name == "RustyShowdown" and not stuff.paused and stuff.bossfight then
        if (ClosestPointOnPart(stuff.map.rustyglass, workspace.char.Position) - workspace.char.Position).Magnitude < 3 then
            workspace.char.Position = workspace.char.Position + Vector3.new(0,0,-5)
            hits = hits + 1
            if hits == 5 then return end
            coroutine.wrap(function()
                workspace.char.Anchored = true    
                TS:Create(workspace.char, TweenInfo.new(
                    1,
                    Enum.EasingStyle.Linear,
                    Enum.EasingDirection.Out
                ), {Position = workspace.char.Position + Vector3.new(0,0,-50)}):Play()
                wait(1)
                workspace.char.Anchored = false
            end)()
            coroutine.wrap(dodialogue)(workspace.RustyShowdown.talk["Hit" .. tostring(hits)],"Rusty??",true,2)
            hatcd = 30
            hatcd2 = 30
            if hits == 1 then
                stuff.health = math.clamp(stuff.health + 1, 0, 4)
                jhatcd = 400
            elseif hits == 2 then
                stuff.health = math.clamp(stuff.health + 1, 0, 4)
                jhatcd = 300
                canclone = true
                local amount = 3
                if buffed then
                    amount = 5
                    beb4  = workspace.RustyShowdown.fshadowbeebo3:Clone()
                    beb4.Parent = workspace.RustyShowdown
                    beb4.Name = "fshadowbeebo4"
                    beb5  = workspace.RustyShowdown.fshadowbeebo2:Clone()
                    beb5.Parent = workspace.RustyShowdown
                    beb5.Name = "fshadowbeebo5"
                end
                local tween = TS:Create(workspace.RustyShowdown.slide, TweenInfo.new(
                    2,
                    Enum.EasingStyle.Linear,
                    Enum.EasingDirection.Out
                ), {Position = Vector3.new(-22, 20, -11.5)})
                coroutine.wrap(function()
                    tween:Play()
                    tween.Completed:Wait()
                    doshadowbeebo(amount,1,0.5)
                end)()
            elseif hits == 3 then
                stuff.health = math.clamp(stuff.health + 2, 0, 4)
                jhatcd = 500
            elseif hits == 4 then
                stuff.health = math.clamp(stuff.health + 2, 0, 4)
                jhatcd = 600
            else
                stuff.health = 4
            end
            coroutine.wrap(function()
                for i=1,5 do
                    workspace.RustyShowdown.rustyglass.Color = Color3.fromRGB(255,0,0) 
                    wait(0.1)
                    workspace.RustyShowdown.rustyglass.Color = Color3.fromRGB(170, 255, 255) 
                    wait(0.1)
                end
            end)()
            workspace.Gravity = 80
        end
    end
end

workspace.char.Touched:Connect(function(a,b)
    if stuff.map.Name == "RustyShowdown" and not stuff.paused then
        if a.Name == "trigger" then
            workspace.RustyShowdown.MainModel.trigger.CanCollide = true
            workspace.RustyShowdown.MainModel.trigger.Transparency = 0.7
            workspace.RustyShowdown.MainModel.trigger.Name = "disabledtrigger"
            local incoroute = easy
            intsakill = oko
            local buffed = buffedattacks
            workspace.char.Velocity = Vector3.new(0,0,0)
            workspace.char.Position = Vector3.new(-20, 10, -90)
            dodialogue(workspace.RustyShowdown.talk.Intro,"Rusty")
            stuff.bossfight = true
            jhatcd = 300
            hatcd = 40
            hatcd2 = 40
            hatcd3 = 40
            mhatcd = 80
            -- turn below into array to set multiple at once
            hits = 0
            while hits < 5 and stuff.map.Name == "RustyShowdown" do
                if not stuff.paused then
                    --magic hat
                    if hits == 0 or hits == 1 or hits == 3 or hits == 4 then
                        if hatcd == 0 then
                        go = false
                            coroutine.wrap(function()
                                local hat2clone = workspace.RustyShowdown.hat2:Clone()
                                hat2clone.Name = "hat2clone"
                                hat2clone.Parent = workspace.RustyShowdown
                                hat2clone.Position = Vector3.new(workspace.char.Position.X,workspace.RustyShowdown.hat2.Position.Y,workspace.char.Position.Z)
                                local warnclone = workspace.RustyShowdown.warn:Clone()
                                warnclone.Parent = workspace.RustyShowdown
                                warnclone.Name = "warnclone"
                                if not buffed then
                                    amount = 20
                                else
                                    amount = 56
                                end
                                for i = 1,20 do
                                    if not stuff.paused then
                                        if i % 4 == 0 then
                                            if warnclone.Transparency == 1 then
                                                warnclone.Transparency= 0.5
                                            else
                                                warnclone.Transparency = 1
                                            end
                                        end
                                        warnclone.Position = Vector3.new(workspace.char.Position.X,warnclone.Position.Y,workspace.char.Position.Z)
                                    else
                                        repeat wait() until not stuff.paused
                                    end
                                    wait()
                                end
                                local posi
                                if not buffed then
                                    posi = workspace.char.Position
                                end
                                for i = 1,36 do
                                    if not stuff.paused then
                                        if i % 4 == 0 then
                                            if warnclone.Transparency == 1 then
                                                warnclone.Transparency = 0.5
                                            else
                                                warnclone.Transparency = 1
                                            end
                                        end
                                        if buffed then
                                            warnclone.Position = Vector3.new(workspace.char.Position.X,warnclone.Position.Y,workspace.char.Position.Z)
                                        end
                                    else
                                        repeat wait() until not stuff.paused
                                    end
                                    wait()
                                end
                                if buffed then
                                    posi = workspace.char.Position
                                end
                                warnclone:Destroy()
                                hat2clone.Position = Vector3.new(posi.X,workspace.RustyShowdown.hat2.Position.Y,posi.Z)
                                for i=1,10 do
                                    if not stuff.paused then
                                        hat2clone.Position = hat2clone.Position + Vector3.new(0,1,0)
                                    else
                                        repeat wait() until not stuff.paused
                                    end
                                    wait()
                                end
                                wait(0.5)
                                for i=1,10 do
                                    if not stuff.paused then
                                        hat2clone.Position = hat2clone.Position - Vector3.new(0,1,0)
                                    else
                                        repeat wait() until not stuff.paused
                                    end
                                    wait()
                                end
                                hat2clone:Destroy()
                                if incoroute then
                                    hatcd = math.random(mincd[hits+1][1],maxcd[hits+1][1])
                                end
                            end)()
                            if not incoroute then
                                hatcd = math.random(mincd[hits+1][1],maxcd[hits+1][1])
                            end
                        end
                        hatcd = hatcd - 1
                    end
                    -- sombero hat thingy
                    if hits == 1 or hits == 2 or hits == 3 or hits == 4 then
                        if hatcd2 == 0 then
                            coroutine.wrap(function()
                                local newclone = workspace.RustyShowdown.hat3:Clone()
                                newclone.Name = "cloned"
                                newclone.Parent = workspace.RustyShowdown
                                newclone.Position = newclone.Position + Vector3.new(0,0,math.random(-45,45))
                                for i=1,100 do
                                    if not stuff.paused then
                                        newclone.Position = newclone.Position + Vector3.new(2,0,0)
                                        newclone.Orientation = newclone.Orientation + Vector3.new(0,10,0)
                                    else
                                        repeat wait() until not stuff.paused
                                    end
                                    wait()
                                end
                                if buffed then
                                    coroutine.wrap(function()
                                        for i=1,100 do
                                            if not stuff.paused then
                                                newclone.Position = newclone.Position - Vector3.new(2,0,0)
                                                newclone.Orientation = newclone.Orientation + Vector3.new(0,10,0)
                                            else
                                                repeat wait() until not stuff.paused
                                            end
                                            wait()
                                        end
                                        newclone:Destroy()
                                    end)()
                                else
                                    newclone:Destroy()
                                end
                                if incoroute then
                                    hatcd2 = math.random(mincd[hits+1][2],maxcd[hits+1][2])
                                end
                            end)()
                            if not incoroute then
                                hatcd2 = math.random(mincd[hits+1][2],maxcd[hits+1][2])
                            end
                        end
                        hatcd2 = hatcd2 - 1
                    end
                    -- ant laser
                    if hits == 4 then
                        if hatcd3 == 0 then
                            coroutine.wrap(function()
                                pos = workspace.char.Position
                                leye = workspace.RustyShowdown.hat6.Leye
                                reye = workspace.RustyShowdown.hat6.Reye
                                leng = (leye.Position - pos).Magnitude
                                reng = (reye.Position - pos).Magnitude
                                local Laser = Instance.new("Part",leye)
                                Laser.Anchored = true
                                Laser.Material = Enum.Material.Neon
                                Laser.Shape = Enum.PartType.Cylinder
                                Laser.Color = Color3.new(1,0,0)
                                Laser.Size = Vector3.new(leng,1,1)
                                Laser.CFrame = CFrame.new((pos + leye.Position)/2,pos) * CFrame.Angles(0,math.rad(90),0)
                                Laser.Transparency = 0.8
                                Laser.CanCollide = false
                                local Raser = Instance.new("Part",reye)
                                Raser.Anchored = true
                                Raser.Material = Enum.Material.Neon
                                Raser.Shape = Enum.PartType.Cylinder
                                Raser.Color = Color3.new(1,0,0)
                                Raser.Size = Vector3.new(reng,1,1)
                                Raser.CFrame = CFrame.new((pos + reye.Position)/2,pos) * CFrame.Angles(0,math.rad(90),0)
                                Raser.Transparency = 0.8
                                Raser.CanCollide = false
                                local size
                                if buffed then
                                    size = 8
                                else
                                    size = 4
                                end
                                for i=1,20 do
                                    if not stuff.paused then
                                        Laser.Size = Vector3.new(300,size-size/(i/1.5),size-size/(i/1.5))
                                        Raser.Size = Vector3.new(300,size-size/(i/1.5),size-size/(i/1.5))
                                        wait()
                                    else
                                        repeat wait() until not stuff.paused
                                    end
                                    wait()
                                end
                                Laser.Name = "Hurt"
                                Raser.Name = "Hurt"
                                Laser.Transparency = 0 
                                Raser.Transparency = 0 
                                for i=1,20 do
                                    if not stuff.paused then
                                    colo = BrickColor.random()
                                    Laser.BrickColor = colo
                                    Raser.BrickColor = colo
                                    else
                                        repeat wait() until not stuff.paused
                                    end
                                    wait(0.1)
                                end
                                Laser:Destroy()
                                Raser:Destroy()
                                if incoroute then
                                    mhatcd = math.random(mincd[hits+1][3],maxcd[hits+1][3])
                                    hatcd3 = mhatcd
                                end
                            end)()
                            if not incoroute then
                                mhatcd = math.random(mincd[hits+1][3],maxcd[hits+1][3])
                                hatcd3 = mhatcd
                            end
                        end
                        diff = (mhatcd - math.clamp(hatcd3,0,10000))/mhatcd
                        workspace.RustyShowdown.Meter.Green.Size = Vector3.new(diff * 18, 4.65, 4.65)
                        workspace.RustyShowdown.Meter.Green.Position = Vector3.new(-36, 62.601955413818 + diff * (71.790451049805 - 62.601955413818), -13.02)
                        hatcd3 = hatcd3 - 1
                    end
                    --anti gravity hat
                    jhatcd = jhatcd - 1
                    if jhatcd == 0 then
                        coroutine.wrap(function()
                            local clo = workspace.RustyShowdown.hat7:Clone()
                            clo.Name = "clo"
                            clo.Position = Vector3.new(-25, 4, -69)
                            clo.Parent = workspace.RustyShowdown
                            clo.Orientation = Vector3.new(0,360,0)
                            up = true
                            tween = TS:Create(clo, TweenInfo.new(
                                1.5,
                                Enum.EasingStyle.Sine,
                                Enum.EasingDirection.InOut,
                                -1,
                                true
                                ), {Position = Vector3.new(-25,6,-69)})
                            tween:Play()
                            tween = TS:Create(clo, TweenInfo.new(
                                1.5,
                                Enum.EasingStyle.Linear,
                                Enum.EasingDirection.In,
                                -1
                                ), {Orientation = Vector3.new(0,360,0)})
                            tween:Play()
                        end)()
                    end
                end
                wait()
            end
            for i,v in ipairs(poses) do
                v:Destroy()
            end
            workspace.Gravity = 80
            stuff.bossfight = false
            canclone = false
            poses = {}
            allowes = {}
            if hits == 5 then
                workspace.RustyShowdown.MainModel.disabledtrigger:Destroy()
                workspace.RustyShowdown.Rusty:Destroy()
                stuff.spawnice("The Rusty Showdown", 68, Vector3.new(-19, 13.501, -71))
            end
        elseif a.Name == "clo" then
            workspace.Gravity = 20
            a:Destroy()
        elseif a.Name == "Hurt" or a.Name == "hat2clone" or a.Name == "cloned" or (a.Color == Color3.fromRGB(150,0,200) and a.Material == Enum.Material.Neon) then
            if intsakill then
                stuff.health = 0
            end
            stuff.damage()
        end
    end
end)
if stuff.map.Name == "hub" then
    stuff.pause(true)
    stuff.textbuttons["hub2"]()
end

--ignore dis its just to make the amount of lines go to 1775
--1775
print("everything went fine! talk to sheldon at the shop to see whats new...")
