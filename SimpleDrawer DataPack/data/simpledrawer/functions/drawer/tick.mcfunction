execute unless predicate simpledrawer:shulker_box_around unless entity @e[type=shulker,distance=..1.8] run data modify entity @s Fixed set value 0b

execute if predicate simpledrawer:shulker_box_around run data modify entity @s Fixed set value 1b
execute if entity @e[type=shulker,distance=..1.8] run data modify entity @s Fixed set value 1b

execute if entity @s[tag=simpledrawer.drawer.to_update] if entity @p[distance=..5] run function simpledrawer:drawer/working/display/count_2
execute if predicate simpledrawer:unless_moving_piston run setblock ~ ~ ~ moving_piston