QBCore = exports['qb-core']:GetCoreObject()

QBCore.Commands.Add("fivepd", "Access FivePD functionalities (Police Only)", {}, false, function(source, args)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player then
        if Player.PlayerData.job.name == 'police' then
            TriggerClientEvent('chat:addMessage', source, {
                args = {"[FivePD]", "Hello Officer, FivePD functionalities coming soon."}
            })
        else
            TriggerClientEvent('chat:addMessage', source, {
                args = {"[FivePD]", "Access denied: This command is restricted to police officers."}
            })
        end
    else
        print("Error: Player data not found for source ID: " .. source)
    end
end)

