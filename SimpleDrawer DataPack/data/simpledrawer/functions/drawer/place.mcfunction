


execute if block ~ ~ ~ minecraft:furnace[facing=north] run summon glow_item_frame ~ ~ ~ {Facing:1b,ItemRotation:4b,Invulnerable:1b,Tags:["simpledrawer.north","simpledrawer.summoned1","simpledrawer.summoned"],Invisible:1b,Fixed:1b,Item:{id:"minecraft:beehive",Count:1b,tag:{CustomModelData:1430000}}}
execute if block ~ ~ ~ minecraft:furnace[facing=south] run summon glow_item_frame ~ ~ ~ {Facing:1b,ItemRotation:0b,Invulnerable:1b,Tags:["simpledrawer.south","simpledrawer.summoned1","simpledrawer.summoned"],Invisible:1b,Fixed:1b,Item:{id:"minecraft:beehive",Count:1b,tag:{CustomModelData:1430000}}}
execute if block ~ ~ ~ minecraft:furnace[facing=east] run summon glow_item_frame ~ ~ ~ {Facing:1b,ItemRotation:6b,Invulnerable:1b,Tags:["simpledrawer.east","simpledrawer.summoned1","simpledrawer.summoned"],Invisible:1b,Fixed:1b,Item:{id:"minecraft:beehive",Count:1b,tag:{CustomModelData:1430000}}}
execute if block ~ ~ ~ minecraft:furnace[facing=west] run summon glow_item_frame ~ ~ ~ {Facing:1b,ItemRotation:2b,Invulnerable:1b,Tags:["simpledrawer.west","simpledrawer.summoned1","simpledrawer.summoned"],Invisible:1b,Fixed:1b,Item:{id:"minecraft:beehive",Count:1b,tag:{CustomModelData:1430000}}}


execute if block ~ ~ ~ minecraft:furnace[facing=north] run summon glow_item_frame ~ ~ ~-1 {Facing:2b,ItemRotation:0b,Invulnerable:1b,Tags:["simpledrawer.north","simpledrawer.summoned2","simpledrawer.summoned"],Invisible:1b,Fixed:1b,Item:{id:"minecraft:barrier",Count:1b,tag:{simpledrawer:{type:"wood",hopper:0}}}}
execute if block ~ ~ ~ minecraft:furnace[facing=south] run summon glow_item_frame ~ ~ ~1 {Facing:3b,ItemRotation:0b,Invulnerable:1b,Tags:["simpledrawer.south","simpledrawer.summoned2","simpledrawer.summoned"],Invisible:1b,Fixed:1b,Item:{id:"minecraft:barrier",Count:1b,tag:{simpledrawer:{type:"wood",hopper:0}}}}
execute if block ~ ~ ~ minecraft:furnace[facing=east] run summon glow_item_frame ~1 ~ ~ {Facing:5b,ItemRotation:0b,Invulnerable:1b,Tags:["simpledrawer.east","simpledrawer.summoned2","simpledrawer.summoned"],Invisible:1b,Fixed:1b,Item:{id:"minecraft:barrier",Count:1b,tag:{simpledrawer:{type:"wood",hopper:0}}}}
execute if block ~ ~ ~ minecraft:furnace[facing=west] run summon glow_item_frame ~-1 ~ ~ {Facing:4b,ItemRotation:0b,Invulnerable:1b,Tags:["simpledrawer.west","simpledrawer.summoned2","simpledrawer.summoned"],Invisible:1b,Fixed:1b,Item:{id:"minecraft:barrier",Count:1b,tag:{simpledrawer:{type:"wood",hopper:0}}}}

function simpledrawer:drawer/generate_id

data modify storage simpledrawer:main temp.ItemPlaced set from block ~ ~ ~ Items[0]
data remove storage simpledrawer:main temp.ItemPlaced.Slot

execute as @e[type=glow_item_frame,tag=simpledrawer.summoned1] at @s run function simpledrawer:drawer/place_entity_block
execute as @e[type=glow_item_frame,tag=simpledrawer.summoned2] at @s run function simpledrawer:drawer/place_entity_item

execute if block ~ ~ ~ minecraft:furnace[facing=north] run setblock ~ ~ ~ minecraft:furnace[facing=north]
execute if block ~ ~ ~ minecraft:furnace[facing=south] run setblock ~ ~ ~ minecraft:furnace[facing=south]
execute if block ~ ~ ~ minecraft:furnace[facing=east] run setblock ~ ~ ~ minecraft:furnace[facing=east]
execute if block ~ ~ ~ minecraft:furnace[facing=west] run setblock ~ ~ ~ minecraft:furnace[facing=west]
tag @e[tag=simpledrawer.summoned1] remove simpledrawer.summoned1
tag @e[tag=simpledrawer.summoned2] remove simpledrawer.summoned2
execute as @e[type=glow_item_frame,tag=simpledrawer.summoned2] run function simpledrawer:drawer/gui/update