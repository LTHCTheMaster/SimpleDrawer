#craft detection reset
advancement revoke @s only drawer:gold_upgrade_craft
recipe take @s drawer:gold_upgrade_craft
clear @s minecraft:knowledge_book 1

#summon item with UUID
summon item ~ ~ ~ {Tags:["SD_summoned"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{display:{Name:'{"text":"Gold Upgrade","color":"gold","italic":false}'},CustomModelData:2048,setCount:2048}}}
data modify entity @e[type=item,tag=SD_summoned,limit=1,sort=nearest] Owner set from entity @s UUID
tag @e remove SD_summoned
