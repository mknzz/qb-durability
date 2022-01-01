
local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent("qb-durability:server:ItemQuality")
AddEventHandler("qb-durability:server:ItemQuality", function(data, hp)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    local removing = false
    for i=0, 41 do
        local itemSlot = Player.Functions.GetItemBySlot(i)
        if itemSlot ~= nil then
            if Player.PlayerData.items[i].info.quality == nil and not removing then
                Player.PlayerData.items[i].info.quality = 100
                Player.Functions.SetInventory(Player.PlayerData.items)
            end

            local amount = Config.DurabilityAmount["default"]
            if Config.DurabilityAmount[itemSlot.name] ~= nil then
                amount = Config.DurabilityAmount[itemSlot.name]
            end

            Player.PlayerData.items[i].info.quality = Player.PlayerData.items[i].info.quality - amount
            Player.Functions.SetInventory(Player.PlayerData.items)
            print(itemSlot.name.." removed "..amount.." durability")

            if Player.PlayerData.items[i].info.quality <= 0.0 or Player.PlayerData.items[i].info.quality <= 0 then
                Player.Functions.RemoveItem(itemSlot.name, 1)
                removing = true
                print(itemSlot.name.." removed ")
            end
        end
    end
end)

RegisterServerEvent("qb-durability:server:RemoveItemQuality")
AddEventHandler("qb-durability:server:RemoveItemQuality", function(hp, name)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    for i=0, 41 do
        local itemSlot = Player.Functions.GetItemBySlot(i)
        if itemSlot ~= nil then
            if itemSlot.name == name then
                if itemSlot.info.quality ~= nil then
                    Player.PlayerData.items[i].info.quality = Player.PlayerData.items[i].info.quality - hp
                    Player.Functions.SetInventory(Player.PlayerData.items)
                    if Player.PlayerData.items[i].info.quality <= 0.0 or Player.PlayerData.items[i].info.quality <= 0 then
                        Player.Functions.RemoveItem(itemSlot.name, 1)
                    end
                else
                    Player.PlayerData.items[i].info.quality = 100 - hp
                    Player.Functions.SetInventory(Player.PlayerData.items)
                end
            end
        end
    end
end)