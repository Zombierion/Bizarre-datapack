execute as @a[tag=voidwalker.shifted] if score @s voidwalker.timer matches 1.. run scoreboard players remove @s voidwalker.timer 1
execute as @a[tag=voidwalker.shifted] if score @s voidwalker.timer matches ..0 run function voidwalker:void_unshift
execute as @a[tag=voidwalker.shifted] at @s run particle minecraft:dust{color:[1, 0, 1], scale:1} ~-1000 ~1.5 ~ 0.25 0.5 0.25 1 10 force
execute as @a[tag=!voidwalker.shifted] at @s run particle minecraft:end_rod ~1000 ~1 ~ 0 -0.1 0 0.01 1 force
execute as @a[tag=class.VoidWalker,scores={voidwalker.used_item_delay=1..}] run scoreboard players remove @s voidwalker.used_item_delay 1
execute as @a[tag=voidwalker.shifted] at @s run particle minecraft:dust{color:[1, 0, 1], scale:1} ~ ~ ~ 20 20 20 1 100 force

## MIMIC HANDLER
execute as @e[tag=voidwalker.mimic] at @s run function voidwalker:mimic_handler
execute as @a[tag=voidwalker.shifted] at @s run execute as @e[tag=voidwalker.mimic,team=!voidwalker.glow] run function bizarre:clear_entity