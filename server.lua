QBCore = exports['qb-core']:GetCoreObject()
--We need cmdsfor fivepd
QBCore.Commands.Add("fivepd_help", "FivePD Help Command (Police Only)", {}, false, function(source, args)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player and Player.PlayerData.job.name == 'police' then
        -- We will replace this with actual FivePD functionality or commands
        TriggerClientEvent('chat:addMessage', source, {
            args = {"[FivePD]", "Hello Officer."}
        })
    else
        TriggerClientEvent('QBCore:Notify', source, 'Access Denied', 'error')
    end
end)