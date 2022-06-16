execute if entity @s[tag=simpledrawer.north] positioned ~ ~ ~1 run function simpledrawer:drawer/tick_positioned
execute if entity @s[tag=simpledrawer.south] positioned ~ ~ ~-1 run function simpledrawer:drawer/tick_positioned
execute if entity @s[tag=simpledrawer.west] positioned ~1 ~ ~ run function simpledrawer:drawer/tick_positioned
execute if entity @s[tag=simpledrawer.east] positioned ~-1 ~ ~ run function simpledrawer:drawer/tick_positioned