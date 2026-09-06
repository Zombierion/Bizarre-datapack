##  PRE EFFECTS
execute as @s at @s run playsound block.bell.resonate master @a ~ ~ ~ 2 0.5
execute as @s at @s run playsound entity.enderman.teleport master @a ~ ~ ~ 1 2
execute as @s at @s run particle reverse_portal ~ ~ ~ 1 1 1 0.1 100 force

##  MIMIC HANDLER
scoreboard players operation .search bizarre.uid = @s bizarre.uid
execute as @n[tag=voidwalker.mimic,predicate=bizarre:uid_search] run tp @s ~ ~ ~
execute as @s at @s run tp @s ~-1000 ~ ~

##  POST EFFECTS
execute as @s at @s run particle portal ~ ~ ~ 1 1 1 0.1 100 force
execute as @s at @s run playsound block.bell.resonate master @a ~ ~ ~ 2 0.5
execute as @s at @s run playsound entity.enderman.teleport master @a ~ ~ ~ 1 2
execute as @s at @s run effect clear @s minecraft:speed
execute as @s at @s run effect clear @s minecraft:jump_boost

##  FINALIZE
execute as @s run scoreboard players set @s voidwalker.shifted 0
execute as @s run tag @s remove voidwalker.shifted