# qb-durability

A very simple item degrading system for QB

Goto qb-inventory -> html -> js -> app.js, and then Ctrl+F to find and remove the following lines

``` 
 if (newData.name.split("_")[0] == "weapon") {
 if (!Inventory.IsWeaponBlocked(newData.name)) { 
```

Don't forget to remove the closing brackets

Credits to NathanERP's qb-durability for the idea
