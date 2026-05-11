#   Landing detection
execute as @a[tag=class.pilot] if entity @s[nbt={OnGround:1b}] unless score @s pilot.in_air matches 1 run function pilot:combustion/double_jump/has_landed

#   Update previous state
execute as @a[tag=class.pilot] if entity @s[nbt={OnGround:1b}] run scoreboard players set @s pilot.in_air 0
execute as @a[tag=class.pilot] unless entity @s[nbt={OnGround:1b}] run scoreboard players set @s pilot.in_air 1

#   Update air state
execute as @a[tag=class.pilot] unless entity @s[nbt={OnGround:1b}] run scoreboard players add @s pilot.left_ground 1
execute as @a[tag=class.pilot,nbt={OnGround:1b}] run scoreboard players set @s pilot.left_ground 0

#   Update air state
execute as @a[tag=class.pilot,predicate=bizarre:jump_key_down] run scoreboard players add @s pilot.jump_key_down 1
execute as @a[tag=class.pilot,predicate=!bizarre:jump_key_down] run scoreboard players set @s pilot.jump_key_down 0

#   Summon flame trail
execute as @a[tag=class.pilot,nbt={fall_distance:0.0}] if score @s pilot.has_double_jumped matches 1 at @s run particle smoke ~ ~ ~ 0.01 -0.01 0.01 0 1 force

#   Cooldown reducer
scoreboard players remove @a[tag=class.pilot] pilot.cycle_element_clicked 1

#   Apply speed
execute as @a[tag=class.pilot,tag=pilot.element_charge.voltagen] at @s run function pilot:voltagen/apply_speed
execute as @a[tag=class.pilot,predicate=!bizarre:sprint_key_down] run attribute @s movement_speed base reset
execute as @a[tag=class.pilot,predicate=!bizarre:sprint_key_down] run attribute @s step_height base reset
execute as @a[tag=class.pilot,tag=!pilot.element_charge.voltagen] run attribute @s movement_speed base reset
execute as @a[tag=class.pilot,tag=!pilot.element_charge.voltagen] run attribute @s step_height base reset