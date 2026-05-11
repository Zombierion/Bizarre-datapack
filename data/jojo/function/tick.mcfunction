execute as @e[nbt={HurtTime:10s}] on attacker if items entity @s weapon.mainhand minecraft:blaze_rod run tag @e remove Explosive
execute as @e[nbt={HurtTime:10s}] on attacker if items entity @s weapon.mainhand minecraft:blaze_rod run tag @e[tag=!class.KillerQueen,nbt={HurtTime:10s}] add Explosive
execute as @e[tag=Explosive] at @s anchored eyes run particle minecraft:infested ~ ~0.5 ~ 0.2 0.2 0.2 0.01 0
execute if score @a[tag=class.KillerQueen,limit=1] boomstick-MB2 matches 1.. as @e[tag=Explosive] run function jojo:primaryexplosion

execute store result storage jojo:playerdata TargetPos.x int 1 run data get entity @n[tag=Explosive] Pos[0] 1
execute store result storage jojo:playerdata TargetPos.y int 1 run data get entity @n[tag=Explosive] Pos[1] 1
execute store result storage jojo:playerdata TargetPos.z int 1 run data get entity @n[tag=Explosive] Pos[2] 1

execute as @e[tag=killerqueen.sha_bomb] at @s if entity @n[type=!#minecraft:not_targetable,type=!silverfish,tag=!SHABOMB,tag=!class.KillerQueen,distance=..1] run function jojo:sheerheartattack
execute as @e[tag=killerqueen.sha_bomb] at @s run playsound block.stone.step hostile @a ~ ~ ~ 0.5 0.5

execute as @a[tag=class.KillerQueen] run function jojo:getpos with storage jojo:playerdata TargetPos

execute as @a[tag=class.KillerQueen] run function jojo:sha_cooldown

execute as @e[tag=killerqueen.sha_bomb] unless score @s killerqueen.sha.timer matches 0 run scoreboard players remove @s killerqueen.sha.timer 1
execute as @e[tag=killerqueen.sha_bomb] if score @s killerqueen.sha.timer matches 0 run function jojo:sheerheartattack
