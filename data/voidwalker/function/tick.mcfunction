##  SHIFT HANDLER
execute as @e[tag=voidwalker.shifted] if score @s voidwalker.timer matches 1.. run scoreboard players remove @s voidwalker.timer 1
execute as @e[tag=voidwalker.shifted] if score @s voidwalker.timer matches ..0 run function voidwalker:void_unshift

##  VOID AMBIANCE
stopsound @a[tag=!voidwalker.shifted] master minecraft:block.beacon.ambient
execute at @a run playsound minecraft:block.beacon.ambient master @a[tag=voidwalker.shifted] ~ ~ ~ 100 0.75 1
execute as @a[tag=!bizarre.respawn,tag=voidwalker.shifted,tag=!voidwalker.ultimate] at @s run particle minecraft:dust{color:[1, 0, 1], scale:1} ~-1000 ~1.5 ~ 0.25 0.5 0.25 1 10 force
execute as @e[tag=voidwalker.mimic] at @s run particle minecraft:end_rod ~ ~1 ~ 0.1 -0.1 0.1 0.01 1 force
execute as @a[scores={voidwalker.used_item_delay=1..}] run scoreboard players remove @s voidwalker.used_item_delay 1
execute as @a[tag=class.VoidWalker,tag=voidwalker.shifted] at @s run particle minecraft:dust{color:[1, 0, 1], scale:1} ~ ~ ~ 20 20 20 1 100 force

## MIMIC HANDLER
execute as @e[tag=voidwalker.mimic] at @s run function voidwalker:mimic_handler
execute as @a[tag=voidwalker.shifted] at @s run execute as @e[tag=voidwalker.mimic,team=!voidwalker.glow] run function bizarre:clear_entity

## POCKET VOID
execute as @a[tag=class.VoidWalker] if score @s voidwalker.pocket_thrown matches 1.. at @s run function voidwalker:throw_pocket_void
execute as @a[tag=class.VoidWalker] run scoreboard players set @s voidwalker.pocket_thrown 0
execute as @e[type=minecraft:marker,tag=voidwalker.pocketvoid_marker] at @s unless entity @n[type=snowball,distance=..1] run function voidwalker:pocket_void_handler
execute as @e[type=snowball,tag=voidwalker.pocketvoid] at @s run particle minecraft:composter ~ ~ ~ 0.1 0.1 0.1 0.01 3 force @a