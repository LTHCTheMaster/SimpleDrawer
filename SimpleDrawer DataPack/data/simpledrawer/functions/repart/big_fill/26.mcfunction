
data remove storage simpledrawer:io input
data modify storage simpledrawer:io input set from storage simpledrawer:main temp.ItemPlayer[{Slot:26b}]
function simpledrawer:drawer/working/input
execute if data storage simpledrawer:io {success:1} run item modify entity @p[tag=simpledrawer.adder] container.26 simpledrawer:set_count_output
execute if data storage simpledrawer:io {success:1} run scoreboard players set #already simpledrawer.math 1
