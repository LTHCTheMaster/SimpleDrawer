scoreboard objectives add SD_tempC dummy

scoreboard objectives add SD_sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add SD_click dummy
scoreboard objectives add SD_time dummy


scoreboard objectives add SD_Place minecraft.used:minecraft.furnace


execute in simpledrawer:intern run forceload add 0 0
scoreboard players set 64 SD_tempC 64

function simpledrawer:print_version