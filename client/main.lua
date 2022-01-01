
local QBCore = exports['qb-core']:GetCoreObject()

Citizen.CreateThread(function()
    while true do
        if QBCore ~= nil then
            Citizen.Wait(Config.Interval * 60000)
            TriggerServerEvent("qb-durability:server:ItemQuality")
        end
    end
end)