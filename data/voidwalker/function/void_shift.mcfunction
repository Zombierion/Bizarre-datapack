execute as @s run advancement revoke @s only voidwalker:use_shard

execute as @s if score @s voidwalker.used_item_delay matches 1.. run return fail
execute as @s run scoreboard players set @s voidwalker.used_item_delay 3
execute as @s if score @s voidwalker.shifted matches 1.. run scoreboard players set @s voidwalker.timer 0
execute as @s if score @s voidwalker.shifted matches 1.. run return fail
execute as @s run scoreboard players set @s voidwalker.shifted 1
execute as @s run tag @s add voidwalker.shifted
execute as @s at @s run playsound block.bell.resonate master @a ~ ~ ~ 1 2
execute as @s at @s run particle reverse_portal ~ ~ ~ 1 1 1 0.1 100 force
execute as @s at @s run tp ~1000 ~ ~
execute as @s at @s run particle portal ~ ~ ~ 1 1 1 0.1 100 force
execute as @s at @s run playsound block.bell.resonate master @a ~ ~ ~ 1 2
execute as @s run scoreboard players set @s voidwalker.timer 200