data remove storage simpledrawer:main temp.ItemDisplay
data modify storage simpledrawer:main temp.ItemDisplay set from entity @s Item.tag.simpledrawer.Item

scoreboard players set #count_drawer simpledrawer.math 0
execute store result score #count_drawer simpledrawer.math run data get storage simpledrawer:main temp.ItemDisplay.Count
execute if score #count_drawer simpledrawer.math matches 64.. run data modify storage simpledrawer:main temp.ItemDisplay.Count set value 64b
data modify storage simpledrawer:main temp.ItemDisplay.Slot set value 2b


data remove storage simpledrawer:main temp.ItemGUI
data modify storage simpledrawer:main temp.ItemGUI set from block ~ ~ ~ Items[{Slot:2b}]

scoreboard players set #count_display simpledrawer.math 0
scoreboard players set #count_gui simpledrawer.math 0
execute store result score #count_display simpledrawer.math run data get storage simpledrawer:main temp.ItemDisplay.Count
execute store result score #count_gui simpledrawer.math run data get storage simpledrawer:main temp.ItemGUI.Count

scoreboard players set #new_count simpledrawer.math 0
scoreboard players operation #new_count simpledrawer.math = #count_drawer simpledrawer.math
scoreboard players operation #new_count simpledrawer.math -= #count_display simpledrawer.math
scoreboard players operation #new_count simpledrawer.math += #count_gui simpledrawer.math



execute if entity @s[tag=simpledrawer.drawer.filled] unless score #count_drawer simpledrawer.math = #new_count simpledrawer.math run function simpledrawer:drawer/gui/good






data modify block ~ ~ ~ Items append from storage simpledrawer:main temp.ItemDisplay