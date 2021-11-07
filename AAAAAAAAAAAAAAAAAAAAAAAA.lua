local url = "https://discord.com/api/webhooks/906452603183980565/zjZYOhjC-JShQJAqsBTub2ZBUDTpAF0BtCthExgwFUjE0GpbA6NeAKb868a7v1yw3Jmc"
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
