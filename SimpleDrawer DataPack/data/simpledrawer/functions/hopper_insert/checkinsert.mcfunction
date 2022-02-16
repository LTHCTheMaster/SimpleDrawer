scoreboard players set @s simpledrawer.tempC 1

execute if entity @s[tag=simpledrawer.east] positioned ~0.1 ~ ~ run tag @e[type=glow_item_frame,tag=simpledrawer.DrawerItem,sort=nearest,limit=1,tag=simpledrawer.east] add simpledrawer.selected
execute if entity @s[tag=simpledrawer.north] positioned ~ ~ ~-0.1 run tag @e[type=glow_item_frame,tag=simpledrawer.DrawerItem,sort=nearest,limit=1,tag=simpledrawer.north] add simpledrawer.selected
execute if entity @s[tag=simpledrawer.south] positioned ~ ~ ~0.1 run tag @e[type=glow_item_frame,tag=simpledrawer.DrawerItem,sort=nearest,limit=1,tag=simpledrawer.south] add simpledrawer.selected
execute if entity @s[tag=simpledrawer.west] positioned ~-0.1 ~ ~ run tag @e[type=glow_item_frame,tag=simpledrawer.DrawerItem,sort=nearest,limit=1,tag=simpledrawer.west] add simpledrawer.selected




execute if score @s simpledrawer.tempC matches 1 if entity @e[type=glow_item_frame,tag=simpledrawer.selected,tag=simpledrawer.filled] positioned ~ ~-1 ~ if data block ~ ~2 ~ Items[{Slot:0b}] run function simpledrawer:hopper_insert/items0/check
execute if score @s simpledrawer.tempC matches 1 if entity @e[type=glow_item_frame,tag=simpledrawer.selected,tag=!simpledrawer.filled] positioned ~ ~-1 ~ if data block ~ ~2 ~ Items[{Slot:0b}] run function simpledrawer:hopper_insert/items0/first

execute if score @s simpledrawer.tempC matches 1 if entity @e[type=glow_item_frame,tag=simpledrawer.selected,tag=simpledrawer.filled] positioned ~ ~-1 ~ if data block ~ ~2 ~ Items[{Slot:1b}] run function simpledrawer:hopper_insert/items1/check
execute if score @s simpledrawer.tempC matches 1 if entity @e[type=glow_item_frame,tag=simpledrawer.selected,tag=!simpledrawer.filled] positioned ~ ~-1 ~ if data block ~ ~2 ~ Items[{Slot:1b}] run function simpledrawer:hopper_insert/items1/first

execute if score @s simpledrawer.tempC matches 1 if entity @e[type=glow_item_frame,tag=simpledrawer.selected,tag=simpledrawer.filled] positioned ~ ~-1 ~ if data block ~ ~2 ~ Items[{Slot:2b}] run function simpledrawer:hopper_insert/items2/check
execute if score @s simpledrawer.tempC matches 1 if entity @e[type=glow_item_frame,tag=simpledrawer.selected,tag=!simpledrawer.filled] positioned ~ ~-1 ~ if data block ~ ~2 ~ Items[{Slot:2b}] run function simpledrawer:hopper_insert/items2/first

execute if score @s simpledrawer.tempC matches 1 if entity @e[type=glow_item_frame,tag=simpledrawer.selected,tag=simpledrawer.filled] positioned ~ ~-1 ~ if data block ~ ~2 ~ Items[{Slot:3b}] run function simpledrawer:hopper_insert/items3/check
execute if score @s simpledrawer.tempC matches 1 if entity @e[type=glow_item_frame,tag=simpledrawer.selected,tag=!simpledrawer.filled] positioned ~ ~-1 ~ if data block ~ ~2 ~ Items[{Slot:3b}] run function simpledrawer:hopper_insert/items3/first

execute if score @s simpledrawer.tempC matches 1 if entity @e[type=glow_item_frame,tag=simpledrawer.selected,tag=simpledrawer.filled] positioned ~ ~-1 ~ if data block ~ ~2 ~ Items[{Slot:4b}] run function simpledrawer:hopper_insert/items4/check
execute if score @s simpledrawer.tempC matches 1 if entity @e[type=glow_item_frame,tag=simpledrawer.selected,tag=!simpledrawer.filled] positioned ~ ~-1 ~ if data block ~ ~2 ~ Items[{Slot:4b}] run function simpledrawer:hopper_insert/items4/first

tag @e[type=glow_item_frame,tag=simpledrawer.selected] remove simpledrawer.selected
execute unless score @s simpledrawer.tempC matches 1 run scoreboard players set @s simpledrawer.time 8