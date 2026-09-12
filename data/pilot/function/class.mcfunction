data modify storage bizarre:class_data classes append value {   \
   "pilot": {                                                   \
       "name": "Pilot",                                         \
       "health": 100,                                           \
       "defense": {                                             \
        "base_defense": 20,                                     \
        "fire_defense": 2                                       \
       },                                                       \
       "attacks": [                                             \
            {                                                   \
               "run_into_entity": {                             \
                   "base_damage": 30,                           \
                   "ignores_defense": true,                     \
                   "damage_type": "kinetic"                     \
               }                                                \
            },                                                  \
            {                                                   \
               "stab": {                                        \
                   "base_damage": 15,                           \
                   "ignores_defense": false,                    \
                   "damage_type": "physical"                    \
               }                                                \
            }                                                   \
       ]                                                        \
    }                                                           \
}