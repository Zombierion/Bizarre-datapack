advancement revoke @s only voidwalker:use_shard

execute if score @s voidwalker.used_item_delay matches 1.. run return fail
scoreboard players set @s voidwalker.used_item_delay 3
scoreboard players add @s voidwalker.shifted 1
execute if score @s voidwalker.shifted matches 2.. run return fail
tag @s add voidwalker.shifted
playsound block.bell.resonate master @a ~ ~ ~ 1 2
particle reverse_portal ~ ~ ~ 1 1 1 0.1 100 force
execute in voidwalker:the_shift run tp ~ ~ ~
execute in voidwalker:the_shift run particle portal ~ ~ ~ 1 1 1 0.1 100 force
execute in voidwalker:the_shift run playsound block.bell.resonate master @a ~ ~ ~ 1 2
scoreboard players add @s[tag=class.VoidWalker] voidwalker.timer 20