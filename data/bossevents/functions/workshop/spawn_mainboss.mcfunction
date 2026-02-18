scoreboard players set #workshop_main workshop_boss_active 1
tellraw @a {"text":"THE HARBINGERS ACTIVATE","color":"dark_red","bold":true}
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 0.6

summon cataclysm:the_harbinger ~5 ~ ~ {CustomName:'{"text":"VERSION 1","color":"red","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Is_Act:1b,Tags:["boss_entity","main_boss","zone_workshop","workshop_v1"],Attributes:[{Name:"minecraft:generic.max_health",Base:1200},{Name:"minecraft:generic.attack_damage",Base:28},{Name:"minecraft:generic.armor",Base:20},{Name:"minecraft:generic.follow_range",Base:60}],Health:1200f,HandItems:[{id:"veloticurrencies:artifact_of_buffoonery",Count:1b},{}],HandDropChances:[1.0f,0.0f]}

summon cataclysm:the_harbinger ~-5 ~ ~ {CustomName:'{"text":"VERSION 2","color":"red","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Is_Act:1b,Tags:["boss_entity","main_boss","zone_workshop","workshop_v2"],Attributes:[{Name:"minecraft:generic.max_health",Base:1200},{Name:"minecraft:generic.attack_damage",Base:28},{Name:"minecraft:generic.armor",Base:20},{Name:"minecraft:generic.follow_range",Base:60}],Health:1200f,HandItems:[{id:"veloticurrencies:artifact_of_buffoonery",Count:1b},{}],HandDropChances:[1.0f,0.0f]}

