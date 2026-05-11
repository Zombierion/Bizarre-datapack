execute as @e[tag=Explosive] at @s run summon minecraft:creeper 0 0 0 {Tags:["BOMB"],CustomName:{"text":"Primary Bomb","color":"#a200ad"},Fuse:0,ignited:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b}
execute as @e[tag=Explosive] at @s run tp @n[tag=BOMB] @s
execute if score @a[tag=class.KillerQueen,limit=1] boomstick-MB2 matches 1.. run tag @e[tag=Explosive] remove Explosive
scoreboard players set @a[tag=class.KillerQueen] boomstick-MB2 0
execute as @e[tag=Explosive] run tag @s remove Explosive
advancement revoke @a only jojo:use_bomb