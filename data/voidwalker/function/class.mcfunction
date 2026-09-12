data modify storage bizarre:class_data classes append value {   \
   "voidwalker": {                                              \
       "name": "Voidwalker",                                    \
       "health": 100,                                           \
       "defense": {                                             \
        "base_defense": 2,                                      \
        "void_defense": 10                                      \
       },                                                       \
       "attacks": [                                             \
            {                                                   \
               "stab": {                                        \
                   "base_damage": 10,                           \
                   "ignores_defense": false,                    \
                   "damage_type": "physical"                    \
               }                                                \
            },                                                  \
            {                                                   \
               "pocket_void": {                                 \
                   "base_damage": 26,                           \
                   "ignores_defense": true,                     \
                   "damage_type": "void"                        \
               }                                                \
            }                                                   \
       ]                                                        \
    }                                                           \
}