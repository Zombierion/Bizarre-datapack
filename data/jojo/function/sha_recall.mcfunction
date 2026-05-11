advancement revoke @s only jojo:recall_sha
execute as @s at @s as @e[tag=killerqueen.sha_bomb] if score @s bizarre.uid = @p bizarre.uid run execute if score @s killerqueen.sha.timer matches 0 run return fail
execute as @s at @s as @e[tag=killerqueen.sha_bomb] if score @s bizarre.uid = @p bizarre.uid run kill @s
scoreboard players set @s killerqueen.sha.cooldown 600
