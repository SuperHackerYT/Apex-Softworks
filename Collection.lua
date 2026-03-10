-- [[ Created Using Rayfield || Apex Softworks ]] --

local function RunScript(url, gameName)
	local success, err = pcall(function()
		loadstring(game:HttpGet(url, true))()
	end)

	if not success then
		Rayfield:Notify({
			Title = "Wrong Game!",
			Content = "This script is not for "..gameName,
			Duration = 6.7,
			Image = "x"
		})
	end
end

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

Rayfield.Themes = Rayfield.Themes or {}

local Window = Rayfield:CreateWindow({
	Name = "Apex Collection | Scripts Loader",
	Icon = 0,
	LoadingTitle = "Apex Collection Scripts",
	LoadingSubtitle = "by ElvisGamingRoblox",
	ShowText = "Script",

	Theme = {
		TextColor = Color3.fromRGB(225, 235, 245),

		Background = Color3.fromRGB(18, 24, 35),
		Topbar = Color3.fromRGB(22, 30, 45),
		Shadow = Color3.fromRGB(12, 16, 24),

		NotificationBackground = Color3.fromRGB(22, 28, 40),
		NotificationActionsBackground = Color3.fromRGB(225, 235, 245),

		TabBackground = Color3.fromRGB(35, 50, 70),
		TabStroke = Color3.fromRGB(45, 65, 90),
		TabBackgroundSelected = Color3.fromRGB(90, 140, 200),
		TabTextColor = Color3.fromRGB(210, 225, 240),
		SelectedTabTextColor = Color3.fromRGB(20, 40, 70),

		ElementBackground = Color3.fromRGB(28, 42, 60),
		ElementBackgroundHover = Color3.fromRGB(35, 52, 75),
		SecondaryElementBackground = Color3.fromRGB(25, 38, 55),
		ElementStroke = Color3.fromRGB(45, 70, 100),
		SecondaryElementStroke = Color3.fromRGB(40, 62, 90),

		SliderBackground = Color3.fromRGB(40, 90, 160),
		SliderProgress = Color3.fromRGB(60, 120, 200),
		SliderStroke = Color3.fromRGB(80, 150, 230),

		ToggleBackground = Color3.fromRGB(28, 42, 60),
		ToggleEnabled = Color3.fromRGB(60, 120, 200),
		ToggleDisabled = Color3.fromRGB(80, 95, 120),
		ToggleEnabledStroke = Color3.fromRGB(80, 150, 230),
		ToggleDisabledStroke = Color3.fromRGB(95, 110, 140),
		ToggleEnabledOuterStroke = Color3.fromRGB(60, 100, 160),
		ToggleDisabledOuterStroke = Color3.fromRGB(45, 60, 85),

		DropdownSelected = Color3.fromRGB(30, 55, 85),
		DropdownUnselected = Color3.fromRGB(22, 34, 55),

		InputBackground = Color3.fromRGB(28, 42, 60),
		InputStroke = Color3.fromRGB(50, 75, 110),
		PlaceholderColor = Color3.fromRGB(150, 170, 200)
	},

	ToggleUIKeybind = "T"
})

local HttpService = game:GetService("HttpService")

local ToraTab = Window:CreateTab("Scripts for NicheGames", "code")

ToraTab:CreateLabel("This script loader only has a collection of good quality scripts and working scripts that is trusted by many people and does not have random bad scripts", "badge-info")

local USER = "gumanba"
local REPO = "Scripts"
local BRANCH = "main"

local apiUrl = "https://api.github.com/repos/"..USER.."/"..REPO.."/contents?ref="..BRANCH

local success, response = pcall(function()
	return game:HttpGet(apiUrl)
end)

if success then
	local files = HttpService:JSONDecode(response)

	for _, file in ipairs(files) do
		if file.type == "file" then
			local scriptName = file.name
			local rawUrl = "https://raw.githubusercontent.com/"..USER.."/"..REPO.."/"..BRANCH.."/"..scriptName

			ToraTab:CreateButton({
				Name = scriptName,
				Callback = function()
					loadstring(game:HttpGet(rawUrl))()
				end
			})
		end
	end
else
	ToraTab:CreateLabel("Please check your internet connection or use vpn. Github might not available in your region or you hit rate limit.")
end

local MainTab = Window:CreateTab("Main", "square-menu")

MainTab:CreateLabel("This script loader only has a collection of good quality scripts and working scripts that is trusted by many people and does not have random bad scripts", "badge-info")

MainTab:CreateButton({
   Name = "Nicuse Hub (KeySystem)",
   Callback = function()
   loadstring(game:HttpGet("https://loader.nicuse.xyz"))()
   end,
})

MainTab:CreateButton({
   Name = "Overflow Hub (KeySystem) ",
   Callback = function()
   loadstring(game:HttpGet("https://overflow.cx/loader.html"))()
   end,
})

MainTab:CreateButton({
   Name = "Express Hub (Keyless)",
   Callback = function()
   loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/d8824b23a4d9f2e0d62b4e69397d206b.lua"))()
   end,
})

MainTab:CreateButton({
   Name = "Ather Hub (KeySystem)",
   Callback = function()
   loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/2529a5f9dfddd5523ca4e22f21cceffa.lua"))()
   end,
})

MainTab:CreateButton({
   Name = "Soluna Universal (Keyless)",
   Callback = function()
   loadstring(game:HttpGet("https://soluna-script.vercel.app/universal.lua", true))()
   end,
})

