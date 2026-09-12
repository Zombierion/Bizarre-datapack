##  UUID LINK SETUP
scoreboard objectives remove bizarre.uid
scoreboard objectives add bizarre.uid dummy
execute as @a run function bizarre:assign_global_uid

##  RESPAWN TIMER
scoreboard objectives remove bizarre.respawn
scoreboard objectives add bizarre.respawn dummy
scoreboard objectives remove bizarre.respawn.ticks
scoreboard objectives add bizarre.respawn.ticks dummy
scoreboard players set .respawn_time bizarre.respawn 5
title @a times 0 20 0

##  CUSTOM HEALTH HANDLER
scoreboard objectives remove bizarre.health
scoreboard objectives add bizarre.health dummy

##  CUSTOM STAT HANDLERS
scoreboard objectives remove bizarre.defense
scoreboard objectives add bizarre.defense dummy

##  CLASS STORAGE HANDLER
data remove storage bizarre:class_data classes
data modify storage bizarre:class_data classes set value []

##  CLASS CONSTRUCTOR TEMPLATE
#   Use this template when creating a new class to implement the custom stat system.
#
#- class.mcfunction ----------------------------------------------------------------
# data modify storage bizarre:class_data classes append value {   \
#    "class_id": {                                                \
#        "name": "Class Name",                                    \
#        "health": 100,                                           \
#        "defense": "30",                                         \
#        "attacks": [                                             \
#             {                                                   \
#                "attack_id_1": {                                 \
#                    "base_damage": 30,                           \
#                    "ignores_defense": true                      \
#                }                                                \
#             },                                                  \
#             {                                                   \
#                "attack_id_2": {                                 \
#                    "base_damage": 15,                           \
#                    "ignores_defense": false                     \
#                }                                                \
#             }                                                   \
#        ]                                                        \
#     }                                                           \
# }
#-----------------------------------------------------------------------------------



##  CLASS TEST MESSAGE
tellraw @a [                                                                        \
    {                                                                               \
        "text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n    SELECT YOUR CLASS\n",               \
        bold:true,                                                                  \
        color:"dark_green"                                                        \
    },                                                                              \
    {                                                                               \
        "text":"----------------------\n",                                          \
        "color":"green"                                                           \
    },                                                                              \
    {                                                                               \
        "text":" - Killer Queen\n",                                                 \
        "color":"light_purple",                                                   \
        click_event:{                                                               \
            action:"run_command",                                                   \
            command:"execute as @s run function jojo:init"                          \
        }                                                                           \
    },                                                                              \
    {                                                                               \
        "text":" - The Pilot\n",                                                    \
        "color":"green",                                                          \
        click_event:{                                                               \
            action:"run_command",                                                   \
            command:"execute as @s run function pilot:init"                         \
        }                                                                           \
    },                                                                              \
    {                                                                               \
        "text":" - Void Walker\n",                                                  \
        "color":"black",                                                          \
        click_event:{                                                               \
            action:"run_command",                                                   \
            command:"execute as @s run function voidwalker:init"                    \
        }                                                                           \
    },                                                                              \
    {                                                                               \
        "text":" - RESET CLASS\n",                                                  \
        "color":"dark_red",                                                       \
        "bold": true,                                                               \
        click_event:{                                                               \
            action:"run_command",                                                   \
            command:"execute as @s run function bizarre:class_reset"                \
        }                                                                           \
    }                                                                               \
]