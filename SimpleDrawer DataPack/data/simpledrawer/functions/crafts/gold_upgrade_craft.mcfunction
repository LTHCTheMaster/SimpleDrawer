#craft detection reset
advancement revoke @s only simpledrawer:gold_upgrade_craft
advancement grant @s only simpledrawer:upgrade/gold
recipe take @s simpledrawer:gold_upgrade_craft
clear @s minecraft:knowledge_book 1

#summon item with UUID
summon item ~ ~ ~ {Tags:["SD_summoned"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{display:{Lore:['{"translate":"simpledrawer.name","color":"blue","italic":false}'],Name:'{"translate":"simpledrawer.gold_upgrade","color":"gold","italic":false}'},CustomModelData:1430020,setType:"gold"}}}
data modify entity @e[type=item,tag=SD_summoned,limit=1,sort=nearest] Owner set from entity @s UUID
tag @e remove SD_summoned
