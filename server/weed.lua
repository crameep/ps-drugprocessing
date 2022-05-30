local QBCore = exports['qb-core']:GetCoreObject()
local playersProcessingCannabis = {}

RegisterServerEvent('ps-drugprocessing:pickedUpCannabis')
AddEventHandler('ps-drugprocessing:pickedUpCannabis', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)

	Player.Functions.AddItem("cannabis", 1)
	TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["cannabis"], "add")
	TriggerClientEvent('QBCore:Notify', src, Lang:t("success.cannabis"), "success")
end)

RegisterServerEvent('ps-drugprocessing:processCannabis')
AddEventHandler('ps-drugprocessing:processCannabis', function()
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)

	Player.Functions.RemoveItem('cannabis', 1)
	Player.Functions.AddItem('marijuana', 1)
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['cannabis'], "remove")
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['marijuana'], "add")
	TriggerClientEvent('QBCore:Notify', src, Lang:t("success.marijuana"), "success")
	TriggerClientEvent('ps-drugprocessing:CheckForMoreWeed', src, src, "ProcessWeed")
end)

RegisterServerEvent('ps-drugprocessing:rollJoint')
AddEventHandler('ps-drugprocessing:rollJoint', function()
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)

	Player.Functions.RemoveItem('marijuana', 1)
	Player.Functions.RemoveItem('rolling_paper', 1)
	Player.Functions.AddItem('joint', 1)
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['marijuana'], "remove")
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['rolling_paper'], "remove")
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['joint'], "add")
	TriggerClientEvent('QBCore:Notify', src, Lang:t("success.joint"), "success")
	TriggerClientEvent('ps-drugprocessing:CheckForMoreWeed', src, src, "RollJoint", "marijuana")
end)

function CancelProcessing(playerId)
	if playersProcessingCocaLeaf[playerId] then
		ClearTimeout(playersProcessingCocaLeaf[playerId])
		playersProcessingCocaLeaf[playerId] = nil
	end
end

RegisterServerEvent('ps-drugprocessing:cancelProcessing')
AddEventHandler('ps-drugprocessing:cancelProcessing', function()
	CancelProcessing(source)
end)

QBCore.Functions.CreateUseableItem("rolling_paper", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent('ps-drugprocessing:client:rollJoint', source, 'marijuana', item)
end)

RegisterServerEvent('ps-drugprocessing:bagMarijuana')
AddEventHandler('ps-drugprocessing:bagMarijuana', function()
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	local weedbag = Config.WeedBags[math.random(#Config.WeedBags)]
	
	Player.Functions.RemoveItem('marijuana', 1)
	Player.Functions.RemoveItem('empty_weed_bag', 1)
	Player.Functions.AddItem(weedbag, 1)
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['marijuana'], "remove")
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['empty_weed_bag'], "remove")
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[weedbag], "add")
	TriggerClientEvent('QBCore:Notify', src, Lang:t("success.bag_marijuana"), "success")
	TriggerClientEvent('ps-drugprocessing:CheckForMoreWeed', src, src, "BagMarijuana", "marijuana")
end)

QBCore.Functions.CreateUseableItem("marijuana", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	print("Tried to use Marijuana")
    TriggerClientEvent('ps-drugprocessing:client:bagMarijuana', source, 'marijuana', item)
end)
