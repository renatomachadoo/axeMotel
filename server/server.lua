Citizen.CreateThread(function()
	local stashName = "axeMotel"
	exports.ox_inventory:RegisterStash(stashName, Config.Stash.label, Config.Stash.slots, Config.Stash.weight, true)
end)

RegisterNetEvent("axeMotel:server:enterMotel", function(locationKey)
	local src = source

	local location = Config.Locations[locationKey]

	if not location or location.type ~= "entrance" then
		return
	end

	local playerPed = GetPlayerPed(src)

	if not playerPed then
		return
	end

	SetPlayerRoutingBucket(src, src)

	local coords = location.coordsToTeleport

	SetEntityCoords(playerPed, coords.x, coords.y, coords.z, true, false, false, false)
end)

RegisterNetEvent("axeMotel:server:leaveMotel", function(locationKey)
	local src = source

	local location = Config.Locations[locationKey]

	if not location or location.type ~= "exit" then
		return
	end

	local playerPed = GetPlayerPed(src)

	if not playerPed then
		return
	end

	SetPlayerRoutingBucket(src, 0)

	local coords = location.coordsToTeleport

	SetEntityCoords(playerPed, coords.x, coords.y, coords.z, true, false, false, false)
end)
