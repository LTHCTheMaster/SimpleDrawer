advancement revoke @s only simpledrawer:click

data remove storage simpledrawer:main temp.ItemInput
data modify storage simpledrawer:main temp.ItemInput set from entity @s SelectedItem

scoreboard players set #already simpledrawer.math 0

tag @e[type=glow_item_frame,sort=nearest,predicate=!simpledrawer:not_rotated,distance=..7,tag=simpledrawer.drawer.item,limit=1] add simpledrawer.selected
execute if entity @e[tag=simpledrawer.selected] if data storage simpledrawer:main temp.ItemInput if entity @s[predicate=!simpledrawer:sneaking] run function simpledrawer:repart/simple_fill
execute if entity @e[tag=simpledrawer.selected,tag=simpledrawer.drawer.filled] if score #already simpledrawer.math matches 0 unless data storage simpledrawer:main temp.ItemInput if entity @s[predicate=!simpledrawer:sneaking] run function simpledrawer:repart/simple_unfill

data modify entity @e[tag=simpledrawer.selected,limit=1] ItemRotation set value 0b
tag @e[tag=simpledrawer.selected] remove simpledrawer.selected