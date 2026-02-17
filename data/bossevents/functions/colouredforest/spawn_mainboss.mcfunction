tellraw @a {"text":"THE DARK LORD OF THE PEAKS AWAKENS","color":"dark_red","bold":true}
playsound minecraft:entity.warden.roar master @a ~ ~ ~ 1 0.7
summon alexscaves:forsaken ~ ~1 ~ {CustomName:'{"text":"VALEFAR","color":"dark_red","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["boss_entity","main_boss","zone_forbiddenpeaks"],Attributes:[{Name:"minecraft:generic.max_health",Base:1800},{Name:"minecraft:generic.attack_damage",Base:20},{Name:"minecraft:generic.armor",Base:30},{Name:"minecraft:generic.follow_range",Base:60}],Health:1800f,HandItems:[{id:"veloticurrencies:artifact_of_debauchery",Count:1b},{}],HandDropChances:[1.0f,0.0f]}

scoreboard players set #forbiddenpeaks_main forbiddenpeaks_boss_active 1
bossbar set bossevents:forbiddenpeaks_main visible true

