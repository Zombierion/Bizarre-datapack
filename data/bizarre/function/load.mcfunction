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

##  CUSTOM HEALTH HANDLER
scoreboard objectives remove bizarre.health
scoreboard objectives add bizarre.health dummy

##  CUSTOM STAT HANDLERS
scoreboard objectives remove bizarre.defense
scoreboard objectives add bizarre.defense dummy

##  CLASS TEST MESSAGE
tellraw @a [                                                                        \
    {                                                                               \
        "text":"SELECT YOUR CLASS\n",                                               \
        bold:true,                                                                  \
        color:"dark_green"                                                        \
    },                                                                              \
    {                                                                               \
        "text":"----------------------\n",                                          \
        "color":"green"                                                           \
    },                                                                              \
    {                                                                               \
        "text":"Killer Queen\n",                                                    \
        "color":"light_purple",                                                   \
        click_event:{                                                               \
            action:"run_command",                                                   \
            command:"execute as @s run function jojo:init"                          \
        }                                                                           \
    },                                                                              \
    {                                                                               \
        "text":"The Pilot\n",                                                       \
        "color":"green",                                                          \
        click_event:{                                                               \
            action:"run_command",                                                   \
            command:"execute as @s run function pilot:init"                         \
        }                                                                           \
    },                                                                              \
    {                                                                               \
        "text":"Void Walker",                                                       \
        "color":"black",                                                          \
        click_event:{                                                               \
            action:"run_command",                                                   \
            command:"execute as @s run function voidwalker:init"                    \
        }                                                                           \
    }                                                                               \
]