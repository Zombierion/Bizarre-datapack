##  SHIFT HANDLER
execute as @e[tag=voidwalker.shifted] if score @s voidwalker.timer matches 0..399 run scoreboard players add @s voidwalker.timer 2
execute as @e[tag=!voidwalker.shifted] if score @s voidwalker.timer matches 1.. run scoreboard players remove @s voidwalker.timer 1
execute as @e[tag=voidwalker.shifted] at @s if score @s voidwalker.shifted matches 2.. run function voidwalker:void_unshift

##  SHIFT XP DISPLAY
execute as @a[tag=class.VoidWalker] run function voidwalker:update_shift_xp

##  VOID DAMAGE
execute as @e[tag=!class.VoidWalker,tag=voidwalker.shifted] run effect give @s wither 1 1 true
execute as @a[tag=class.VoidWalker,scores={voidwalker.timer=400..},tag=voidwalker.shifted] run effect give @s wither 1 1 true

##  VOID AMBIANCE
execute as @a[tag=!bizarre.respawn,tag=voidwalker.shifted,tag=!voidwalker.ultimate] at @s in minecraft:overworld run particle minecraft:dust{color:[1, 0, 1], scale:1} ~ ~1 ~ 0.25 0.5 0.25 1 10 force
execute as @e[tag=voidwalker.mimic] at @s run particle minecraft:end_rod ~ ~1 ~ 0.1 -0.1 0.1 0.01 1 force
execute as @a[scores={voidwalker.used_item_delay=1..}] run scoreboard players remove @s voidwalker.used_item_delay 1
execute as @a[tag=class.VoidWalker,tag=voidwalker.shifted] run effect give @s speed 1 1 true
execute as @a[tag=class.VoidWalker,tag=voidwalker.shifted] run effect give @s jump_boost 1 1 true

## MIMIC HANDLER
execute as @e[tag=voidwalker.mimic] at @s run function voidwalker:mimic_handler
execute as @a[tag=voidwalker.shifted] at @s run execute as @e[tag=voidwalker.mimic,team=!voidwalker.glow] run function bizarre:clear_entity

## POCKET VOID
execute as @a[tag=class.VoidWalker] if score @s voidwalker.pocket_thrown matches 1.. at @s run function voidwalker:throw_pocket_void
execute as @a[tag=class.VoidWalker] run scoreboard players set @s voidwalker.pocket_thrown 0
execute as @e[type=minecraft:marker,tag=voidwalker.pocketvoid_marker] at @s unless entity @n[type=snowball,distance=..2] run function voidwalker:pocket_void_handler
execute as @e[type=snowball,tag=voidwalker.pocketvoid] at @s run particle minecraft:composter ~ ~ ~ 0.1 0.1 0.1 0.01 3 force @a


## SHARD PROJECTILE
execute as @e[type=marker,tag=voidwalker.shard_tracker] at @s run teleport @s ^ ^ ^0.8
execute as @e[type=marker,tag=voidwalker.shard_tracker] at @s run particle dust{color:[0.88,0.0,1.0],scale:1} ~ ~ ~ 0.05 0.05 0.05 0.005 5 force
execute as @e[type=marker,tag=voidwalker.shard_tracker] run scoreboard players add @s voidwalker.shard_projectile_age 1
execute as @e[type=marker,tag=voidwalker.shard_tracker] at @s unless block ~ ~ ~ air run tag @s add voidwalker.kill_shard
execute as @e[type=marker,tag=voidwalker.shard_tracker] at @s if entity @n[type=!marker,tag=!class.VoidWalker,distance=..2] run function voidwalker:shard_projectile_effects
execute as @e[type=marker,tag=voidwalker.shard_tracker] if score @s voidwalker.shard_projectile_age matches 100.. run tag @s add voidwalker.kill_shard
kill @e[type=marker,tag=voidwalker.kill_shard]
execute as @a[tag=class.VoidWalker] if score @s voidwalker.shard_projectile_timer matches 1.. run scoreboard players remove @s voidwalker.shard_projectile_timer 1