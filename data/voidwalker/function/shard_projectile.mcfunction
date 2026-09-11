execute if score @s voidwalker.shard_projectile_timer matches 1.. run return fail 
execute anchored eyes run summon marker ~ ~1.5 ~ {Tags:["voidwalker.shard_tracker","voidwalker.just_spawned"]}
execute as @e[type=marker,tag=voidwalker.just_spawned] rotated as @p run teleport @s ~ ~1.5 ~ ~ ~
tag @e[type=marker,tag=voidwalker.just_spawned] remove voidwalker.just_spawned
playsound minecraft:block.amethyst_block.fall master @a ~ ~ ~ 1 1 1
scoreboard players set @s voidwalker.shard_projectile_timer 60