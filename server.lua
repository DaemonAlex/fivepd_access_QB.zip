QBCore = exports['qb-core']:GetCoreObject()
QBCore.Commands.Add("fivepd", "FivePD (Police Only)", {}, false, function(source, args)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player and Player.PlayerData.job.name == 'police' then
        -- We will replace this with actual FivePD functionality or commands later
        TriggerClientEvent('chat:addMessage', source, {
            args = {"[FivePD]", "Hello Officer."}
        })
    else
        TriggerClientEvent('QBCore:Notify', source, 'FivePd Access Denied', 'error')
    end
end)
