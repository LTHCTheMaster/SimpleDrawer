execute if score #smithed.custom_block.major load.status matches 0 if score #smithed.custom_block.minor load.status matches 0 if score #smithed.custom_block.patch load.status matches 1.. run function simpledrawer:load/check_smithed.crafter
execute unless score #simpledrawer load.status matches 1 run function simpledrawer:load/error