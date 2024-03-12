-- Importing modules and setting up exports as per QBX documentation
local QBX = exports['qbx_core']:GetCoreObject()

local function hasAccess(playerJob)
    local accessibleJobs = {['police'] = true, ['admin'] = true, ['god'] = true}
    return accessibleJobs[playerJob] ~= nil
end

local function sendMessage(source, message)
    TriggerClientEvent('chat:addMessage', source, {
        args = {"[FivePD]", message}
    })
end

local commandCooldown = {}
local cooldownTime = 60

-- Adjusted command registration for QBX
RegisterCommand("fivepd", function(source, args)
    local src = source
    if commandCooldown[src] and os.time() - commandCooldown[src] < cooldownTime then
        sendMessage(src, "Please wait before using this command again.")
        return
    end

    local Player = QBX.Functions.GetPlayer(src)
    if Player then
        if hasAccess(Player.job.name) then
            sendMessage(src, "Hello, access to FivePD functionalities is coming soon.")
            commandCooldown[src] = os.time()
        else
            sendMessage(src, "Access denied: This command is restricted.")
        end
    else
        print("Error: Player data not found for source ID: " .. src)
    end
end, false)

-- Making sure to replace specific function calls and access patterns to match QBX's approach
