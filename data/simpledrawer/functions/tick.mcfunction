#Hopper compatibility 

execute if score 7t SD_time matches 0 as @e[type=glow_item_frame,tag=SD_DrawerBlock,tag=SD_hopper] at @s if block ~ ~-1 ~ hopper run function simpledrawer:hopper_extract/checkextract
execute if score 7t SD_time matches 0 as @e[type=glow_item_frame,tag=SD_DrawerBlock,tag=SD_hopper] at @s if block ~ ~1 ~ hopper[facing=down] run function simpledrawer:hopper_insert/checkinsert

#Place and destroy
execute as @a[scores={SD_Place=1..}] at @s run function simpledrawer:place/checkplace
execute as @e[type=glow_item_frame,tag=SD_DrawerBlock] at @s unless block ~ ~ ~ minecraft:beehive run function simpledrawer:destroy/destroy



#Hacks Fixed NBTtag
execute as @e[type=glow_item_frame,tag=SD_DrawerItem] at @s if block ~ ~ ~ air run data modify entity @s Fixed set value 0b
execute as @e[type=glow_item_frame,tag=SD_DrawerItem] at @s unless block ~ ~ ~ air run data modify entity @s Fixed set value 1b

#Test click
execute as @e[type=glow_item_frame,tag=SD_DrawerItem,tag=!filled] unless data entity @s {ItemRotation:0b} run function simpledrawer:working/fill/firstfilltest
execute as @e[type=glow_item_frame,tag=SD_DrawerItem,tag=filled] unless data entity @s {ItemRotation:0b} run function simpledrawer:working/testclick



execute as @e[type=glow_item_frame,tag=SD_DrawerBlock] run data merge entity @s {Fire:1000s}
#scoreboard players reset * SD_tempC
scoreboard players set @a SD_sneak 0
scoreboard players reset @a place


scoreboard players reset * SD_click

scoreboard players add 7t SD_time 1
execute if score 7t SD_time matches 7.. run scoreboard players set 7t SD_time 0


#data remove storage simpledrawer:temp ItemDrawer
#data remove storage simpledrawer:temp ItemHopper
#data remove storage simpledrawer:temp ItemAdded
data remove storage simpledrawer:temp ItemUnfilled
data remove storage simpledrawer:temp Name
data remove storage simpledrawer:temp Count
data remove storage simpledrawer:temp id
data remove storage simpledrawer:temp ItemPlace
data remove storage simpledrawer:temp info