tag @e[type=item,nbt={Item:{id:"minecraft:furnace"},Age:0s},limit=1,sort=nearest,distance=..1] add simpledrawer.dropped_item
execute unless entity @e[tag=simpledrawer.dropped_item] run summon item ~ ~ ~ {Tags:["simpledrawer.dropped_item"],Item:{id:"minecraft:barrier",Count:1b},Age:1s}

execute store result score #model simpledrawer.math run data get entity @s Item.tag.CustomModelData


scoreboard players operation #test_id simpledrawer.math = @s simpledrawer.id
execute as @e[type=minecraft:glow_item_frame,tag=simpledrawer.drawer.item] if score @s simpledrawer.id = #test_id simpledrawer.math run function simpledrawer:drawer/destroy_item




tag @e[type=item,tag=simpledrawer.dropped_item] remove simpledrawer.dropped_item
kill @e[type=item,nbt={Age:0s},sort=nearest,distance=..1]
kill @s