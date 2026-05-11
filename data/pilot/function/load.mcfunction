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