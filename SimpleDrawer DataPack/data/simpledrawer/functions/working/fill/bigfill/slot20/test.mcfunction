data modify storage simpledrawer:temp ItemInventory set from entity @p[tag=adder] Inventory[{Slot:20b}]
data remove storage simpledrawer:temp ItemInventory.Count
data remove storage simpledrawer:temp ItemInventory.Slot
execute store success storage simpledrawer:temp bigfilltest byte 1 run data modify storage simpledrawer:temp ItemInventory set from storage simpledrawer:temp ItemDrawer
execute if data storage simpledrawer:temp {bigfilltest:0b} run function simpledrawer:working/fill/bigfill/slot20/fill

    