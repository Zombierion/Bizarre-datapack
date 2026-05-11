#   Reset Class
function bizarre:class_reset

tag @s add class.pilot
tellraw @s {"text":"ERR: SYSTEM UNDER REPAIRS", bold:true, color:"red"}
item replace entity @s armor.feet with leather_boots[custom_data={"class_item":1b},enchantments={"pilot:tacb_handler":1,"binding_curse":1b},unbreakable={},enchantment_glint_override=false,tooltip_display={hide_tooltip:1b}]
item replace entity @s hotbar.8 with netherite_upgrade_smithing_template[custom_data={"class_item":1b},consumable={animation:"crossbow",consume_seconds:9999,has_consume_particles:false,sound:entity.shulker.hurt_closed},item_model="bolt_armor_trim_smithing_template",item_name={"text":"Element Battery",italic:false},use_effects={can_sprint:true,speed_multiplier:1},tooltip_display={hide_tooltip:true}]

#   Set element charge
tag @s add pilot.element_charge.combustion
scoreboard players set @s pilot.selected_element 1