summon minecraft:creeper 0 0 0 {Tags:["SHABOMB"],CustomName:{"text":"Sheer Heart Attack","color":"#a200ad"},Fuse:0,ignited:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,Silent:1b}
execute at @s run playsound entity.generic.explode hostile @a ~ ~ ~ 1 1.7
execute at @s run particle flame ~ ~ ~ 0.1 0.1 0.1 0.2 100 force
tp @n[tag=SHABOMB] @s
tp @s 0 -64 0
kill @s
execute as @a[tag=class.KillerQueen] run scoreboard players set @s killerqueen.sha.cooldown 600