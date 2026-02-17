scoreboard players set #colouredforest_main colouredforest_main_active 1
tellraw @a {"text":"The Carnival Queens descend upon the forest...","color":"light_purple","bold":true}
playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 0.7

summon sweet_calamity:sweet_witch ~ ~1 ~ {CustomName:'{"text":"SUPPAIROJO","color":"pink","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["boss_entity","main_boss","zone_colouredforest"],Attributes:[{Name:"minecraft:generic.max_health",Base:1700},{Name:"minecraft:generic.attack_damage",Base:20},{Name:"minecraft:generic.armor",Base:20},{Name:"minecraft:generic.follow_range",Base:30}],Health:1700f,HandItems:[{id:"veloticurrencies:artifact_of_roguery",Count:1b},{}],HandDropChances:[1.0f,0.0f]}
summon alexscaves:licowitch ~ ~1 ~ {CustomName:'{"text":"AMEBABA","color":"dark_purple","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["boss_entity","main_boss","zone_colouredforest"],Attributes:[{Name:"minecraft:generic.max_health",Base:1000},{Name:"minecraft:generic.attack_damage",Base:18},{Name:"minecraft:generic.armor",Base:14},{Name:"minecraft:generic.follow_range",Base:30}],Health:1000f}

bossbar set bossevents:colouredforest_amebaba visible true
