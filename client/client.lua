local DISTANCE_TO_INTERACT = 3.0

---Function to create a blip in coords
---@param coords vector3
---@param spriteId integer
---@param blipColor integer
---@param blipScale? number
---@param blipText? string
local function createBlipForCoords(coords, spriteId, blipColor, blipScale, blipText)
	local newBlipScale = blipScale or 0.7

	local createdBlip = AddBlipForCoord(coords.x, coords.y, coords.z)
	SetBlipSprite(createdBlip, spriteId)
	SetBlipColour(createdBlip, blipColor)
	SetBlipScale(createdBlip, newBlipScale)
	SetBlipAsShortRange(createdBlip, true)

	if blipText then
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(blipText)
		EndTextCommandSetBlipName(createdBlip)
	end
end

local locationActionsEnum = {
	---@param locationKey integer
	["entrance"] = function(locationKey)
		TriggerServerEvent("axeMotel:server:enterMotel", locationKey)
	end,
	---@param locationKey integer
	["exit"] = function(locationKey)
		TriggerServerEvent("axeMotel:server:leaveMotel", locationKey)
	end,
	---@param locationKey integer
	["stash"] = function(locationKey)
		exports.ox_inventory:openInventory("stash", "axeMotel")
	end,
	---@param locationKey integer
	["closet"] = function(locationKey)
		TriggerEvent("qb-clothing:client:openOutfitMenu")
	end,
}

Citizen.CreateThread(function()
	for i = 1, #Config.Locations do
		local currentLocation = Config.Locations[i]
		local locationCoords = currentLocation.coords

		exports.ox_target:addSphereZone({
			coords = locationCoords,
			radius = 2.0,
			options = {
				{
					name = "axeMotel:" .. currentLocation.type .. ":" .. i,
					label = currentLocation.text,
					onSelect = function()
						locationActionsEnum[currentLocation.type](i)
					end,
					distance = DISTANCE_TO_INTERACT,
				},
			},
		})
	end
end)

Citizen.CreateThread(function()
	for i = 1, #Config.Blip.locations do
		local location = Config.Blip.locations[i]
		createBlipForCoords(location, Config.Blip.type, Config.Blip.color, Config.Blip.scale, Config.Blip.text)
	end
end)
