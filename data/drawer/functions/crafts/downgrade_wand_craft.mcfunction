#craft detection reset
advancement revoke @s only drawer:downgrade_wand_craft
recipe take @s drawer:downgrade_wand_craft
clear @s minecraft:knowledge_book 1

#summon item with UUID
summon item ~ ~ ~ {Tags:["SD_summoned"],Item:{id:"minecraft:stick",Count:1b,tag:{display:{Name:'{"text":"Downgrade Wrench","color":"white","italic":false}'},CustomModelData:20,downgrade:1}}}
data modify entity @e[type=item,tag=SD_summoned,limit=1,sort=nearest] Owner set from entity @s UUID
tag @e remove SD_summoned