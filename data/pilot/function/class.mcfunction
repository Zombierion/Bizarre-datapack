data modify storage bizarre:class_data classes append value {   \
   "pilot": {                                                   \
       "name": "Pilot",                                         \
       "health": 100,                                           \
       "defense": "30",                                         \
       "attacks": [                                             \
            {                                                   \
               "run_into_entity": {                             \
                   "base_damage": 30,                           \
                   "ignores_defense": true                      \
               }                                                \
            },                                                  \
            {                                                   \
               "stab": {                                        \
                   "base_damage": 15,                           \
                   "ignores_defense": false                     \
               }                                                \
            }                                                   \
       ]                                                        \
    }                                                           \
}