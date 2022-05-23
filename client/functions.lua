function SpawnDrug(model,maxSpawn,)
	while SpawnedChemicals < maxSpawn do
		Citizen.Wait(50)
		local chemicalsCoords = GeneratechemicalsCoords()
		local pID = PlayerPedId()
		local PlayerData = QBCore.Functions.GetPlayerData()
		--print(PlayerData.metadata['spawneddrugs'])
		if chemicalsCoords ~= nil then		
			--print("DEBUG: "..SpawnedChemicals.." @ "..chemicalsCoords)
			RequestModel(model)
			while not HasModelLoaded(model`) do
				Wait(100)
			end
			local obj = CreateObject(model, chemicalsCoords.x, chemicalsCoords.y, chemicalsCoords.z, false, true, false)
			PlaceObjectOnGroundProperly(obj)
			FreezeEntityPosition(obj, true)
			table.insert(Chemicals, obj)			
			SpawnedChemicals = SpawnedChemicals + 1

			--TriggerServerEvent("QBCore:Server:SetMetaData", "spawnedDrugs", SpawnedChemicals)

		end
	end
end

function GenerateDrugCoords()
	while true do
		Citizen.Wait(1)

		local drugsCoordX, drugsCoordY

		math.randomseed(GetGameTimer())
		local modX = math.random(-20, 20)

		Citizen.Wait(100)

		math.randomseed(GetGameTimer())
		local modY = math.random(-20, 20)

		drugsCoordX = Config.CircleZones.ChemicalsField.coords.x + modX
		drugsCoordY = Config.CircleZones.ChemicalsField.coords.y + modY

		local coordZ = GetCoordZChemicals(drugsCoordX, chemicalsCoordY)
		local coord = vector3(drugsCoordX, drugsCoordY, coordZ)

		if ValidatechemicalsCoord(coord) then
			return coord
		end

	end
end