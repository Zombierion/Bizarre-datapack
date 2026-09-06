execute as @n[type=snowball,tag=!voidwalker.pocketvoid] at @s run tag @s add voidwalker.pocketvoid
execute as @n[type=snowball,tag=voidwalker.pocketvoid] at @s run summon marker ~ ~ ~ {Tags:["voidwalker.pocketvoid_marker"]}
execute as @n[type=marker,tag=voidwalker.pocketvoid_marker] at @s run ride @n[type=marker,tag=voidwalker.pocketvoid_marker] mount @n[type=snowball,tag=voidwalker.pocketvoid]