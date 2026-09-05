scoreboard objectives remove voidwalker.shifted
scoreboard objectives add voidwalker.shifted dummy

scoreboard objectives remove voidwalker.used_item_delay
scoreboard objectives add voidwalker.used_item_delay dummy

scoreboard objectives remove voidwalker.timer
scoreboard objectives add voidwalker.timer dummy

team remove voidwalker.glow
team add voidwalker.glow
team modify voidwalker.glow color light_purple

tag @a remove voidwalker.mimic_host

kill @e[tag=voidwalker.mimic]
execute as @a[tag=!voidwalker.mimic_host] run function voidwalker:summon_void_mimic