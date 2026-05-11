scoreboard objectives remove bizarre.uid
scoreboard objectives add bizarre.uid dummy
execute as @a run function bizarre:assign_global_uid

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
        "text":"The Pilot",                                                         \
        "color":"green",                                                          \
        click_event:{                                                               \
            action:"run_command",                                                   \
            command:"execute as @s run function pilot:init"                         \
        }                                                                           \
    }                                                                               \
]