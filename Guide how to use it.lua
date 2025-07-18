Here's your full beginner-friendly guide to using the Minecraft UI Library (MinecraftUILib.lua) — specifically how to add buttons, toggles, text, dropdowns, sliders, and make them do custom things like teleport, speed, fly, etc.
Thanks to Team Healrous for making this UI simple ( Healrous OG Net Team C0rD )

---

🎮 Step-by-Step MinecraftUI Guide (Buttons & More)


---

✅ Step 1: Load the Library

Paste this at the very top of your script:

local MinecraftUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Pitcherque/Flat-Minecraft-lib/refs/heads/main/Minecraft_Master_Souce.Master"))()


---

✅ Step 2: Create the Main GUI Window

This sets the title of your hub:

local ui = MinecraftUI:Create("My Minecraft Hub")


---

✅ Step 3: Create a Tab

Every element must go inside a tab:

local mainTab = ui:CreateTab("Main")

You can make more like:

local combatTab = ui:CreateTab("Combat")
local miscTab = ui:CreateTab("Misc")


---

🧩 Now Add UI Elements


---

🔘 Button

Creates a clickable button:

ui:CreateButton("Teleport to Base", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 100, 0)
end, mainTab)


---

🎚️ Slider

Creates a value changer:

ui:CreateSlider("WalkSpeed", 16, 200, 50, function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end, mainTab)


---

✅ Toggle

Turns something on/off:

ui:CreateToggle("Enable Fly", function(state)
    if state then
        -- turn on fly
        print("Flying...")
    else
        -- turn off fly
        print("Stopped flying")
    end
end, mainTab)


---

📄 TextLabel (Display Text)

ui:CreateTextLabel("Welcome to My Minecraft UI!", mainTab)


---

⬇️ Dropdown

Pick from options:

ui:CreateDropdown("Select Team", {"Red", "Blue", "Green"}, function(choice)
    print("Selected:", choice)
end, mainTab)


---

🎯 Example: Full Working GUI with All Elements

local MinecraftUI = loadstring(game:HttpGet("https://pastefy.app/abLbfowX/raw"))()
local ui = MinecraftUI:Create("My Minecraft Hub")
local main = ui:CreateTab("Main")

ui:CreateTextLabel("Welcome to Main Tab", main)

ui:CreateButton("Teleport to Secret Spot", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-123, 50, 456)
end, main)

ui:CreateToggle("Super Speed", function(state)
    local hum = game.Players.LocalPlayer.Character.Humanoid
    hum.WalkSpeed = state and 100 or 16
end, main)

ui:CreateDropdown("Pick Role", {"Runner", "Fighter", "Flyer"}, function(choice)
    print("You picked:", choice)
end, main)

ui:CreateSlider("Jump Power", 50, 300, 100, function(value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
end, main)


---

🧠 Tips

Want To...	Do This

Make new tabs	ui:CreateTab("Tab Name")
Put elements in that tab	Use , yourTab as last argument
Add custom script inside buttons	Replace print() or CFrame.new(...) with any Roblox code
Hide/destroy GUI	Add your own buttons that call MinecraftUILib:Destroy() or hide frames

