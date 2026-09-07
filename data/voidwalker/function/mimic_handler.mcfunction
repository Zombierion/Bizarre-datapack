scoreboard players operation .search bizarre.uid = @s bizarre.uid
execute at @p[predicate=bizarre:uid_search,tag=!voidwalker.shifted] run execute in voidwalker:the_shift run tp @s ~ ~ ~ ~ ~
execute at @p[predicate=bizarre:uid_search,tag=voidwalker.shifted,predicate=!bizarre:fall_reset] run tp @s 0 400 0
execute if entity @p[predicate=bizarre:uid_search,predicate=bizarre:sneak_key_down] run data modify entity @s pose set value "crouching"
execute if entity @p[predicate=bizarre:uid_search,predicate=!bizarre:sneak_key_down] run data modify entity @s pose set value "standing"