ESX              = nil
local PlayerData = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

local function has_value (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end

function isPlayerJobPolice()
	for k,v in pairs(ESX.GetPlayerData()) do
		for k,v in pairs(k) do
			print(v)
		end
	end
end

Citizen.CreateThread(function()
	while true do
		-- gets if player is entering vehicle
		if DoesEntityExist(GetVehiclePedIsTryingToEnter(PlayerPedId())) then
			-- gets vehicle player is trying to enter and its lock status
			local xPlayer = ESX.GetPlayerData()
			local veh = GetVehiclePedIsTryingToEnter(PlayerPedId())
			local lock = GetVehicleDoorLockStatus(veh)
				
				-- Get the conductor door angle, open if value > 0.0
				local doorAngle = GetVehicleDoorAngleRatio(veh, 0)
			
				-- normalizes chance
				if cfg.chance > 100 then
					cfg.chance = 100
				elseif cfg.chance < 0 then
					cfg.chance = 0
				end
			
				-- check if got lucky
				local lucky = (math.random(100) < cfg.chance)
			
				-- Set lucky if conductor door is open
				if doorAngle > 0.0 then
					lucky = true
				end
			
				-- check if vehicle is in blacklist
				local blacklisted = false
				for k,model in pairs(cfg.blacklist) do
					if IsVehicleModel(veh, GetHashKey(model)) then
						blacklisted = true
					end
				end

				-- gets ped that is driving the vehicle
				local pedd = GetPedInVehicleSeat(veh, -1)
				local plate = GetVehicleNumberPlateText(veh)
				-- lock doors if not lucky or blacklisted
				if ((lock == 7) or (pedd ~= 0 )) then
					if has_value(cfg.job_whitelist, xPlayer.job.name) then
						TriggerServerEvent('esx_nocarjack:setVehicleDoorsForEveryone', {veh, 1, plate})
					else
						if not lucky or blacklisted then
							TriggerServerEvent('esx_nocarjack:setVehicleDoorsForEveryone', {veh, 2, plate})
						else
							TriggerServerEvent('esx_nocarjack:setVehicleDoorsForEveryone', {veh, 1, plate})
						end
					end
				end
			end
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx_nocarjack:setVehicleDoors')
AddEventHandler('esx_nocarjack:setVehicleDoors', function(veh, doors)
	SetVehicleDoorsLocked(veh, doors)
end)
