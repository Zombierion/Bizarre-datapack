##  ELEMENT HANDLER
#   Create selected_element tracker
scoreboard objectives remove pilot.selected_element
scoreboard objectives add pilot.selected_element dummy

#   Create cycle_element_clicked buffer
scoreboard objectives remove pilot.cycle_element_clicked
scoreboard objectives add pilot.cycle_element_clicked dummy

##  DOUBLE JUMP HANDLER
#   Create has_double_jumped tracker
scoreboard objectives remove pilot.has_double_jumped
scoreboard objectives add pilot.has_double_jumped dummy

#   Create in_air tracker
scoreboard objectives remove pilot.in_air
scoreboard objectives add pilot.in_air dummy

#   Create left_ground buffer
scoreboard objectives remove pilot.left_ground
scoreboard objectives add pilot.left_ground dummy

#   Create jump_key_down tracker
scoreboard objectives remove pilot.jump_key_down
scoreboard objectives add pilot.jump_key_down dummy

##  VOLTAGEN HEAL HANDLER
#   Create pilot.heal_ticks buffer
scoreboard objectives remove pilot.voltagen.heal_ticks
scoreboard objectives add pilot.voltagen.heal_ticks dummy
scoreboard players set .ticks pilot.voltagen.heal_ticks 50

##  UMBRAFLUX DODGE HANDLER
#   Create has_dodged tracker
scoreboard objectives remove pilot.has_dodged
scoreboard objectives add pilot.has_dodged dummy

#   Create direction_key_down tracker
scoreboard objectives remove pilot.direction_key_down
scoreboard objectives add pilot.direction_key_down dummy

#   Create direction_key_up tracker
scoreboard objectives remove pilot.direction_key_up
scoreboard objectives add pilot.direction_key_up dummy

#   Create dodge_cooldown buffer
scoreboard objectives remove pilot.dodge_cooldown
scoreboard objectives add pilot.dodge_cooldown dummy