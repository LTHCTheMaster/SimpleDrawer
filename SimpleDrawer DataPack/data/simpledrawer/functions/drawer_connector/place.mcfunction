summon glow_item_frame ~ ~ ~ {Facing:1b,ItemRotation:0b,Invulnerable:1b,Tags:["simpledrawer.drawer_connector","simpledrawer.summoned"],Invisible:1b,Silent:1b,Fixed:1b,Item:{id:"minecraft:beehive",Count:1b,tag:{CustomModelData:1430032}}}

setblock ~ ~ ~ barrel
tag @e[tag=simpledrawer.summoned] remove simpledrawer.summoned