scoreboard objectives add SD_tempC dummy

scoreboard objectives add SD_sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add SD_click dummy
scoreboard objectives add SD_time dummy


scoreboard objectives add SD_Place minecraft.used:minecraft.furnace


tellraw @a {"text":"Loaded SimpleDrawer v1.0.3","color":"green"}

scoreboard players set 64 SD_tempC 64