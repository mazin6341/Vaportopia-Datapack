scoreboard players set #greenplains herd_active 1
tellraw @a {"text":"The plains tremble as a herd gathers...","color":"dark_green","bold":true}
playsound minecraft:entity.Grottoceratops.roar master @a ~ ~ ~ 1 0.8

# Spawn Alpha
summon alexscaves:grottoceratops ~ ~1 ~ {CustomName:'{"text":"Plains Alpha Grottoceratops","color":"dark_green","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["boss_entity","mini_boss","mini_boss_alpha","zone_greenplains"],HandItems:[{id:"veloticurrencies:nullity_shard",Count:2b},{}],HandDropChances:[1.0f,0.0f]}

# Spawn 8 Grottoceratopss
summon alexscaves:grottoceratops ~ ~1 ~ {CustomName:'{"text":"Plains Grottoceratops","color":"gold","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["boss_entity","mini_boss","zone_greenplains"],HandItems:[{id:"veloticurrencies:nullity_shard",Count:1b},{}],HandDropChances:[1.0f,0.0f]}
summon alexscaves:grottoceratops ~ ~1 ~ {CustomName:'{"text":"Plains Grottoceratops","color":"gold","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["boss_entity","mini_boss","zone_greenplains"],HandItems:[{id:"veloticurrencies:nullity_shard",Count:1b},{}],HandDropChances:[1.0f,0.0f]}
summon alexscaves:grottoceratops ~ ~1 ~ {CustomName:'{"text":"Plains Grottoceratops","color":"gold","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["boss_entity","mini_boss","zone_greenplains"],HandItems:[{id:"veloticurrencies:nullity_shard",Count:1b},{}],HandDropChances:[1.0f,0.0f]}
summon alexscaves:grottoceratops ~ ~1 ~ {CustomName:'{"text":"Plains Grottoceratops","color":"gold","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["boss_entity","mini_boss","zone_greenplains"],HandItems:[{id:"veloticurrencies:nullity_shard",Count:1b},{}],HandDropChances:[1.0f,0.0f]}
summon alexscaves:grottoceratops ~ ~1 ~ {CustomName:'{"text":"Plains Grottoceratops","color":"gold","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["boss_entity","mini_boss","zone_greenplains"],HandItems:[{id:"veloticurrencies:nullity_shard",Count:1b},{}],HandDropChances:[1.0f,0.0f]}
summon alexscaves:grottoceratops ~ ~1 ~ {CustomName:'{"text":"Plains Grottoceratops","color":"gold","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["boss_entity","mini_boss","zone_greenplains"],HandItems:[{id:"veloticurrencies:nullity_shard",Count:1b},{}],HandDropChances:[1.0f,0.0f]}
summon alexscaves:grottoceratops ~ ~1 ~ {CustomName:'{"text":"Plains Grottoceratops","color":"gold","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["boss_entity","mini_boss","zone_greenplains"],HandItems:[{id:"veloticurrencies:nullity_shard",Count:1b},{}],HandDropChances:[1.0f,0.0f]}
summon alexscaves:grottoceratops ~ ~1 ~ {CustomName:'{"text":"Plains Grottoceratops","color":"gold","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["boss_entity","mini_boss","zone_greenplains"],HandItems:[{id:"veloticurrencies:nullity_shard",Count:1b},{}],HandDropChances:[1.0f,0.0f]}

# Spread them
execute positioned ~ ~ ~ run spreadplayers ~ ~ 4 12 false @e[tag=greenplains_miniboss,distance=..8]

# Apply stats to regular Grottoceratopss
execute as @e[tag=greenplains_miniboss,tag=!greenplains_alpha,distance=..20] run attribute @s minecraft:generic.max_health base set 120
execute as @e[tag=greenplains_miniboss,tag=!greenplains_alpha,distance=..20] run attribute @s minecraft:generic.armor base set 14
execute as @e[tag=greenplains_miniboss,tag=!greenplains_alpha,distance=..20] run attribute @s minecraft:generic.attack_damage base set 6.5
execute as @e[tag=greenplains_miniboss,tag=!greenplains_alpha,distance=..20] run data merge entity @s {Health:120f}
execute as @e[tag=greenplains_miniboss,tag=!greenplains_alpha,distance=..20] run attribute @s minecraft:generic.movement_speed base set 0.32

# Apply stronger stats to Grove Alpha
execute as @e[tag=greenplains_alpha,distance=..20] run attribute @s minecraft:generic.max_health base set 180
execute as @e[tag=greenplains_alpha,distance=..20] run attribute @s minecraft:generic.armor base set 18
execute as @e[tag=greenplains_alpha,distance=..20] run attribute @s minecraft:generic.attack_damage base set 8
execute as @e[tag=greenplains_alpha,distance=..20] run data merge entity @s {Health:180f}
execute as @e[tag=greenplains_alpha,distance=..20] run attribute @s minecraft:generic.movement_speed base set 0.36