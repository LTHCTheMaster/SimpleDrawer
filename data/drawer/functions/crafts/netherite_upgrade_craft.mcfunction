#craft detection reset
advancement revoke @s only drawer:netherite_upgrade_craft
recipe take @s drawer:netherite_upgrade_craft
clear @s minecraft:knowledge_book 1

#summon item with UUID
summon item ~ ~ ~ {Tags:["SD_summoned"],Item:{id:"minecraft:netherite_ingot",Count:1b,tag:{display:{Name:'{"text":"Netherite Upgrade","color":"black","italic":false}'},CustomModelData:16777216,setCount:16777216}}}
data modify entity @e[type=item,tag=SD_summoned,limit=1,sort=nearest] Owner set from entity @s UUID
tag @e remove SD_summoned
