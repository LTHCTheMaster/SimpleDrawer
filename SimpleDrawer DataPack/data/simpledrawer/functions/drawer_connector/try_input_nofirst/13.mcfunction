execute if score #success_connector simpledrawer.math matches 0 run function simpledrawer:drawer/working/input_nofirst_block
execute if score #success_connector simpledrawer.math matches 0 if score #success simpledrawer.io matches 1 if score #nothing_changed simpledrawer.io matches 0 run item modify block ~ ~ ~ container.13 simpledrawer:set_count_output
execute if score #success_connector simpledrawer.math matches 0 if score #success simpledrawer.io matches 1 if score #nothing_changed simpledrawer.io matches 0 run scoreboard players set #success_connector simpledrawer.math 1



