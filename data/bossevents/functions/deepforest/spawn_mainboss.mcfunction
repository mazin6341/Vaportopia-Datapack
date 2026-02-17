scoreboard players set #deepforest_main deepforest_boss_active 1
tellraw @a {"text":"The forest trembles... XAL'THAR awakens.","color":"red","bold":true}
playsound minecraft:entity.warden.roar master @a ~ ~ ~ 1 0.7
summon alexscaves:tremorsaurus ~ ~1 ~ {AltSkin:2,CustomName:'{"text":"XAL\'THAR","color":"red","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["boss_entity","main_boss","zone_deepforest"],Attributes:[{Name:"minecraft:generic.max_health",Base:1200},{Name:"minecraft:generic.attack_damage",Base:16},{Name:"minecraft:generic.armor",Base:24},{Name:"minecraft:generic.movement_speed",Base:0.36},{Name:"minecraft:generic.follow_range",Base:60}],Health:1200f,HandItems:[{id:"veloticurrencies:artifact_of_devilry",Count:1b},{}],HandDropChances:[1.0f,0.0f]}
bossbar set bossevents:deepforest_main visible true
