scoreboard objectives remove voidwalker.shifted
scoreboard objectives add voidwalker.shifted dummy

scoreboard objectives remove voidwalker.used_item_delay
scoreboard objectives add voidwalker.used_item_delay dummy

scoreboard objectives remove voidwalker.timer
scoreboard objectives add voidwalker.timer dummy

scoreboard objectives remove voidwalker.pocket_thrown
scoreboard objectives add voidwalker.pocket_thrown minecraft.used:minecraft.snowball

scoreboard objectives remove voidwalker.shift_time_xp_math
scoreboard objectives add voidwalker.shift_time_xp_math dummy
scoreboard players set #100 voidwalker.shift_time_xp_math 100
scoreboard players set #400 voidwalker.shift_time_xp_math 400

scoreboard objectives remove voidwalker.shard_projectile_timer
scoreboard objectives add voidwalker.shard_projectile_timer dummy

team remove voidwalker.glow
team add voidwalker.glow
team modify voidwalker.glow color white

##  RESET MIMICS
tag @a remove voidwalker.mimic_host
kill @e[tag=voidwalker.mimic]
execute as @a[tag=!voidwalker.mimic_host] run function voidwalker:summon_void_mimic

##  REMOVE PLAYERS IN VOID
execute as @a[tag=voidwalker.shifted] at @s run function voidwalker:void_shift_reset