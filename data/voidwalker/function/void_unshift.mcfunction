##  PRE EFFECTS
playsound block.bell.resonate master @a ~ ~ ~ 2 0.5
playsound entity.enderman.teleport master @a ~ ~ ~ 1 2
particle reverse_portal ~ ~ ~ 1 1 1 0.1 100 force

##  MIMIC HANDLER
scoreboard players operation .search bizarre.uid = @s bizarre.uid
execute as @n[tag=voidwalker.mimic,predicate=bizarre:uid_search] run tp @s ~ ~ ~
execute in minecraft:overworld run tp @s ~ ~ ~

##  POST EFFECTS
execute in minecraft:overworld run particle portal ~ ~ ~ 1 1 1 0.1 100 force
execute in minecraft:overworld run playsound block.bell.resonate master @a ~ ~ ~ 2 0.5
execute in minecraft:overworld run playsound entity.enderman.teleport master @a ~ ~ ~ 1 2
effect clear @s minecraft:speed
effect clear @s minecraft:jump_boost

##  FINALIZE
scoreboard players set @s voidwalker.shifted 0
tag @s remove voidwalker.shifted