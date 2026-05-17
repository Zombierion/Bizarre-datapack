execute unless score @s pilot.voltagen.heal_ticks matches ..0 run scoreboard players remove @s pilot.voltagen.heal_ticks 1
execute if score @s pilot.voltagen.heal_ticks matches ..0 run scoreboard players add @s bizarre.health 1
execute if score @s pilot.voltagen.heal_ticks matches ..0 run scoreboard players operation @s pilot.voltagen.heal_ticks = .ticks pilot.voltagen.heal_ticks