MainTab:CreateButton({
   Name = "HaxHub Universal (KeySystem)",
   Callback = function()
   loadstring(game:HttpGet(('https://raw.githubusercontent.com/haxhell/haxkey/refs/heads/main/haxkey.lua'),true))()
   end,
})

local UtilityTab = Window:CreateTab("Utility", "code")

UtilityTab:CreateLabel("This script loader only has a collection of good quality scripts and working scripts that is trusted by many people and does not have random bad scripts", "badge-info")

UtilityTab:CreateButton({
   Name = "Dex Explorer",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/ltseverydayyou/uuuuuuu/refs/heads/main/DexPlusBackup.luau"))()
   end,
})

UtilityTab:CreateButton({
   Name = "TP Walk (Speed Bypass)",
   Callback = function()
   loadstring(game:HttpGet("https://paste.rs/H4SP0"))()
   end,
})

UtilityTab:CreateButton({
   Name = "Nameless Admin (Best Admin Script)",
   Callback = function()
   loadstring(game:HttpGet("https://github.com/ltseverydayyou/Nameless-Admin/blob/main/Source.lua?raw=MyMomIsKindaHomeless"))()
   end,
})

UtilityTab:CreateButton({
   Name = "Infinite Yield (The OG Admin Script)",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
   end,
})

UtilityTab:CreateButton({
   Name = "Desync (OP & All Games)",
   Callback = function()
   loadstring(game:HttpGet("https://api.junkie-development.de/api/v1/luascripts/public/a4a51edce7d45e520ef282f1adb6a3cd5414c04ac0e87bd21577c13cf2f5e4df/download"))()
   end,
})

UtilityTab:CreateButton({
   Name = "Fly GUI",
   Callback = function()
   loadstring(game:HttpGet("https://paste.rs/TvQvy"))()
   end,
})

UtilityTab:CreateButton({
   Name = "KillBrick GOD Mode",
   Callback = function()
   loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Universal-god-mode-script-35373"))()
   end,
})

local TrendingTab = Window:CreateTab("Scripts for Trending Games", "flame")

TrendingTab:CreateLabel("This script loader only has a collection of good quality scripts and working scripts that is trusted by many people and does not have random bad scripts", "badge-info")

TrendingTab:CreateButton({
	Name = "99 Nights in the Forest (Voidware)",
	Callback = function()
		RunScript(
			"https://raw.githubusercontent.com/VapeVoidware/VW-Add/main/nightsintheforest.lua",
			"99 Nights in the Forest"
		)
	end
})

TrendingTab:CreateButton({
	Name = "Bedwars (Voidware)",
	Callback = function()
		RunScript(
			"https://raw.githubusercontent.com/VapeVoidware/VWRewrite/main/NewMainScript.lua",
			"Bedwars"
		)
	end
})

TrendingTab:CreateButton({
	Name = "Blindshot (NitoHub)",
	Callback = function()
		RunScript(
			"https://raw.githubusercontent.com/prostone55/NitoHub/refs/heads/main/BlindShot.lua",
			"Blindshot"
		)
	end
})

TrendingTab:CreateButton({
	Name = "BloxFruits (RedzHub)",
	Callback = function()
		RunScript(
			"https://raw.githubusercontent.com/huy384/redzHub/refs/heads/main/redzHub.lua",
			"Blox Fruits"
		)
	end
})

TrendingTab:CreateButton({
	Name = "Fish it (ViKaiHub)",
	Callback = function()
		RunScript(
			"https://raw.githubusercontent.com/vinxonez/ViKai-HUB/refs/heads/main/loader",
			"Fish It"
		)
	end
})

TrendingTab:CreateButton({
	Name = "Brookhaven (Admin Script)",
	Callback = function()
		RunScript(
			"https://obj.wearedevs.net/200522/scripts/Brookhaven%20Roblox%20Script.lua",
			"Brookhaven"
		)
	end
})

TrendingTab:CreateButton({
	Name = "Steal A Brainrot (Popular Script)",
	Callback = function()
		RunScript(
			"https://pandadevelopment.net/virtual/file/786f6adee793ec97",
			"Steal A Brainrot"
		)
	end
})

TrendingTab:CreateButton({
	Name = "Grow A Garden (DarkSpawner)",
	Callback = function()
		RunScript(
			"https://api.rubis.app/v2/scrap/ESD4aki9LCbIUAfF/raw",
			"Grow A Garden"
		)
	end
})

TrendingTab:CreateButton({
	Name = "Escape Tsunami For Brainrots (KaitoHub)",
	Callback = function()
		RunScript(
			"https://raw.githubusercontent.com/Kaitofyp/Escape-Tsunami-For-Brainrots-Op-Script/refs/heads/main/obf_OU2411s2e4ZO7tD5k2mr0rLSfGlb6zE0Npq7697cnB2B0A213t6d2DUX620qw1E9.lua.txt",
			"Escape Tsunami For Brainrots"
		)
	end
})

TrendingTab:CreateButton({
	Name = "The Forge (Haze Hub)",
	Callback = function()
		RunScript(
			"https://haze.wtf/api/script",
			"The Forge"
		)
	end
})

TrendingTab:CreateButton({
	Name = "Rivals (Soluna)",
	Callback = function()
		RunScript(
			"https://soluna-script.vercel.app/main.lua",
			"Rivals"
		)
	end
})

local InfoTab = Window:CreateTab("Information", "info")

InfoTab:CreateLabel("Apex Softworks", "badge-info")
InfoTab:CreateLabel("Developed & Owned By @elvisgamingroblox on YouTube")