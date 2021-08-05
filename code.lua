saveice = saveice or false
Iserv = game:GetService("InsertService")
TS = game:GetService("TweenService")
canclone = true
if game:GetService("ReplicatedFirst").maps:FindFirstChild( "RustyShowdown") then
    game:GetService("ReplicatedFirst").maps.RustyShowdown:ClearAllChildren()
    game:GetService("ReplicatedFirst").maps.RustyShowdown:Destroy()
end

local portal = game:GetService("Lighting").scrappedbuzz.TeleMap:Clone()
portal.Parent = game:GetService("ReplicatedFirst").maps.hub
portal.Position = Vector3.new(-278, 35, 129)
portal.where.Value = Vector3.new(-23, 4, -165)
portal.to.Value = "RustyShowdown"

local sign = game:GetService("ReplicatedFirst").maps.hub["Sheldon Sign"]
sign.tx.Value = "Some Quick notes: If you want the ice cream from the boss to save, type 'saveice = true' before the loadstring command."
sign.tx.tx.Value = "Also, in the pause menu, hardmode = way more attacks, buffed attacks = a bit harder attacks, instakill = instakill"
sign.tx.tx.tx.Value = "You can turn them all on if you want, there's nothing stopping you."
sign.tx.tx.tx.tx.Value = "where's the boss tho"
sign.tx.tx.tx.tx.tx.Value = "I don't know, ask the Sheldon Sign at Rusty's. He probably knows."
sign.tx.tx.tx.tx.tx.tx.Value = "bruh why would you not tell me"

game:GetService("ReplicatedFirst").maps.hub.Rusty.tx.Value = "No matter what happens, I'll keep selling, waddya want?"

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


stuff = getsenv(game.Players.LocalPlayer.PlayerScripts.CharacterScript)
buffedattacks = false
easy = true
oko = false
mincd = {{60},{100,30},{0,20},{50,50},{40,50,25}}
maxcd = {{90},{120,60},{0,30},{90,80},{60,80,40}}

function createButton(name,position,text,func,parent)
    parent = parent or game.Players.LocalPlayer.PlayerGui.UI.pause.bg.pause
    Xpos = Xpos or 0.1
    unloop = false
    Button = Instance.new("TextButton")
    Button.Font = Enum.Font.SourceSansBold
    Button.TextColor3 = Color3.fromRGB(255,0,0)
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

createButton("hardmode", UDim2.new(-0.5,0,0.05,0),"Enable hardmode", function()
    local butt = game.Players.LocalPlayer.PlayerGui.UI.pause.bg.pause.hardmode
    if easy then
        butt.TextColor3 = Color3.fromRGB(0,255,0)
        easy = false
    else 
        butt.TextColor3 = Color3.fromRGB(255,0,0)
        easy = true
    end
end)

createButton("instakill", UDim2.new(0.5,0,0.05,0),"Enable intsakill", function()
    local butt = game.Players.LocalPlayer.PlayerGui.UI.pause.bg.pause.instakill
    if oko then
        butt.TextColor3 = Color3.fromRGB(255,0,0)
        oko = false
    else 
        butt.TextColor3 = Color3.fromRGB(0,255,0)
        oko = true
    end
end)

createButton("buff", UDim2.new(0,0,0,0),"Enable buffed attacks", function()
    local butt = game.Players.LocalPlayer.PlayerGui.UI.pause.bg.pause.buff
    if buffedattacks then
        butt.TextColor3 = Color3.fromRGB(255,0,0)
        buffedattacks = false
    else 
        butt.TextColor3 = Color3.fromRGB(0,255,0)
        buffedattacks = true
    end
end)

local customtext = Instance.new("Frame",game.Players.LocalPlayer.PlayerGui.UI)
customtext.Name = "customtext"
customtext.ZIndex = 3
customtext.Size = UDim2.new(0.6, 0, 0.25, 0)
customtext.BackgroundTransparency = 1
customtext.Position = UDim2.new(0.2, 0, 0.7, 0)
customtext.BackgroundColor3 = Color3.fromRGB(248, 248, 248)
customtext.Visible = false

local otherbg = Instance.new("ImageLabel")
otherbg.Name = "otherbg"
otherbg.ZIndex = 2
otherbg.Size = UDim2.new(1, 0, 1, 0)
otherbg.BackgroundTransparency = 1
otherbg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
otherbg.Image = "rbxassetid://1442126894"
otherbg.ImageRectSize = Vector2.new(475, 128)
otherbg.ImageColor3 = Color3.fromRGB(255, 250, 255)
otherbg.Parent = customtext

local spin = Instance.new("ImageLabel")
spin.Name = "spin"
spin.ZIndex = 10
spin.Size = UDim2.new(0, 50, 0, 50)
spin.BackgroundTransparency = 1
spin.Position = UDim2.new(1, -60, 1, -60)
spin.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
spin.Image = "rbxassetid://1442126706"
spin.Parent = customtext

local beebo = Instance.new("TextLabel")
beebo.Name = "beebo"
beebo.ZIndex = 2
beebo.Size = UDim2.new(-0.5, 0, 0.2, 0)
beebo.ClipsDescendants = true
beebo.BackgroundTransparency = 1
beebo.Position = UDim2.new(1, -20, 0, -40)
beebo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
beebo.FontSize = Enum.FontSize.Size60
beebo.TextSize = 50
beebo.TextColor3 = Color3.fromRGB(255, 255, 255)
beebo.Text = "Beebo"
beebo.TextYAlignment = Enum.TextYAlignment.Top
beebo.TextWrap = true
beebo.Font = Enum.Font.SourceSansBold
beebo.TextWrapped = true
beebo.TextXAlignment = Enum.TextXAlignment.Right
beebo.Parent = customtext

local person = Instance.new("TextLabel")
person.Name = "person"
person.ZIndex = 3
person.Size = UDim2.new(0.5, -40, 0.2, 0)
person.BackgroundTransparency = 1
person.Position = UDim2.new(0, 20, 0, -40)
person.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
person.FontSize = Enum.FontSize.Size60
person.TextSize = 50
person.TextColor3 = Color3.fromRGB(255, 255, 255)
person.Text = "LongNameMGee"
person.TextYAlignment = Enum.TextYAlignment.Top
person.TextWrap = true
person.Font = Enum.Font.SourceSansBold
person.TextWrapped = true
person.TextXAlignment = Enum.TextXAlignment.Left
person.Parent = customtext

local beebobg = Instance.new("ImageLabel")
beebobg.Name = "beebobg"
beebobg.ZIndex = 2
beebobg.Size = UDim2.new(1, 0, 1, 0)
beebobg.BackgroundTransparency = 1
beebobg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
beebobg.Image = "rbxassetid://1442127057"
beebobg.ImageRectSize = Vector2.new(475, 128)
beebobg.ImageColor3 = Color3.fromRGB(255, 250, 255)
beebobg.Parent = customtext

local said = Instance.new("TextLabel")
said.Name = "said"
said.ZIndex = 4
said.Size = UDim2.new(1, -40, 1, -10)
said.BackgroundTransparency = 1
said.Position = UDim2.new(0, 20, 0, 5)
said.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
said.FontSize = Enum.FontSize.Size60
said.TextSize = 50
said.TextColor3 = Color3.fromRGB(0, 0, 0)
said.Text = ""
said.TextYAlignment = Enum.TextYAlignment.Top
said.Font = Enum.Font.SourceSansBold
said.TextXAlignment = Enum.TextXAlignment.Left
said.Parent = customtext
said.TextWrapped = true

