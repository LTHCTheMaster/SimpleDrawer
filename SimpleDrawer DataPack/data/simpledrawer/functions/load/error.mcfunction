execute unless score #smithed.custom_block.set load.status matches 1 run tellraw @a [{"translate":"simpledrawer.tellraw_prefix","color":"dark_red"},{"translate":"simpledrawer.load_error.smithed.custom_block","color":"red"}]
execute unless score #smithed.crafter.set load.status matches 1 run tellraw @a [{"translate":"simpledrawer.tellraw_prefix","color":"dark_red"},{"translate":"simpledrawer.load_error.smithed.crafter","color":"red"}]
execute unless score itemio load.status matches 1 run tellraw @a [{"translate":"simpledrawer.tellraw_prefix","color":"dark_red"},{"translate":"simpledrawer.load_error.itemio","color":"red"}]
