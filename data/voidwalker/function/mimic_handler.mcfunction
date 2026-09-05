scoreboard players operation .search bizarre.uid = @s bizarre.uid
execute at @p[predicate=bizarre:uid_search,tag=!voidwalker.shifted] run tp @s ~1000 ~ ~ ~ ~
execute at @p[predicate=bizarre:uid_search,tag=voidwalker.shifted] run tp @s ~ ~500 ~ ~ ~
execute if entity @p[predicate=bizarre:uid_search,predicate=bizarre:sneak_key_down] run data modify entity @s pose set value "crouching"
execute if entity @p[predicate=bizarre:uid_search,predicate=!bizarre:sneak_key_down] run data modify entity @s pose set value "standing"