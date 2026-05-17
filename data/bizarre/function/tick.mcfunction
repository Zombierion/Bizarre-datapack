execute as @a unless score @s bizarre.uid matches 0.. run function bizarre:assign_global_uid

execute as @a[predicate=bizarre:fall_reset,tag=!bizarre.respawn] run tellraw @a [{"selector":"@s"},{"text":" fell. Womp Womp :)"}]
execute as @a[predicate=bizarre:fall_reset,tag=!bizarre.respawn] run function bizarre:respawn
execute as @a run function bizarre:respawn_handler