execute unless score @s killerqueen.sha.cooldown.ticks matches ..0 run scoreboard players remove @s killerqueen.sha.cooldown.ticks 1
execute if score @s killerqueen.sha.cooldown.ticks matches ..0 unless score @s killerqueen.sha.cooldown matches ..0 run scoreboard players remove @s killerqueen.sha.cooldown 1
execute if score @s killerqueen.sha.cooldown.ticks matches ..0 unless score @s killerqueen.sha.cooldown matches ..0 run scoreboard players set @s killerqueen.sha.cooldown.ticks 20


execute if score @s killerqueen.sha.cooldown matches 1.. run item modify entity @s hotbar.1 {"function":"minecraft:set_components","components":{item_model:"barrier"}}
execute if score @s killerqueen.sha.cooldown matches ..0 run item modify entity @s hotbar.1 {"function":"minecraft:set_components","components":{item_model:"weathered_copper_bulb"}}