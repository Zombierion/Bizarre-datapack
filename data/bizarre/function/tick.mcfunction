##  UID HANDLER
execute as @a unless score @s bizarre.uid matches 0.. run function bizarre:assign_global_uid

##  CUSTOM HEALTH TRACKER
execute as @a[tag=!bizarre.respawn,scores={bizarre.health=..0}] at @s run function bizarre:respawn
execute as @a run function health

##  OUT OF BOUNDS HANDLER
execute as @a[predicate=bizarre:fall_reset,tag=!bizarre.respawn] at @s run function bizarre:death_messages/fell_out_of_world

execute as @a run function bizarre:respawn_handler

effect give @a saturation infinite 255 true