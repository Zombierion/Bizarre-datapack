particle block{block_state:"redstone_block"} ~ ~ ~ 1 1 1 1 100 force
playsound minecraft:block.creaking_heart.break master @a ~ ~ ~ 1 0.7
playsound minecraft:block.honey_block.break master @a ~ ~ ~ 2 0.7

#   TEMP DEATH HANDLER
execute unless entity @s[type=!player] run tellraw @a [{selector: "@s"},{"text":" was turned into paste by "},{"selector":"@p[tag=pilot.element_charge.voltagen]"}]
execute as @s[type=player] run function bizarre:respawn
execute as @s[type=!player] run function bizarre:clear_entity