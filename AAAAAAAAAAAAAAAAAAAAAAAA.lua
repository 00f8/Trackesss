local url = hook
local http = game:GetService("HttpService")

game.Players.PlayerAdded:Connect(function(plr)
	local data = {
		['embeds'] = {{
			['title'] = "**Player Joined**",
			['description'] = "**" ..plr.Name .. "**".. " Joined **" .. game.Name .. "**",
			["color"] = 8847590,
			["author"] = {
				["name"] = "**Tracker v.1**",
			}
			}}
		
	}
	
	local finaldata = http:JSONEncode(data)
	http:PostAsync(url, finaldata)
end)
