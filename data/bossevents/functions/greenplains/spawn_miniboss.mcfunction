tellraw @a {"text":"The plains begin to tremble...","color":"dark_green"}
playsound minecraft:entity.warden.roar master @a ~ ~ ~ 1 0.7

# Spawn Grove Alpha
summon alexscaves:grottoceratops ~ ~1 ~ {CustomName:'{"text":"Grove Alpha","color":"gold","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["greenplains_miniboss","greenplains_alpha"]}

# Spawn 11 Plains Ravagers
summon alexscaves:grottoceratops ~ ~1 ~ {CustomName:'{"text":"Plains Ravager","color":"gold","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["greenplains_miniboss"]}
summon alexscaves:grottoceratops ~ ~1 ~ {CustomName:'{"text":"Plains Ravager","color":"gold","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["greenplains_miniboss"]}
summon alexscaves:grottoceratops ~ ~1 ~ {CustomName:'{"text":"Plains Ravager","color":"gold","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["greenplains_miniboss"]}
summon alexscaves:grottoceratops ~ ~1 ~ {CustomName:'{"text":"Plains Ravager","color":"gold","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["greenplains_miniboss"]}
summon alexscaves:grottoceratops ~ ~1 ~ {CustomName:'{"text":"Plains Ravager","color":"gold","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["greenplains_miniboss"]}
summon alexscaves:grottoceratops ~ ~1 ~ {CustomName:'{"text":"Plains Ravager","color":"gold","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["greenplains_miniboss"]}
summon alexscaves:grottoceratops ~ ~1 ~ {CustomName:'{"text":"Plains Ravager","color":"gold","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["greenplains_miniboss"]}
summon alexscaves:grottoceratops ~ ~1 ~ {CustomName:'{"text":"Plains Ravager","color":"gold","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["greenplains_miniboss"]}
summon alexscaves:grottoceratops ~ ~1 ~ {CustomName:'{"text":"Plains Ravager","color":"gold","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["greenplains_miniboss"]}
summon alexscaves:grottoceratops ~ ~1 ~ {CustomName:'{"text":"Plains Ravager","color":"gold","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["greenplains_miniboss"]}
summon alexscaves:grottoceratops ~ ~1 ~ {CustomName:'{"text":"Plains Ravager","color":"gold","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["greenplains_miniboss"]}

# Spread them
execute positioned ~ ~ ~ run spreadplayers ~ ~ 4 12 false @e[tag=greenplains_miniboss,distance=..8]

# Apply stats to regular Ravagers
execute as @e[tag=greenplains_miniboss,tag=!greenplains_alpha,distance=..20] run attribute @s minecraft:generic.max_health base set 120
execute as @e[tag=greenplains_miniboss,tag=!greenplains_alpha,distance=..20] run attribute @s minecraft:generic.armor base set 14
execute as @e[tag=greenplains_miniboss,tag=!greenplains_alpha,distance=..20] run attribute @s minecraft:generic.attack_damage base set 6.5
execute as @e[tag=greenplains_miniboss,tag=!greenplains_alpha,distance=..20] run data merge entity @s {Health:120f}

# Apply stronger stats to Grove Alpha
execute as @e[tag=greenplains_alpha,distance=..20] run attribute @s minecraft:generic.max_health base set 180
execute as @e[tag=greenplains_alpha,distance=..20] run attribute @s minecraft:generic.armor base set 18
execute as @e[tag=greenplains_alpha,distance=..20] run attribute @s minecraft:generic.attack_damage base set 8
execute as @e[tag=greenplains_alpha,distance=..20] run data merge entity @s {Health:180f}