function bizarre:class_reset

execute as @s run tag @s add class.VoidWalker

##   CLASS ITEMS
give @s amethyst_shard[custom_data={"class_item":1b,"class":"void_walker"},custom_name=[{"text":"Void Shard","italic":false,"color":"#51005c"}],rarity=epic,tooltip_display={hide_tooltip:true,hidden_components:[enchantments]},enchantment_glint_override=true,food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:99999,animation:spyglass,has_consume_particles:0b},use_effects={can_sprint:true,speed_multiplier:1}]
give @s snowball[custom_data={"class_item":1b,"class":"void_walker"},custom_name=[{"text":"Unstable Pocket Void","italic":false,"color":"#51005c"}],rarity=epic,tooltip_display={hide_tooltip:true,hidden_components:[enchantments]},enchantment_glint_override=true,item_model=ender_eye,use_cooldown={seconds:20}]

##   CLASS XP
xp set @s 28 levels
xp set @s 0 points