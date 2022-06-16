#GUI
data remove storage simpledrawer:main temp.ItemDisplay
data modify storage simpledrawer:main temp.ItemDisplay set from entity @s Item.tag.simpledrawer.Item

scoreboard players set #count simpledrawer.math 0
execute store result score #count simpledrawer.math run data get storage simpledrawer:main temp.ItemDisplay.Count
execute if score #count simpledrawer.math matches 64.. run data modify storage simpledrawer:main temp.ItemDisplay.Count set value 64b
data modify storage simpledrawer:main temp.ItemDisplay.Slot set value 2b

execute if entity @s[tag=simpledrawer.north] at @s run data modify block ~ ~ ~1 Items append from storage simpledrawer:main temp.ItemDisplay
execute if entity @s[tag=simpledrawer.south] at @s run data modify block ~ ~ ~-1 Items append from storage simpledrawer:main temp.ItemDisplay
execute if entity @s[tag=simpledrawer.west] at @s run data modify block ~1 ~ ~ Items append from storage simpledrawer:main temp.ItemDisplay
execute if entity @s[tag=simpledrawer.east] at @s run data modify block ~-1 ~ ~ Items append from storage simpledrawer:main temp.ItemDisplay

