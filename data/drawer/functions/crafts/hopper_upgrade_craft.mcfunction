#craft detection reset
advancement revoke @s only drawer:hopper_upgrade_craft
recipe take @s drawer:hopper_upgrade_craft
clear @s minecraft:knowledge_book 1

#summon item with UUID
summon item ~ ~ ~ {Tags:["SD_summoned"],Item:{id:"minecraft:flint",Count:1b,tag:{display:{Name:'{"text":"Hopper Upgrade","color":"green","italic":false}'},CustomModelData:20,hopperUpgrade:1}}}
data modify entity @e[type=item,tag=SD_summoned,limit=1,sort=nearest] Owner set from entity @s UUID
tag @e remove SD_summoned
