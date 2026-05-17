#   Reset advancement trigger
advancement revoke @s only pilot:cycle_element

#   Buffer Handler
execute if score @s pilot.cycle_element_clicked matches 1.. run return fail
scoreboard players set @s pilot.cycle_element_clicked 3

#   Remove temporary tags
tag @s remove pilot.element_charge.combustion
tag @s remove pilot.element_charge.voltagen
tag @s remove pilot.element_charge.umbraflux

#   Cycle selected_element index
scoreboard players add @s pilot.selected_element 1
execute if score @s pilot.selected_element matches 4 run scoreboard players set @s pilot.selected_element 1

#   Temporary tag handler
execute if score @s pilot.selected_element matches 1 run tag @s add pilot.element_charge.combustion
execute if score @s pilot.selected_element matches 2 run tag @s add pilot.element_charge.voltagen
execute if score @s pilot.selected_element matches 3 run tag @s add pilot.element_charge.umbraflux

#   Temporary item model handler
item modify entity @s[tag=pilot.element_charge.combustion] hotbar.8 {"function":"minecraft:set_components","components":{item_model:"bolt_armor_trim_smithing_template"}}
item modify entity @s[tag=pilot.element_charge.voltagen] hotbar.8 {"function":"minecraft:set_components","components":{item_model:"shaper_armor_trim_smithing_template"}}
item modify entity @s[tag=pilot.element_charge.umbraflux] hotbar.8 {"function":"minecraft:set_components","components":{item_model:"flow_armor_trim_smithing_template"}}

#   Additional actions
execute at @s run playsound minecraft:entity.shulker.hurt_closed master @a ~ ~ ~ 0.5 2