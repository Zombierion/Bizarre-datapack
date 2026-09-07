execute as @s run scoreboard players operation @s voidwalker.shift_time_xp_math = @s voidwalker.timer
execute as @s run scoreboard players operation @s voidwalker.shift_time_xp_math *= #100 voidwalker.shift_time_xp_math
execute as @s run scoreboard players operation @s voidwalker.shift_time_xp_math /= #400 voidwalker.shift_time_xp_math
execute as @s store result storage voidwalker:data points int 1 run scoreboard players get @s voidwalker.shift_time_xp_math
execute as @s run function voidwalker:apply_shift_xp with storage voidwalker:data