execute as @a[nbt={SelectedItem:{id:"minecraft:blaze_rod"}}] at @s run tag @e[dx=4,dy=4,dz=4,nbt={HurtTime:10s}] add Explosive
execute at @e[tag=Explosive] run particle minecraft:flame ~ ~1 ~ 0.2 0.5 0.2 0.05 50
execute if score @a[limit=1] boomstick-MB2 matches 1.. run execute as @e[tag=Explosive] at @s run summon minecraft:creeper ~ ~1 ~ {CustomName:[{text:"Primary Bomb",color:"#a200ad"}],Fuse:0s,ignited:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b}
scoreboard players set @a[limit=1] boomstick-MB2 0