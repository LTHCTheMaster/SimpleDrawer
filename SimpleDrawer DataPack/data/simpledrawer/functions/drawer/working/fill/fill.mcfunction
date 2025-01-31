
scoreboard players operation #count_total simpledrawer.math = #count_input simpledrawer.math
scoreboard players operation #count_total simpledrawer.math += @s simpledrawer.drawer.Count


execute if score #count_total simpledrawer.math < @s simpledrawer.drawer.maxCount run scoreboard players operation @s simpledrawer.drawer.Count = #count_total simpledrawer.math
execute if score #count_total simpledrawer.math >= @s simpledrawer.drawer.maxCount run scoreboard players operation @s simpledrawer.drawer.Count = @s simpledrawer.drawer.maxCount
function simpledrawer:drawer/working/display/count

#IO compatibility
data modify storage simpledrawer:io output set from storage simpledrawer:io input

scoreboard players operation #count_output simpledrawer.math = #count_total simpledrawer.math
scoreboard players operation #count_output simpledrawer.math -= @s simpledrawer.drawer.maxCount


execute if score #count_output simpledrawer.math matches 0.. store result storage simpledrawer:io output.Count int 1 run scoreboard players get #count_output simpledrawer.math
execute if score #count_output simpledrawer.math matches 0.. run scoreboard players operation #count_output simpledrawer.io = #count_output simpledrawer.math
execute unless score #count_output simpledrawer.math matches 0.. run data modify storage simpledrawer:io output.Count set value 0
execute unless score #count_output simpledrawer.math matches 0.. run scoreboard players set #count_output simpledrawer.io 0

scoreboard players operation #count_insert simpledrawer.io = #count_input simpledrawer.math
scoreboard players operation #count_insert simpledrawer.io -= #count_output simpledrawer.io

execute if score #count_insert simpledrawer.io = @s simpledrawer.drawer.Count run scoreboard players set #nothing_changed simpledrawer.io 1
