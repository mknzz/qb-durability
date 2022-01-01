# qb-durability

A very simple item degrading system for QB

How to install
1. Replace your current qb-inventory with https://github.com/mknzz/qb-inventory OR you can manually copy the changes from https://github.com/mknzz/qb-inventory/commit/5bc5e2016e2b44d18fb2568d108b874c5e208e47 to your app.js
2. Check config.lua
3. You're good to go!

How to remove durability from a specific item
```
Example
local remove = 30 //how much quality you want to remove
local itemname = "lockpick" //name of the item you want to remove the quality from
TriggerServerEvent('qb-durability:server:RemoveItemQuality', remove, itemname)
```

Quick preview - https://gyazo.com/57dbbefb0f85ed4df038996b54d7faba
Quick preview manually removing quality - https://gyazo.com/3f0c2adba09e6f10dbaa1e7bf0d2d8e1

Credits to NathanERP's qb-durability for the idea
