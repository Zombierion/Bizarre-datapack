execute as @e[type=!marker,distance=..3,type=!mannequin] run function voidwalker:void_shift
execute as @e[type=mannequin,distance=..3,tag=voidwalker.mimic] run function voidwalker:pocket_void_mimic
execute as @s at @s run summon lightning_bolt ~ ~ ~
kill