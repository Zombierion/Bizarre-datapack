advancement revoke @s only jojo:recall_sha
execute if score @s killerqueen.sha.cooldown matches 1.. run return fail
scoreboard players operation .search bizarre.uid = @s bizarre.uid
execute as @e[tag=killerqueen.sha_bomb,predicate=bizarre:uid_search] run function bizarre:clear_entity
scoreboard players set @s killerqueen.sha.cooldown 30
scoreboard players set @s killerqueen.sha.cooldown.ticks 20


##  Detect if entity has matching UUID
#   scoreboard players operation .search bizarre.uid = @s bizarre.uid
#   execute as @?[predicate=bizarre.uid_search] run...