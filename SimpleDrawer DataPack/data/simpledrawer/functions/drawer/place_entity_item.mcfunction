tag @s remove simpledrawer.summoned
tag @s remove simpledrawer.summoned2

tag @s add simpledrawer.block
tag @s add simpledrawer.drawer.item
tag @s add simpledrawer.drawer



data modify entity @s Item set from storage simpledrawer:main temp.ItemPlaced

execute if data storage simpledrawer:main temp.ItemPlaced.tag.simpledrawer.Item run tag @s add simpledrawer.drawer.filled
execute if data storage simpledrawer:main temp.ItemPlaced.tag.simpledrawer{hopper:1b} run tag @s add simpledrawer.drawer.hopper
function simpledrawer:drawer/working/set_maxcount
function simpledrawer:drawer/working/display/count

function simpledrawer:drawer/working/display/block