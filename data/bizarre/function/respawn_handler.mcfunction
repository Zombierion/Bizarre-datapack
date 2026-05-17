execute if score @s bizarre.respawn matches 1.. run tag @s add bizarre.respawn
gamemode spectator @s[tag=bizarre.respawn]
execute unless score @s bizarre.respawn matches ..0 run scoreboard players remove @s bizarre.respawn.ticks 1
execute if score @s bizarre.respawn.ticks matches ..0 unless score @s bizarre.respawn matches ..0 run scoreboard players remove @s bizarre.respawn 1
execute if score @s bizarre.respawn.ticks matches ..0 unless score @s bizarre.respawn matches ..0 run scoreboard players set @s bizarre.respawn.ticks 20
title @s[tag=bizarre.respawn] title [{"text":"Respawning in: "},{"score":{name:"@s",objective:"bizarre.respawn"}}]
execute if score @s[tag=bizarre.respawn] bizarre.respawn matches ..0 run gamemode adventure @s
execute if score @s[tag=bizarre.respawn] bizarre.respawn matches ..0 run function bizarre:clear_entity
execute if score @s bizarre.respawn matches ..0 run tag @s remove bizarre.respawn
