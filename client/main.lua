
local QBCore = exports['qb-core']:GetCoreObject()

CreateThread(function()
    while true do
        if QBCore ~= nil then
            Wait(Config.Interval * 60000)
            TriggerServerEvent("qb-durability:server:ItemQuality")
        end
    end
end)
