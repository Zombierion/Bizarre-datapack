#   Attributes
execute as @s[predicate=bizarre:sprint_key_down] run attribute @s movement_speed base set 0.8
execute as @s[predicate=bizarre:sprint_key_down] run attribute @s step_height base set 1

#   Sounds and Particles
execute at @s[predicate=bizarre:sprint_key_down,predicate=!pilot:is_moving] run particle end_rod ~ ~1 ~ 0.5 0.5 0.5 0 1
execute at @s[predicate=bizarre:sprint_key_down,predicate=pilot:is_moving] run particle end_rod ~ ~0.5 ~ 0.1 0.5 0.1 0.01 3
execute at @s[predicate=bizarre:sprint_key_down,predicate=!pilot:is_moving] run playsound block.beacon.ambient player @a ~ ~ ~ 0.2 2
execute at @s[predicate=bizarre:sprint_key_down,predicate=pilot:is_moving] run playsound block.beacon.power_select player @a ~ ~ ~ 0.2 2
execute at @s[predicate=bizarre:sprint_key_down,predicate=pilot:is_moving,nbt={OnGround:1b}] run playsound block.stone.step player @a ~ ~ ~ 0.5 0.5

#   Kill entities on contact
execute as @s[predicate=bizarre:sprint_key_down,predicate=pilot:is_moving] at @n[nbt=!{Invulnerable:1b},distance=..1,tag=!pilot.element_charge.voltagen] run particle block{block_state:"redstone_block"} ~ ~ ~ 1 1 1 1 100 force
execute as @s[predicate=bizarre:sprint_key_down,predicate=pilot:is_moving] at @n[nbt=!{Invulnerable:1b},distance=..1,tag=!pilot.element_charge.voltagen] run playsound minecraft:block.creaking_heart.break master @a ~ ~ ~ 1 0.7
execute as @s[predicate=bizarre:sprint_key_down,predicate=pilot:is_moving] at @n[nbt=!{Invulnerable:1b},distance=..1,tag=!pilot.element_charge.voltagen] run playsound minecraft:block.honey_block.break master @a ~ ~ ~ 2 0.7
execute as @s[predicate=bizarre:sprint_key_down,predicate=pilot:is_moving] at @s run kill @n[nbt=!{Invulnerable:1b},distance=..1,tag=!pilot.element_charge.voltagen]