mousedown = false
doing = false
Game.Players.LocalPlayer:GetMouse().Button1Down:Connect(function()
    if doing then
        mousedown = true
    end
end)

function doshadowbeebo(clones,delay,intialdelay)
    poses = {}
    allowes = {}
    k = 0
    intialdelay = intialdelay or 0
    for i=1,clones do
        allowes[i] = 0
    end
    coroutine.wrap(function()
        while canclone do
            -- need to check for textbox object in workspace
            if stuff.canmove and not stuff.gotice and not stuff.store and not stuff.paused and not stuff.talking and not workspace:FindFirstChild("textbox") then
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
    p = 0
    coroutine.wrap(function()
        while canclone do
            if stuff.canmove and not stuff.gotice and not stuff.store and not stuff.paused and not stuff.talking and not workspace:FindFirstChild("textbox") then
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
    for g=1,clones do
        if stuff.canmove and not stuff.gotice and not stuff.store and not stuff.paused and not stuff.talking and not workspace:FindFirstChild("textbox") then
            print(g)
            print(workspace.RustyShowdown["fshadowbeebo" .. tostring(g)])
            wait(delay)
            if canclone then
                allowes[g] = p
                workspace.RustyShowdown["fshadowbeebo" .. tostring(g)]:Destroy()
            end
        else
            wait()
        end
        if not canclone then 
            break
        end
    end
end

talking = false

function dodialogue(textobj,Name,auto,waite,manual)
    if not talking then
        talking = true
        customtext.Visible = true
        spin.Visible = false
        if textobj:FindFirstChild("beebo") then
            beebobg.Visible = true
            otherbg.Visible = false
            beebo.Visible = true
            person.Visible = false
        else
            beebobg.Visible = false
            otherbg.Visible = true
            beebo.Visible = false
            person.Text = Name
            person.Visible = true
        end
        index = 0
        if not auto then
            doing = true
            stuff.canmove = false
        end
        repeat
            said.Text = string.sub(textobj.Value,0,index)
            wait()
            index = index + 1
        until (mousedown and not auto) or index == string.len(textobj.Value)
        mousedown = false
        said.Text = textobj.Value
        wait(0.2)
        if auto then
            spin.Visible = false
            wait(waite)
        else
            spin.Visible = true
            repeat
                spin.Rotation = spin.Rotation + 3
                wait()
            until mousedown
        end
        doing = false
        mousedown = false
        talking = false
        if textobj:FindFirstChild("tx") and not manual then
            dodialogue(textobj.tx,Name,auto,waite)
        else
            customtext.Visible = false
            stuff.canmove = true
        end
    end
end

local RustyShowdown = Instance.new("Model",game:GetService("ReplicatedFirst").maps)
RustyShowdown.Name = "RustyShowdown"
RustyShowdown.WorldPivot = CFrame.new(-21.5, 33.939746856689, -52.5)

local portal2 = game:GetService("Lighting").scrappedbuzz.TeleMap:Clone()
portal2.Parent = RustyShowdown
portal2.Position = Vector3.new(-22, 4, -180)
portal2.where.Value = Vector3.new(-282, 32, 135)
portal2.to.Value = "hub"

local Rusty = Iserv:CreateMeshPartAsync("rbxassetid://7191827134",0,0)
Rusty.Name = "Rusty"
Rusty.Anchored = true
Rusty.Size = Vector3.new(10.555180549622, 17.86096572876, 10.420394897461)
Rusty.CFrame = CFrame.new(-21.5, 44.5, -1)
Rusty.TextureID = "rbxassetid://1307344183"
Rusty.Parent = RustyShowdown

local txx1 = Instance.new("StringValue",Rusty)
txx1.Name = "tx"
txx1.Value = "Hey! You aren't supposed to be here!"

local txx2 = Instance.new("StringValue",txx1)
txx2.Name = "tx"
txx2.Value = "does it look like i care"

local beebotalking = Instance.new("Folder",txx2)
beebotalking.Name = "beebo"


local warn_ = Instance.new("Part",RustyShowdown)
warn_.Name = "warn"
warn_.Anchored = true
warn_.BottomSurface = Enum.SurfaceType.Smooth
warn_.TopSurface = Enum.SurfaceType.Smooth
warn_.Transparency = 1
warn_.CanCollide = false
warn_.Color = Color3.fromRGB(255, 0, 0)
warn_.Material = Enum.Material.Neon
warn_.Size = Vector3.new(11.002607345581, 47.363636016846, 47.363636016846)
warn_.CFrame = CFrame.new(-57.5, 0.50000381469727, -36.5, 0, 1, 0, -1, 0, 0, 0, 0, 1)
warn_.Shape = Enum.PartType.Cylinder

local folder = Instance.new("Folder",RustyShowdown)
folder.Name = "talk"

local tx = Instance.new("StringValue")
tx.Name = "Intro"
tx.Value = "You know what your getting yourself into right?"
tx.Parent = folder

local tx1 = Instance.new("StringValue")
tx1.Name = "tx"
tx1.Value = "This isn't merely a 'project' as Sheldon probably told you, I'm trying to revive the sun."
tx1.Parent = tx

local tx2 = Instance.new("StringValue")
tx2.Name = "tx"
tx2.Value = "why"
tx2.Parent = tx1

local tx3 = Instance.new("StringValue")
tx3.Name = "tx"
tx3.Value = "When I'm not a shop keeper, I'm part of the Sun Cult."
tx3.Parent = tx2

local tx4 = Instance.new("StringValue")
tx4.Name = "tx"
tx4.Value = "Anyway, the fact that you're here means that you're trying to stop me. Go ahead and try, I'm ready for it."
tx4.Parent = tx3

local Beebo = Instance.new("Folder")
Beebo.Name = "beebo"
Beebo.Parent = tx2

local tx = Instance.new("StringValue",folder)
tx.Name = "Hit1"
tx.Value = "Alright that was child's play."

local tx1 = Instance.new("StringValue")
tx1.Name = "tx"
tx1.Value = "Lets add a different hat."
tx1.Parent = tx

local tx2 = Instance.new("StringValue")
tx2.Name = "tx"
tx2.Value = "how does that hat even do that lmao"
tx2.Parent = tx1

local beebo = Instance.new("Folder")
beebo.Name = "beebo"
beebo.Parent = tx2

local Value = Instance.new("StringValue")
Value.Value = "Shut the #!@\163 up."
Value.Name = "tx"
Value.Parent = tx2

local t1x = Instance.new("StringValue",folder)
t1x.Name = "Hit2"
t1x.Value = "Well, that didn't work..."

local t2x = Instance.new("StringValue",t1x)
t2x.Name = "tx"
t2x.Value = "Well time to release the shadow beebos..."

local t3x = Instance.new("StringValue",t2x)
t3x.Name = "tx"
t3x.Value = "THE.           WHAT.          "

local beebo = Instance.new("Folder")
beebo.Name = "beebo"
beebo.Parent = t3x

local t1x = Instance.new("StringValue",folder)
t1x.Name = "Hit3"
t1x.Value = "Ow!"

local t2x = Instance.new("StringValue",t1x)
t2x.Name = "tx"
t2x.Value = "That hurts you know!"

local t3x = Instance.new("StringValue",t2x)
t3x.Name = "tx"
t3x.Value = "says the sun cultist lmao"

local beebo = Instance.new("Folder")
beebo.Name = "beebo"
beebo.Parent = t3x

local t1x = Instance.new("StringValue",folder)
t1x.Name = "Hit4"
t1x.Value = "This is fine. I'm 1 hit away from death."

local t2x = Instance.new("StringValue",t1x)
t2x.Name = "tx"
t2x.Value = "Everything is fine."

local t3x = Instance.new("StringValue",t2x)
t3x.Name = "tx"
t3x.Value = "btw whats that giant ant hat thingy"

local beebo = Instance.new("Folder")
beebo.Name = "beebo"
beebo.Parent = t3x

local t4x = Instance.new("StringValue",t3x)
t4x.Name = "tx"
t4x.Value = "Oh you want to know? I'll turn it on."

local t5x = Instance.new("StringValue",t4x)
t5x.Name = "tx"
t5x.Value = "wait no-"

local beebo = Instance.new("Folder")
beebo.Name = "beebo"
beebo.Parent = t5x

local MainModel = Instance.new("Model")
MainModel.Name = "MainModel"
MainModel.Parent = RustyShowdown

local Sart = Instance.new("Part",MainModel)
Sart.Anchored = true
Sart.BottomSurface = Enum.SurfaceType.Smooth
Sart.TopSurface = Enum.SurfaceType.Smooth
Sart.Transparency = 1
Sart.Size = Vector3.new(36, 13, 2)
Sart.CFrame = CFrame.new(-22, 7.032470703125, -13)

Ssart = Instance.new("Folder",Sart)
Ssart.Name = "nowall"

local Part = Instance.new("Part")
Part.Anchored = true
Part.BottomSurface = Enum.SurfaceType.Smooth
Part.TopSurface = Enum.SurfaceType.Smooth
Part.Material = Enum.Material.Brick
Part.Size = Vector3.new(30, 57, 73)
Part.CFrame = CFrame.new(-22, 61.732467651367, -150.44999694824)
Part.Parent = MainModel

local Texture = Instance.new("Texture")
Texture.Face = Enum.NormalId.Back
Texture.Color3 = Color3.fromRGB(170, 170, 255)
Texture.Texture = "rbxassetid://1203962729"
Texture.OffsetStudsU = 3
Texture.OffsetStudsV = 2.8299999
Texture.StudsPerTileV = 4
Texture.StudsPerTileU = 4
Texture.Parent = Part

local Texture1 = Instance.new("Texture")
Texture1.Face = Enum.NormalId.Bottom
Texture1.Color3 = Color3.fromRGB(170, 170, 255)
Texture1.Texture = "rbxassetid://1203962729"
Texture1.OffsetStudsU = 3
Texture1.StudsPerTileV = 4
Texture1.StudsPerTileU = 4
Texture1.Parent = Part

local Part1 = Instance.new("Part")
Part1.Anchored = true
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.Material = Enum.Material.Brick
Part1.Size = Vector3.new(64, 45.200000762939, 84)
Part1.CFrame = CFrame.new(24, 67.632469177246, 28)
Part1.Parent = MainModel

local Texture2 = Instance.new("Texture")
Texture2.Color3 = Color3.fromRGB(170, 170, 255)
Texture2.Texture = "rbxassetid://1203962729"
Texture2.OffsetStudsV = 2.8
Texture2.StudsPerTileV = 4
Texture2.StudsPerTileU = 4
Texture2.Parent = Part1

local Texture3 = Instance.new("Texture")
Texture3.Face = Enum.NormalId.Left
Texture3.Color3 = Color3.fromRGB(170, 170, 255)
Texture3.Texture = "rbxassetid://1203962729"
Texture3.OffsetStudsV = 3
Texture3.StudsPerTileV = 4
Texture3.StudsPerTileU = 4
Texture3.Parent = Part1

local nowall = Instance.new("Folder")
nowall.Name = "nowall"
nowall.Parent = Part1

local Part2 = Instance.new("Part")
Part2.Anchored = true
Part2.BottomSurface = Enum.SurfaceType.Smooth
Part2.TopSurface = Enum.SurfaceType.Smooth
Part2.Material = Enum.Material.Brick
Part2.Size = Vector3.new(161, 1, 196)
Part2.CFrame = CFrame.new(-21.5, 0.5, -92)
Part2.Parent = MainModel

local Texture4 = Instance.new("Texture")
Texture4.Face = Enum.NormalId.Top
Texture4.Color3 = Color3.fromRGB(170, 170, 255)
Texture4.Texture = "rbxassetid://1203962729"
Texture4.OffsetStudsU = 1
Texture4.StudsPerTileV = 4
Texture4.StudsPerTileU = 4
Texture4.Parent = Part2

local Part3 = Instance.new("Part")
Part3.Anchored = true
Part3.BottomSurface = Enum.SurfaceType.Smooth
Part3.TopSurface = Enum.SurfaceType.Smooth
Part3.Material = Enum.Material.Brick
Part3.Size = Vector3.new(160, 1, 102)
Part3.CFrame = CFrame.new(-22, 89.5, -64)
Part3.Parent = MainModel

local Texture5 = Instance.new("Texture")
Texture5.Face = Enum.NormalId.Bottom
Texture5.Color3 = Color3.fromRGB(170, 170, 255)
Texture5.Texture = "rbxassetid://1203962729"
Texture5.OffsetStudsU = 2
Texture5.OffsetStudsV = 3
Texture5.StudsPerTileV = 4
Texture5.StudsPerTileU = 4
Texture5.Parent = Part3

local Part4 = Instance.new("Part")
Part4.Anchored = true
Part4.BottomSurface = Enum.SurfaceType.Smooth
Part4.TopSurface = Enum.SurfaceType.Smooth
Part4.Material = Enum.Material.Brick
Part4.Size = Vector3.new(65, 90, 73)
Part4.CFrame = CFrame.new(-68.5, 45.232467651367, -150.5)
Part4.Parent = MainModel

local Texture6 = Instance.new("Texture")
Texture6.Face = Enum.NormalId.Back
Texture6.Color3 = Color3.fromRGB(170, 170, 255)
Texture6.Texture = "rbxassetid://1203962729"
Texture6.OffsetStudsU = 3
Texture6.OffsetStudsV = 2.8
Texture6.StudsPerTileV = 4
Texture6.StudsPerTileU = 4
Texture6.Parent = Part4

local Texture7 = Instance.new("Texture")
Texture7.Face = Enum.NormalId.Right
Texture7.Color3 = Color3.fromRGB(170, 170, 255)
Texture7.Texture = "rbxassetid://1203962729"
Texture7.OffsetStudsV = 2.8
Texture7.StudsPerTileV = 4
Texture7.StudsPerTileU = 4
Texture7.Parent = Part4

local Part5 = Instance.new("Part")
Part5.Anchored = true
Part5.BottomSurface = Enum.SurfaceType.Smooth
Part5.TopSurface = Enum.SurfaceType.Smooth
Part5.Material = Enum.Material.Brick
Part5.Size = Vector3.new(60, 13, 25)
Part5.CFrame = CFrame.new(26, 6.7324676513672, -1.5)
Part5.Parent = MainModel

local Texture8 = Instance.new("Texture")
Texture8.Color3 = Color3.fromRGB(170, 170, 255)
Texture8.Texture = "rbxassetid://1203962729"
Texture8.StudsPerTileV = 4
Texture8.StudsPerTileU = 4
Texture8.Parent = Part5

local Texture9 = Instance.new("Texture")
Texture9.Face = Enum.NormalId.Left
Texture9.Color3 = Color3.fromRGB(170, 170, 255)
Texture9.Texture = "rbxassetid://1203962729"
Texture9.OffsetStudsV = 3.8
Texture9.StudsPerTileV = 4
Texture9.StudsPerTileU = 4
Texture9.Parent = Part5

local nowall1 = Instance.new("Folder")
nowall1.Name = "nowall"
nowall1.Parent = Part5

local Part6 = Instance.new("Part")
Part6.Anchored = true
Part6.BottomSurface = Enum.SurfaceType.Smooth
Part6.TopSurface = Enum.SurfaceType.Smooth
Part6.Material = Enum.Material.Brick
Part6.Size = Vector3.new(36, 24, 23)
Part6.CFrame = CFrame.new(-22, 25.032466888428, -1.5)
Part6.Parent = MainModel

local Texture10 = Instance.new("Texture")
Texture10.Face = Enum.NormalId.Bottom
Texture10.Color3 = Color3.fromRGB(170, 170, 255)
Texture10.Texture = "rbxassetid://1203962729"
Texture10.StudsPerTileV = 4
Texture10.StudsPerTileU = 4
Texture10.Parent = Part6

local Texture11 = Instance.new("Texture")
Texture11.Face = Enum.NormalId.Top
Texture11.Color3 = Color3.fromRGB(170, 170, 255)
Texture11.Texture = "rbxassetid://1203962729"
Texture11.StudsPerTileV = 4
Texture11.StudsPerTileU = 4
Texture11.Parent = Part6

local Part7 = Instance.new("Part")
Part7.Anchored = true
Part7.BottomSurface = Enum.SurfaceType.Smooth
Part7.TopSurface = Enum.SurfaceType.Smooth
Part7.Material = Enum.Material.Brick
Part7.Size = Vector3.new(64, 45.200000762939, 100)
Part7.CFrame = CFrame.new(-68, 67.632469177246, 36)
Part7.Parent = MainModel

local Texture12 = Instance.new("Texture")
Texture12.Color3 = Color3.fromRGB(170, 170, 255)
Texture12.Texture = "rbxassetid://1203962729"
Texture12.OffsetStudsU = 0.1
Texture12.OffsetStudsV = 2.8
Texture12.StudsPerTileV = 4
Texture12.StudsPerTileU = 4
Texture12.Parent = Part7

local Texture13 = Instance.new("Texture")
Texture13.Face = Enum.NormalId.Right
Texture13.Color3 = Color3.fromRGB(170, 170, 255)
Texture13.Texture = "rbxassetid://1203962729"
Texture13.OffsetStudsV = 3
Texture13.StudsPerTileV = 4
Texture13.StudsPerTileU = 4
Texture13.Parent = Part7

local nowall2 = Instance.new("Folder")
nowall2.Name = "nowall"
nowall2.Parent = Part7

local Part8 = Instance.new("Part")
Part8.Anchored = true
Part8.BottomSurface = Enum.SurfaceType.Smooth
Part8.TopSurface = Enum.SurfaceType.Smooth
Part8.Material = Enum.Material.Brick
Part8.Size = Vector3.new(64, 90, 73)
Part8.CFrame = CFrame.new(24, 45.232467651367, -150.5)
Part8.Parent = MainModel

local Texture14 = Instance.new("Texture")
Texture14.Face = Enum.NormalId.Back
Texture14.Color3 = Color3.fromRGB(170, 170, 255)
Texture14.Texture = "rbxassetid://1203962729"
Texture14.OffsetStudsV = 2.8199999
Texture14.StudsPerTileV = 4
Texture14.StudsPerTileU = 4
Texture14.Parent = Part8

local Texture15 = Instance.new("Texture")
Texture15.Face = Enum.NormalId.Left
Texture15.Color3 = Color3.fromRGB(170, 170, 255)
Texture15.Texture = "rbxassetid://1203962729"
Texture15.OffsetStudsU = 3
Texture15.OffsetStudsV = 2.7
Texture15.StudsPerTileV = 4
Texture15.StudsPerTileU = 4
Texture15.Parent = Part8

local Part9 = Instance.new("Part")
Part9.Anchored = true
Part9.BottomSurface = Enum.SurfaceType.Smooth
Part9.TopSurface = Enum.SurfaceType.Smooth
Part9.Material = Enum.Material.Brick
Part9.Size = Vector3.new(1, 20, 24)
Part9.CFrame = CFrame.new(-7.5, 45.232467651367, -1)
Part9.Parent = MainModel

local Texture16 = Instance.new("Texture")
Texture16.Face = Enum.NormalId.Left
Texture16.Color3 = Color3.fromRGB(170, 170, 255)
Texture16.Texture = "rbxassetid://1203962729"
Texture16.OffsetStudsU = 1
Texture16.OffsetStudsV = 2
Texture16.StudsPerTileV = 4
Texture16.StudsPerTileU = 4
Texture16.Parent = Part9

local Texture17 = Instance.new("Texture")
Texture17.Color3 = Color3.fromRGB(170, 170, 255)
Texture17.Texture = "rbxassetid://1203962729"
Texture17.StudsPerTileV = 4
Texture17.StudsPerTileU = 4
Texture17.Parent = Part9

local Part10 = Instance.new("Part")
Part10.Anchored = true
Part10.BottomSurface = Enum.SurfaceType.Smooth
Part10.TopSurface = Enum.SurfaceType.Smooth
Part10.Material = Enum.Material.Brick
Part10.Size = Vector3.new(1, 20, 24)
Part10.CFrame = CFrame.new(-36.5, 45.232467651367, -1)
Part10.Parent = MainModel

local Texture18 = Instance.new("Texture")
Texture18.Face = Enum.NormalId.Right
Texture18.Color3 = Color3.fromRGB(170, 170, 255)
Texture18.Texture = "rbxassetid://1203962729"
Texture18.OffsetStudsU = 3
Texture18.OffsetStudsV = 2
Texture18.StudsPerTileV = 4
Texture18.StudsPerTileU = 4
Texture18.Parent = Part10

local Texture19 = Instance.new("Texture")
Texture19.Color3 = Color3.fromRGB(170, 170, 255)
Texture19.Texture = "rbxassetid://1203962729"
Texture19.StudsPerTileV = 4
Texture19.StudsPerTileU = 4
Texture19.Parent = Part10

local Part11 = Instance.new("Part")
Part11.Anchored = true
Part11.BottomSurface = Enum.SurfaceType.Smooth
Part11.TopSurface = Enum.SurfaceType.Smooth
Part11.Material = Enum.Material.Brick
Part11.Size = Vector3.new(30, 22, 1)
Part11.CFrame = CFrame.new(-22, 46.232467651367, 10.5)
Part11.Parent = MainModel

local Texture20 = Instance.new("Texture")
Texture20.Color3 = Color3.fromRGB(170, 170, 255)
Texture20.Texture = "rbxassetid://1203962729"
Texture20.OffsetStudsU = 3
Texture20.StudsPerTileV = 4
Texture20.StudsPerTileU = 4
Texture20.Parent = Part11

local Part12 = Instance.new("Part")
Part12.Anchored = true
Part12.BottomSurface = Enum.SurfaceType.Smooth
Part12.TopSurface = Enum.SurfaceType.Smooth
Part12.Material = Enum.Material.Brick
Part12.Size = Vector3.new(28, 33.167419433594, 98)
Part12.CFrame = CFrame.new(-22, 73.64786529541, 35)
Part12.Parent = MainModel

local Texture21 = Instance.new("Texture")
Texture21.Face = Enum.NormalId.Bottom
Texture21.Color3 = Color3.fromRGB(170, 170, 255)
Texture21.Texture = "rbxassetid://1203962729"
Texture21.OffsetStudsV = 2
Texture21.StudsPerTileV = 4
Texture21.StudsPerTileU = 4
Texture21.Parent = Part12

local Texture22 = Instance.new("Texture")
Texture22.Color3 = Color3.fromRGB(170, 170, 255)
Texture22.Texture = "rbxassetid://1203962729"
Texture22.OffsetStudsV = 2.8
Texture22.StudsPerTileV = 4
Texture22.StudsPerTileU = 4
Texture22.Parent = Part12

local nowall3 = Instance.new("Folder")
nowall3.Name = "nowall"
nowall3.Parent = Part12

local Part13 = Instance.new("Part")
Part13.Anchored = true
Part13.BottomSurface = Enum.SurfaceType.Smooth
Part13.TopSurface = Enum.SurfaceType.Smooth
Part13.Material = Enum.Material.Brick
Part13.Size = Vector3.new(36, 24, 1)
Part13.CFrame = CFrame.new(-22, 12.232467651367, 6.5)
Part13.Parent = MainModel

local Texture23 = Instance.new("Texture")
Texture23.Color3 = Color3.fromRGB(170, 170, 255)
Texture23.Texture = "rbxassetid://1203962729"
Texture23.OffsetStudsV = 0.8
Texture23.StudsPerTileV = 4
Texture23.StudsPerTileU = 4
Texture23.Parent = Part13

local Part14 = Instance.new("Part")
Part14.Anchored = true
Part14.BottomSurface = Enum.SurfaceType.Smooth
Part14.TopSurface = Enum.SurfaceType.Smooth
Part14.Material = Enum.Material.Brick
Part14.Size = Vector3.new(2, 90, 102)
Part14.CFrame = CFrame.new(-101, 45, -64)
Part14.Parent = MainModel

local Texture24 = Instance.new("Texture")
Texture24.Face = Enum.NormalId.Right
Texture24.Color3 = Color3.fromRGB(170, 170, 255)
Texture24.Texture = "rbxassetid://1203962729"
Texture24.OffsetStudsU = 3
Texture24.OffsetStudsV = 3
Texture24.StudsPerTileV = 4
Texture24.StudsPerTileU = 4
Texture24.Parent = Part14

local Part15 = Instance.new("Part")
Part15.Anchored = true
Part15.BottomSurface = Enum.SurfaceType.Smooth
Part15.TopSurface = Enum.SurfaceType.Smooth
Part15.Material = Enum.Material.Brick
Part15.Size = Vector3.new(60, 13, 20)
Part15.CFrame = CFrame.new(-70, 6.7324676513672, -4)
Part15.Parent = MainModel

local Texture25 = Instance.new("Texture")
Texture25.Color3 = Color3.fromRGB(170, 170, 255)
Texture25.Texture = "rbxassetid://1203962729"
Texture25.OffsetStudsU = 0.1
Texture25.OffsetStudsV = 3.8
Texture25.StudsPerTileV = 4
Texture25.StudsPerTileU = 4
Texture25.Parent = Part15

local Texture26 = Instance.new("Texture")
Texture26.Face = Enum.NormalId.Right
Texture26.Color3 = Color3.fromRGB(170, 170, 255)
Texture26.Texture = "rbxassetid://1203962729"
Texture26.OffsetStudsV = 3.8
Texture26.StudsPerTileV = 4
Texture26.StudsPerTileU = 4
Texture26.Parent = Part15

local nowall4 = Instance.new("Folder")
nowall4.Name = "nowall"
nowall4.Parent = Part15

local Part16 = Instance.new("Part")
Part16.Anchored = true
Part16.BottomSurface = Enum.SurfaceType.Smooth
Part16.TopSurface = Enum.SurfaceType.Smooth
Part16.Material = Enum.Material.Brick
Part16.Size = Vector3.new(30, 37, 3)
Part16.CFrame = CFrame.new(-22, 18.5, -187.5)
Part16.Parent = MainModel

local Texture27 = Instance.new("Texture")
Texture27.Face = Enum.NormalId.Back
Texture27.Color3 = Color3.fromRGB(170, 170, 255)
Texture27.Texture = "rbxassetid://1203962729"
Texture27.OffsetStudsU = 3
Texture27.StudsPerTileV = 4
Texture27.StudsPerTileU = 4
Texture27.Parent = Part16

local Part17 = Instance.new("Part")
Part17.Anchored = true
Part17.BottomSurface = Enum.SurfaceType.Smooth
Part17.TopSurface = Enum.SurfaceType.Smooth
Part17.Material = Enum.Material.Brick
Part17.Size = Vector3.new(157, 32, 1)
Part17.CFrame = CFrame.new(-22.400001525879, 29.032466888428, -13.5)
Part17.Parent = MainModel

local Texture28 = Instance.new("Texture")
Texture28.Face = Enum.NormalId.Bottom
Texture28.Color3 = Color3.fromRGB(170, 170, 255)
Texture28.Texture = "rbxassetid://1203962729"
Texture28.OffsetStudsU = 3.0999999
Texture28.OffsetStudsV = 3
Texture28.StudsPerTileV = 4
Texture28.StudsPerTileU = 4
Texture28.Parent = Part17

local Texture29 = Instance.new("Texture")
Texture29.Color3 = Color3.fromRGB(170, 170, 255)
Texture29.Texture = "rbxassetid://1203962729"
Texture29.StudsPerTileV = 4
Texture29.StudsPerTileU = 4
Texture29.Parent = Part17

local Texture30 = Instance.new("Texture")
Texture30.Face = Enum.NormalId.Top
Texture30.Color3 = Color3.fromRGB(170, 170, 255)
Texture30.Texture = "rbxassetid://1203962729"
Texture30.OffsetStudsV = 3
Texture30.StudsPerTileV = 4
Texture30.StudsPerTileU = 4
Texture30.Parent = Part17

local nowall5 = Instance.new("Folder")
nowall5.Name = "nowall"
nowall5.Parent = Part17

local Part18 = Instance.new("Part")
Part18.Anchored = true
Part18.BottomSurface = Enum.SurfaceType.Smooth
Part18.TopSurface = Enum.SurfaceType.Smooth
Part18.Material = Enum.Material.Brick
Part18.Size = Vector3.new(2, 90, 102)
Part18.CFrame = CFrame.new(57, 45, -64)
Part18.Parent = MainModel

local Texture31 = Instance.new("Texture")
Texture31.Face = Enum.NormalId.Left
Texture31.Color3 = Color3.fromRGB(170, 170, 255)
Texture31.Texture = "rbxassetid://1203962729"
Texture31.OffsetStudsU = 3
Texture31.OffsetStudsV = 3
Texture31.StudsPerTileV = 4
Texture31.StudsPerTileU = 4
Texture31.Parent = Part18

local trigger = Instance.new("Part")
trigger.Name = "trigger"
trigger.Anchored = true
trigger.BottomSurface = Enum.SurfaceType.Smooth
trigger.CanCollide = false
trigger.TopSurface = Enum.SurfaceType.Smooth
trigger.Transparency = 1
trigger.Color = Color3.fromRGB(255, 0, 0)
trigger.Material = Enum.Material.Glass
trigger.Size = Vector3.new(33.900001525879, 35.200000762939, 1.0999999046326)
trigger.CFrame = CFrame.new(-22.64999961853, 17.600002288818, -115.65000152588)
trigger.Parent = MainModel

local glass = Instance.new("Part")
glass.Name = "glass"
glass.Anchored = true
glass.CanCollide = false
glass.BottomSurface = Enum.SurfaceType.Smooth
glass.TopSurface = Enum.SurfaceType.Smooth
glass.Transparency = 0.5
glass.Material = Enum.Material.Glass
glass.Size = Vector3.new(28, 12.25, 4)
glass.CFrame = CFrame.new(-22, 51.107, -12)
glass.Parent = RustyShowdown
glass.Color = Color3.fromRGB(170, 255, 255)


local nowall = Instance.new("Folder",glass)
nowall.Name = "nowall"

clone = glass:Clone()
clone.Parent = RustyShowdown
clone.Name = "breakable"
clone.Transparency = 1

local slide = Instance.new("Part")
slide.Name = "slide"
slide.Anchored = true
slide.BottomSurface = Enum.SurfaceType.Smooth
slide.TopSurface = Enum.SurfaceType.Smooth
slide.Material = Enum.Material.DiamondPlate
slide.Size = Vector3.new(36, 13, 1)
slide.CFrame = CFrame.new(-22, 7.032, -11.5)
slide.Parent = RustyShowdown

local hat2 = Iserv:CreateMeshPartAsync("rbxassetid://1225132197",0,0)
hat2.Name = "hat2"
hat2.Anchored = true
hat2.CanCollide = false
hat2.Size = Vector3.new(51.509948730469, 46.201419830322, 51.509948730469)
hat2.CFrame = CFrame.new(-57.638973236084, -27.050018310547, -34.324974060059, -3.8892030715942e-05, 0, 0.9999994635582, 0, 1, 0, -0.9999994635582, 0, -3.8892030715942e-05)
hat2.TextureID = "rbxassetid://1225132202"
hat2.Parent = RustyShowdown

local hat3 = Iserv:CreateMeshPartAsync("rbxassetid://1223703285",0,0)
hat3.Name = "hat3"
hat3.Anchored = true
hat3.CanCollide = false
hat3.Material = Enum.Material.Pebble
hat3.Size = Vector3.new(46.152, 16.801, 46.152)
hat3.Position = Vector3.new(-127.64, 11, -66.822)
hat3.TextureID = "rbxassetid://1223703291"
hat3.Parent = RustyShowdown

local hat6 = Iserv:CreateMeshPartAsync("rbxassetid://17223121",0,0)
hat6.Name = "hat6"
hat6.Anchored = true
hat6.CanCollide = false
hat6.Material = Enum.Material.Slate
hat6.Size = Vector3.new(22.59797668457, 23.817043304443, 16.036392211914)
hat6.CFrame = CFrame.new(-20.638088226318, 71.949981689453, -10.326465606689)
hat6.TextureID = "rbxassetid://17223117"
hat6.Parent = RustyShowdown

local Leye = Instance.new("Part")
Leye.Name = "Leye"
Leye.Anchored = true
Leye.BottomSurface = Enum.SurfaceType.Smooth
Leye.TopSurface = Enum.SurfaceType.Smooth
Leye.Transparency = 1
Leye.Size = Vector3.new(1, 1, 1)
Leye.CFrame = CFrame.new(-23.5, 71.358535766602, -18.5)
Leye.Parent = hat6

local Reye = Instance.new("Part")
Reye.Name = "Reye"
Reye.Anchored = true
Reye.BottomSurface = Enum.SurfaceType.Smooth
Reye.TopSurface = Enum.SurfaceType.Smooth
Reye.Transparency = 1
Reye.Size = Vector3.new(1, 1, 1)
Reye.CFrame = CFrame.new(-17.5, 71.358535766602, -18)
Reye.Parent = hat6

local hat7 = Iserv:CreateMeshPartAsync("rbxassetid://1225205453",0,0)
hat7.Name = "hat7"
hat7.Anchored = true
hat7.CanCollide = false
hat7.Material = Enum.Material.Slate
hat7.Size = Vector3.new(4.8762950897217, 3.9082474708557, 4.6685132980347)
hat7.CFrame = CFrame.new(-35.639762878418, 94.049987792969, -51.82580947876, -3.8892030715942e-05, 0, 0.9999994635582, 0, 1, 0, -0.9999994635582, 0, -3.8892030715942e-05)
hat7.TextureID = "rbxassetid://1211933378"
hat7.Parent = RustyShowdown

local hat8 = Iserv:CreateMeshPartAsync("rbxassetid://1606016581",0,0)
hat8.Name = "hat8"
hat8.Anchored = true
hat8.CanCollide = false
hat8.Material = Enum.Material.Slate
hat8.Size = Vector3.new(3.5744121074677, 1.8170086145401, 3.5744106769562)
hat8.CFrame = CFrame.new(-8.7396793365479, 91.849983215332, -46.626861572266, -3.8892030715942e-05, 0, 0.9999994635582, 0, 1, 0, -0.9999994635582, 0, -3.8892030715942e-05)
hat8.TextureID = "rbxassetid://1606016597"
hat8.Parent = RustyShowdown

local Meter = Instance.new("Model")
Meter.Name = "Meter"
Meter.WorldPivot = CFrame.new(-36, 71.786308288574, -13, 0, -1, 0, 1, 0, -0, 0, 0, 1)
Meter.Parent = RustyShowdown

local Red = Instance.new("Part")
Red.Name = "Red"
Red.Anchored = true
Red.BottomSurface = Enum.SurfaceType.Smooth
Red.TopSurface = Enum.SurfaceType.Smooth
Red.Color = Color3.fromRGB(255, 0, 0)
Red.Material = Enum.Material.Neon
Red.Size = Vector3.new(18, 4.6, 4.6)
Red.CFrame = CFrame.new(-36, 71.790451049805, -13, 0, -1, 0, 1, 0, -0, 0, 0, 1)
Red.Shape = Enum.PartType.Cylinder
Red.Parent = Meter

local Green = Instance.new("Part")
Green.Name = "Green"
Green.Anchored = true
Green.BottomSurface = Enum.SurfaceType.Smooth
Green.TopSurface = Enum.SurfaceType.Smooth
Green.Color = Color3.fromRGB(0, 255, 0)
Green.Material = Enum.Material.Neon
Green.Size = Vector3.new(0, 4.65, 4.65)
Green.CFrame = CFrame.new(-36, 62.601955413818, -13.02, 0, -1, 0, 1, 0, -0, 0, 0, 1)
Green.Shape = Enum.PartType.Cylinder
Green.Parent = Meter

local settings_ = Instance.new("Folder")
settings_.Name = "settings"
settings_.Parent = RustyShowdown

local bgm = Instance.new("IntValue")
bgm.Name = "bgm"
bgm.Value = 538397150
bgm.Parent = settings_

local bgmP = Instance.new("IntValue")
bgmP.Name = "bgmP"
bgmP.Value = 538397150
bgmP.Parent = settings_

local lighting = Instance.new("Folder")
lighting.Name = "lighting"
lighting.Parent = settings_

local GeographicLatitude = Instance.new("NumberValue")
GeographicLatitude.Name = "GeographicLatitude"
GeographicLatitude.Value = 40
GeographicLatitude.Parent = lighting

local GlobalShadows = Instance.new("BoolValue")
GlobalShadows.Name = "GlobalShadows"
GlobalShadows.Parent = lighting

local fshadowbeebo = Instance.new("Model",RustyShowdown)
fshadowbeebo.Name = "fshadowbeebo1"
fshadowbeebo.WorldPivot = CFrame.new(-31, 5.3000001907349, 0)

local armA = Iserv:CreateMeshPartAsync("rbxassetid://1218978596",0,0)
armA.Name = "armA"
armA.Anchored = true
armA.CanCollide = false
armA.TopSurface = Enum.SurfaceType.Studs
armA.Transparency = 0.5
armA.Color = Color3.fromRGB(200, 0, 150)
armA.Material = Enum.Material.Neon
armA.Size = Vector3.new(0.83024114370346, 1.6604822874069, 0.83024114370346)
armA.CFrame = CFrame.new(-29.860595703125, 4.023449420929, 2.3365020751953e-05, 0.84378951787949, -0.53667390346527, 1.4901161193848e-07, 0.53667372465134, 0.84378969669342, 2.0489096641541e-08, 1.4901161193848e-07, -8.9406967163086e-08, 0.99999994039536)
armA.Parent = fshadowbeebo

local armB = Iserv:CreateMeshPartAsync("rbxassetid://1218978596",0,0)
armB.Name = "armB"
armB.Anchored = true
armB.CanCollide = false
armB.TopSurface = Enum.SurfaceType.Studs
armB.Transparency = 0.5
armB.Color = Color3.fromRGB(200, 0, 150)
armB.Material = Enum.Material.Neon
armB.Size = Vector3.new(0.83024114370346, 1.6604822874069, 0.83024114370346)
armB.CFrame = CFrame.new(-32.05078125, 4.0968751907349, 0, 0.80595481395721, 0.59197700023651, 1.4901161193848e-07, -0.59197705984116, 0.80595475435257, 2.0489096641541e-08, 1.4901161193848e-07, 8.9406967163086e-08, 0.99999994039536)
armB.Parent = fshadowbeebo

local armC = Iserv:CreateMeshPartAsync("rbxassetid://1218979090",0,0)
armC.Name = "armC"
armC.Anchored = true
armC.CanCollide = false
armC.TopSurface = Enum.SurfaceType.Studs
armC.Transparency = 0.5
armC.Color = Color3.fromRGB(200, 0, 150)
armC.Material = Enum.Material.Neon
armC.Size = Vector3.new(0.83024114370346, 1.6604822874069, 0.83024114370346)
armC.CFrame = CFrame.new(-29.293506622314, 3.1318480968475, 2.3365020751953e-05, 0.84378951787949, -0.53667390346527, 1.4901161193848e-07, 0.53667372465134, 0.84378969669342, 2.0489096641541e-08, 1.4901161193848e-07, -8.9406967163086e-08, 0.99999994039536)
armC.Parent = fshadowbeebo

local armD = Iserv:CreateMeshPartAsync("rbxassetid://1218979090",0,0)
armD.Name = "armD"
armD.Anchored = true
armD.CanCollide = false
armD.TopSurface = Enum.SurfaceType.Studs
armD.Transparency = 0.5
armD.Color = Color3.fromRGB(200, 0, 150)
armD.Material = Enum.Material.Neon
armD.Size = Vector3.new(0.83024114370346, 1.6604822874069, 0.83024114370346)
armD.CFrame = CFrame.new(-32.676292419434, 3.2452421188354, 0, 0.80595481395721, 0.59197700023651, 1.4901161193848e-07, -0.59197705984116, 0.80595475435257, 2.0489096641541e-08, 1.4901161193848e-07, 8.9406967163086e-08, 0.99999994039536)
armD.Parent = fshadowbeebo

local dot = Iserv:CreateMeshPartAsync("rbxassetid://1101816611",0,0)
dot.Name = "dot"
dot.Anchored = true
dot.CanCollide = false
dot.TopSurface = Enum.SurfaceType.Studs
dot.Transparency = 0.5
dot.Color = Color3.fromRGB(200, 0, 150)
dot.Material = Enum.Material.Neon
dot.Size = Vector3.new(0.99779886007309, 1.0183435678482, 1.0174226760864)
dot.CFrame = CFrame.new(-30.928871154785, 9.0866413116455, 0, -0.85604399442673, 0.19938181340694, -0.47690171003342, 0.10395303368568, 0.97016930580139, 0.21900914609432, 0.50634175539017, 0.13790620863438, -0.85123425722122)
dot.Parent = fshadowbeebo

local top = Instance.new("Attachment")
top.Name = "top"
top.Parent = dot

local head = Iserv:CreateMeshPartAsync("rbxassetid://1451153549",0,0)
head.Name = "head"
head.Anchored = true
head.CanCollide = false
head.TopSurface = Enum.SurfaceType.Studs
head.Transparency = 0.5
head.Color = Color3.fromRGB(200, 0, 150)
head.Material = Enum.Material.Neon
head.Size = Vector3.new(3.3209645748138, 3.0190587043762, 3.0190587043762)
head.CFrame = CFrame.new(-30.928848266602, 6.0675830841064, 0, 0.99999976158142, -3.911554813385e-08, 1.4901161193848e-07, -3.911554813385e-08, 0.99999982118607, 2.0489096641541e-08, 1.4901161193848e-07, 2.0489096641541e-08, 0.99999994039536)
head.Parent = fshadowbeebo


local top1 = Instance.new("Attachment")
top1.Name = "top"
top1.Position = Vector3.new(0,1.28,0)
top1.Parent = head

local Beam = Instance.new("Beam")
Beam.FaceCamera = true
Beam.Width1 = 0.2
Beam.Width0 = 0.2
Beam.Transparency = NumberSequence.new(0)
Beam.Color = ColorSequence.new(Color3.fromRGB(0, 0, 0))
Beam.Parent = head
Beam.Attachment0 = top
Beam.Attachment1 = top1

local legA = Iserv:CreateMeshPartAsync("rbxassetid://1218978239",0,0)
legA.Name = "legA"
legA.Anchored = true
legA.CanCollide = false
legA.TopSurface = Enum.SurfaceType.Studs
legA.Transparency = 0.5
legA.Color = Color3.fromRGB(200, 0, 150)
legA.Material = Enum.Material.Neon
legA.Size = Vector3.new(1.2634760141373, 1.8612495660782, 1.8220020532608)
legA.CFrame = CFrame.new(-30.396369934082, 1.8266553878784, -0.22644364833832, 0.99779033660889, -0.06644132733345, 1.4901161193848e-07, 0.066441252827644, 0.99779027700424, 2.0489096641541e-08, 1.4901161193848e-07, -1.4901161193848e-08, 0.99999994039536)
legA.Parent = fshadowbeebo

local legB = Iserv:CreateMeshPartAsync("rbxassetid://1218978239",0,0)
legB.Name = "legB"
legB.Anchored = true
legB.CanCollide = false
legB.TopSurface = Enum.SurfaceType.Studs
legB.Transparency = 0.5
legB.Color = Color3.fromRGB(200, 0, 150)
legB.Material = Enum.Material.Neon
legB.Size = Vector3.new(1.2634760141373, 1.8612495660782, 1.8220020532608)
legB.CFrame = CFrame.new(-31.663318634033, 1.8691122531891, -0.22642028331757, 0.99110066890717, 0.13311336934566, 1.4901161193848e-07, -0.13311353325844, 0.99110078811646, 2.0489096641541e-08, 1.4901161193848e-07, 5.5879354476929e-08, 0.99999994039536)
legB.Parent = fshadowbeebo

local torso = Iserv:CreateMeshPartAsync("rbxassetid://1218977827",0,0)
torso.Name = "torso"
torso.Anchored = true
torso.CanCollide = false
torso.TopSurface = Enum.SurfaceType.Studs
torso.Transparency = 0.5
torso.Color = Color3.fromRGB(200, 0, 150)
torso.Material = Enum.Material.Neon
torso.Size = Vector3.new(2.5858237743378, 2.5088374614716, 1.665011048317)
torso.CFrame = CFrame.new(-30.969329833984, 3.6530175209045, 0, 0.99943852424622, 0.033503420650959, 1.4901161193848e-07, -0.033503510057926, 0.99943840503693, 2.0489096641541e-08, 1.4901161193848e-07, -1.9790604710579e-09, 0.99999994039536)
torso.Parent = fshadowbeebo

fshadowbeebo.PrimaryPart = torso
fshadowbeebo:TranslateBy(Vector3.new(-1,0,0))

Beam.Attachment0 = top
Beam.Attachment1 = top1

beeb1 = fshadowbeebo:Clone()
--beeb1.Parent = game.workspace
beeb1:TranslateBy(Vector3.new(11,0,0))
beeb1.Parent = RustyShowdown
beeb1.Name = "fshadowbeebo2"

beeb2 = beeb1:Clone()
--beeb2.Parent = game.workspace
beeb2:TranslateBy(Vector3.new(11,0,0))
beeb2.Parent = RustyShowdown
beeb2.Name = "fshadowbeebo3"
can = true

function reset()
    clone = workspace.RustyShowdown.glass:Clone()
    clone.Parent = workspace.RustyShowdown
    clone.Name = "breakable"
    clone.Transparency = 1
    clone.CanCollide = true
end

workspace.char.Touched:Connect(function(part)
    if workspace:FindFirstChild("RustyShowdown") then
        if part.Name == "clo" then
            workspace.Gravity = 20
            part:Destroy()
        elseif part.Name == "Hurt" or part.Name == "hat2clone" or part.Name == "cloned" or (part.Color == Color3.fromRGB(150,0,200) and part.Material == Enum.Material.Neon) then
            if intsakill then
                stuff.health = 0
            end
            stuff.damage()
        end
    end
end)

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
while true do
    if game.workspace:FindFirstChild("RustyShowdown") then
        if notdone then
            notdone = false
            workspace.RustyShowdown.MainModel.trigger.Touched:Connect(function()
                if can then
                    local incoroute = easy
                    intsakill = oko
                    local buffed = buffedattacks
                    reset()
                    can = false
                    workspace.char.Velocity = Vector3.new(0,0,0)
                    workspace.char.Position = Vector3.new(-20, 10, -90)
                    dodialogue(workspace.RustyShowdown.talk.Intro,"Rusty")
                    stuff.bossfight = true
                    workspace.RustyShowdown.MainModel.trigger.CanCollide = true
                    workspace.RustyShowdown.MainModel.trigger.Transparency = 0.7
                    jhatcd = 300
                    hatcd = 40
                    hatcd2 = 40
                    hatcd3 = 40
                    mhatcd = 80
                    -- turn below into array to set multiple at once
                    hits = 0
                    spawned = false
                    while not can and hits < 5 and game.workspace:FindFirstChild("RustyShowdown") do
                        if not stuff.paused then
                            -- check hit
                            if workspace.RustyShowdown:FindFirstChild("breakable") then
                                --magic hat
                                if hits == 0 or hits == 1 or hits == 3 or hits == 4 then
                                    if hatcd == 0 then
                                    go = false
                                        coroutine.wrap(function()
                                            print(pcall(function()
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
                                                            warnclone.Transparency= 0.5
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
                                            end))
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
                                --shadow beebo
                                if hits == 2 and not spawned then
                                    canclone = true
                                    spawned = true
                                    local tween = TS:Create(workspace.RustyShowdown.slide, TweenInfo.new(
                                        2,
                                        Enum.EasingStyle.Linear,
                                        Enum.EasingDirection.Out
                                        ), {Position = Vector3.new(-22, 20, -11.5)})
                                    tween:Play()
                                    if buffed then
                                        local amount = 5
                                        beb4  = workspace.RustyShowdown.fshadowbeebo3:Clone()
                                        beb4.Parent = workspace.RustyShowdown
                                        beb4.Name = "fshadowbeebo4"
                                        beb5  = workspace.RustyShowdown.fshadowbeebo2:Clone()
                                        beb5.Parent = workspace.RustyShowdown
                                        beb5.Name = "fshadowbeebo5"
                                    else
                                        local amount = 3
                                    end
                                    print(pcall(function()
                                    doshadowbeebo(amount,0.5,0.5)
                                    end))
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
                            else
                                local tween = TS:Create(workspace.char, TweenInfo.new(
                                    1,
                                    Enum.EasingStyle.Linear,
                                    Enum.EasingDirection.Out
                                ), {Position = workspace.char.Position + Vector3.new(0,0,-50)})
                                coroutine.wrap(function()
                                    workspace.char.Anchored = true    
                                    tween:Play()
                                    tween.Completed:wait()
                                    workspace.char.Anchored = false
                                end)()
                                hits = hits + 1
                                if hits ~= 5 then
                                    coroutine.wrap(dodialogue)(workspace.RustyShowdown.talk["Hit" .. tostring(hits)],"Rusty??",true,2)
                                end
                                hatcd = 30
                                hatcd2 = 30
                                if hits == 1 then
                                    stuff.health = math.clamp(stuff.health + 1, 0, 4)
                                    jhatcd = 400
                                elseif hits == 2 then
                                    stuff.health = math.clamp(stuff.health + 1, 0, 4)
                                    jhatcd = 300
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
                                        workspace.RustyShowdown.glass.Color = Color3.fromRGB(255,0,0) 
                                        wait(0.1)
                                        workspace.RustyShowdown.glass.Color = Color3.fromRGB(170, 255, 255) 
                                        wait(0.1)
                                    end
                                end)()
                                workspace.Gravity = 80
                                wait(0.1)
                                reset()
                            end
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
                    workspace.Gravity = 80
                    can = true
                    customtext.Visible = false
                    stuff.bossfight = false
                    if hits == 5 then
                        workspace.RustyShowdown.MainModel.trigger:Destroy()
                        workspace.RustyShowdown.Rusty:Destroy()
                        stuff.spawnice("The Rusty Showdown", 68, Vector3.new(-19, 13.501, -71))
                    end
                    canclone = false
                    for i,v in ipairs(poses) do
                        v:Destroy()
                    end
                    poses = {}
                    allowes = {}
                    workspace.RustyShowdown.MainModel.trigger:Destroy()
                end
            end)
        end
    else
        notdone = true 
    end
    wait()
end
--ignore dis its just to make the amount of lines go to 1750
