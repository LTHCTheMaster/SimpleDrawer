#This script simply duplicate the slot0 folder to slot1 slot2 slot3 slot4


import os


for i in range(5):
	first="""

scoreboard players set #count simpledrawer.io 1
function simpledrawer:drawer/working/output
data modify storage simpledrawer:io output.Slot set value XXXb
data modify entity @e[tag=simpledrawer.selected_hopper,limit=1] Items append from storage simpledrawer:io output
scoreboard players set #already_extract simpledrawer.math 1
"""

	try_insert="""
data modify storage simpledrawer:main temp.ItemTry set from storage simpledrawer:main temp.ItemsHopper[{Slot:XXXb}]

data modify storage simpledrawer:main temp.ItemTry.Count set from storage simpledrawer:main temp.ItemDrawer.Count
data remove storage simpledrawer:main temp.ItemTry.Slot

execute store success score #!same simpledrawer.math run data modify storage simpledrawer:main temp.ItemTry set from storage simpledrawer:main temp.ItemDrawer
execute if score #!same simpledrawer.math matches 0 run function simpledrawer:drawer/working/minecart_hopper_extract/slotXXX/insert
"""



	insert="""
scoreboard players set #count_max simpledrawer.math 64
data modify entity 00022e98-0000-0378-0000-037800000058 HandItems[0].id set from storage simpledrawer:main temp.ItemTry.id

execute as 00022e98-0000-0378-0000-037800000058 if predicate simpledrawer:stack16 run scoreboard players set #count_max simpledrawer.math 16
execute as 00022e98-0000-0378-0000-037800000058 if predicate simpledrawer:stack1 run scoreboard players set #count_max simpledrawer.math 1


execute store result score #count_hopper simpledrawer.math run data get storage simpledrawer:main temp.ItemsHopper[{Slot:XXXb}].Count

execute if score #count_hopper simpledrawer.math < #count_max simpledrawer.math run function simpledrawer:drawer/working/minecart_hopper_extract/slotXXX/insert_2
"""
	insert_2="""
scoreboard players set #count simpledrawer.io 1
function simpledrawer:drawer/working/output
scoreboard players set #already_extract simpledrawer.math 1
execute store result entity @e[tag=simpledrawer.selected_hopper,limit=1] Items[{Slot:XXXb}].Count byte -1 run data get storage simpledrawer:main temp.ItemsHopper[{Slot:XXXb}].Count -1.000001
"""
	#Write all the files
	
	try:
		os.mkdir("slot"+str(i))
	except:
		pass
	with open("slot"+str(i)+"/first.mcfunction","w") as f:
		f.write(first.replace("XXX",str(i)))
	with open("slot"+str(i)+"/try_insert.mcfunction","w") as f:
		f.write(try_insert.replace("XXX",str(i)))
	with open("slot"+str(i)+"/insert.mcfunction","w") as f:
		f.write(insert.replace("XXX",str(i)))
	with open("slot"+str(i)+"/insert_2.mcfunction","w") as f:
		f.write(insert_2.replace("XXX",str(i)))
	