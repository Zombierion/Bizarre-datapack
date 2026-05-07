# 1. Countdown
scoreboard players remove @a[scores={theworldtime=1..}] theworldtime 1

# 2. Tag new entities (Add this to your bow/throw item activation)
# Run this: /tag @e[type=arrow,tag=!frozen] add to_freeze

# 3. Create Statues (Freeze)
execute as @e[tag=to_freeze] at @s run summon item_display ~ ~ ~ {item:{id:"minecraft:arrow",Count:1b},Tags:["frozen_statue"]}
execute as @e[tag=to_freeze] at @s run kill @s

# Apply the tag to the new statue so we can track it
execute as @e[type=item_display,tag=frozen_statue,tag=!is_frozen] run tag @s add is_frozen
execute as @e[type=to_freeze] run tag @e[type=item_display,tag=frozen_statue,distance=..1] add is_frozen

# 4. Cleanup Tags
execute as @e[tag=to_freeze] run tag @s remove to_freeze

# 5. Restore (When timer hits 0)
execute if entity @a[scores={theworldtime=0}] as @e[tag=is_frozen] at @s run summon arrow ~ ~ ~
execute if entity @a[scores={theworldtime=0}] as @e[tag=is_frozen] run kill @s