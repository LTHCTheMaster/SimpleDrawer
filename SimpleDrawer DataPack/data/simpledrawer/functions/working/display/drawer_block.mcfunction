tag @s add simpledrawer.selected
execute at @s as @e[distance=..1.5,type=minecraft:glow_item_frame,tag=simpledrawer.DrawerBlock] run function simpledrawer:working/test_uuid_for_block

execute at @s run tag @e[scores={simpledrawer.tempC=0},distance=..1.5,tag=simpledrawer.DrawerBlock] add simpledrawer.selected2

#execute unless entity @e[type=glow_item_frame,tag=simpledrawer.selected2] at @s if entity @s[tag=simpledrawer.north] positioned ~ ~ ~0.5 run tag @e[type=glow_item_frame,tag=simpledrawer.DrawerBlock,tag=simpledrawer.north,distance=..0.5,sort=nearest,limit=1] add simpledrawer.selected2
#execute unless entity @e[type=glow_item_frame,tag=simpledrawer.selected2] at @s if entity @s[tag=simpledrawer.south] positioned ~ ~ ~-0.5 run tag @e[type=glow_item_frame,tag=simpledrawer.DrawerBlock,tag=simpledrawer.south,distance=..0.5,sort=nearest,limit=1] add simpledrawer.selected2
#execute unless entity @e[type=glow_item_frame,tag=simpledrawer.selected2] at @s if entity @s[tag=simpledrawer.east] positioned ~-0.5 ~ ~ run tag @e[type=glow_item_frame,tag=simpledrawer.DrawerBlock,tag=simpledrawer.east,distance=..0.5,sort=nearest,limit=1] add simpledrawer.selected2
#execute unless entity @e[type=glow_item_frame,tag=simpledrawer.selected2] at @s if entity @s[tag=simpledrawer.west] positioned ~0.5 ~ ~ run tag @e[type=glow_item_frame,tag=simpledrawer.DrawerBlock,tag=simpledrawer.west,distance=..0.5,sort=nearest,limit=1] add simpledrawer.selected2


scoreboard players set model simpledrawer.tempC 1430000
execute if data entity @s Item.tag.info{hopper:1} run scoreboard players add model simpledrawer.tempC 2
execute if data entity @s Item.tag.info{type:"iron"} run scoreboard players add model simpledrawer.tempC 4
execute if data entity @s Item.tag.info{type:"gold"} run scoreboard players add model simpledrawer.tempC 8
execute if data entity @s Item.tag.info{type:"diamond"} run scoreboard players add model simpledrawer.tempC 12
execute if data entity @s Item.tag.info{type:"star"} run scoreboard players add model simpledrawer.tempC 16
execute if data entity @s Item.tag.info{type:"netherite"} run scoreboard players add model simpledrawer.tempC 20


execute store result entity @e[type=glow_item_frame,tag=simpledrawer.selected2,limit=1] Item.tag.CustomModelData long 1 run scoreboard players get model simpledrawer.tempC

tag @e[type=glow_item_frame,tag=simpledrawer.selected2] remove simpledrawer.selected2
tag @s remove simpledrawer.selected