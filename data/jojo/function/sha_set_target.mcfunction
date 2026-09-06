scoreboard players operation .search bizarre.uid = @s bizarre.uid
data modify entity @s angry_at set from entity @n[type=!#minecraft:not_targetable,tag=!killerqueen.sha_bomb,tag=!SHABOMB,predicate=!bizarre:uid_search] UUID

execute at @s if entity @n[type=!#minecraft:not_targetable,type=!silverfish,tag=!SHABOMB,predicate=!bizarre:uid_search,distance=..2] run function jojo:sheerheartattack
