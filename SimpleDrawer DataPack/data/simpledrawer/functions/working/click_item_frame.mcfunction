
advancement revoke @s only simpledrawer:click_item_frame
tag @s add simpledrawer.adder

execute as @e[type=glow_item_frame,tag=simpledrawer.DrawerItem,distance=..8] unless data entity @s {ItemRotation:0b} run function simpledrawer:working/click/repart