##  MIMIC HANDLER
scoreboard players operation .search bizarre.uid = @s bizarre.uid
execute as @n[tag=voidwalker.mimic,predicate=bizarre:uid_search] run tp @s ~ ~ ~
execute in minecraft:overworld run tp @s ~ ~ ~

##  REMOVE EFFECTS
effect clear @s minecraft:speed
effect clear @s minecraft:jump_boost

##  FINALIZE
scoreboard players set @s voidwalker.shifted 0
tag @s remove voidwalker.shifted