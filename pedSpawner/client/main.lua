Citizen.CreateThread(function()
	if Config.EnablePeds then
		for eji,_ in pairs(Config.Locations) do
			RequestModel(GetHashKey(Config.Locations[eji]["ped"]))
			
			while not HasModelLoaded(GetHashKey(Config.Locations[eji]["ped"])) do
				Wait(1)
			end
			local npc = CreatePed(4, Config.Locations[eji]["ped"], Config.Locations[eji]["coords"][1]["x"], Config.Locations[eji]["coords"][1]["y"], Config.Locations[eji]["coords"][1]["z"], Config.Locations[eji]["coords"][1]["h"], false, true)
			SetEntityHeading(npc, Config.Locations[eji]["coords"][1]["h"])
			FreezeEntityPosition(npc, Config.FreezePeds)
			SetEntityInvincible(npc, Config.GodPeds)
			SetBlockingOfNonTemporaryEvents(npc, true)
		end	
	end
end)
