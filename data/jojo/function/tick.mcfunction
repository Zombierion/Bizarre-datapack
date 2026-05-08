# 1. TAGGING: Check if a mob is hurt, then check for the KillerQueen player nearby
execute as @e[nbt={HurtTime:10s}] on attacker if entity @s[team=KillerQueen] if items entity @s weapon.mainhand blaze_rod[custom_data={killer_queen:1b}] on origin as @s run tag @s add Explosive

# 2. PARTICLES: Visual confirmation
execute at @e[tag=Explosive] run particle minecraft:flame ~ ~1 ~ 0.2 0.5 0.2 0.05 5

# 3. DETONATION: Spawns the "Primary Bomb"
execute if score @a[team=KillerQueen,limit=1] boomstick-MB2 matches 1.. as @e[tag=Explosive] at @s run summon minecraft:creeper ~ ~ ~ {CustomName:'{"text":"Primary Bomb","color":"#a200ad"}',Fuse:0,ignited:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b}

# 4. RESET: Clear the score and tags
execute if score @a[team=KillerQueen,limit=1] boomstick-MB2 matches 1.. run tag @e[tag=Explosive] remove Explosive
scoreboard players set @a[team=KillerQueen] boomstick-MB2 0