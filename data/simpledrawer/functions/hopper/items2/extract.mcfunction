#say extract2

#reset and set
scoreboard players set nbhopper SD_tempC 0
execute if data block ~ ~ ~ Items[{Slot:2b}] store result score nbhopper SD_tempC run data get block ~ ~ ~ Items[{Slot:2b}].Count

scoreboard players add nbhopper SD_tempC 1
execute if score nbhopper SD_tempC matches ..64 run scoreboard players set @s SD_tempC 0
execute if score nbhopper SD_tempC matches ..64 unless data block ~ ~ ~ Items[{Slot:2b}] run function simpledrawer:hopper/items2/firstextract


execute if data block ~ ~ ~ Items[{Slot:2b}] if score nbhopper SD_tempC matches ..64 store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run scoreboard players get nbhopper SD_tempC
execute if score nbhopper SD_tempC matches ..64 as @e[type=glow_item_frame,tag=SD_selected] run function simpledrawer:hopper/remove1
