data modify entity @s Motion set from entity @s SavedMotion
data remove entity @s SavedMotion
data merge entity @s {NoGravity:0b,NoAI:0b}
execute at @s run kill @e[type=armor_stand,tag=worldarmorstand,distance=..1]
tag @s remove frozen