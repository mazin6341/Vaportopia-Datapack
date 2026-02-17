scoreboard players set #greenplains boss_active 1

tellraw @a {"text":"The relic guardian emerges from the plains...","color":"dark_green","bold":true}
playsound minecraft:entity.warden.roar master @a ~ ~ ~ 1 0.8

# Summon boss
summon alexscaves:relicheirus ~ ~1 ~ {AltSkin:2,CustomName:'{"text":"TETEAKOKO","color":"red","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["boss_entity","main_boss","zone_greenplains"],HandItems:[{id:"veloticurrencies:artifact_of_buffoonery",Count:1b},{}],HandDropChances:[1.0f,0.0f]}

# Apply stats directly to nearest spawned boss (limit 1, sort nearest)
execute as @e[tag=main_boss,tag=zone_greenplains,sort=nearest,limit=1] run attribute @s minecraft:generic.max_health base set 750
execute as @e[tag=main_boss,tag=zone_greenplains,sort=nearest,limit=1] run attribute @s minecraft:generic.attack_damage base set 8
execute as @e[tag=main_boss,tag=zone_greenplains,sort=nearest,limit=1] run attribute @s minecraft:generic.armor base set 18
execute as @e[tag=main_boss,tag=zone_greenplains,sort=nearest,limit=1] run attribute @s minecraft:generic.movement_speed base set 0.38
execute as @e[tag=main_boss,tag=zone_greenplains,sort=nearest,limit=1] run attribute @s minecraft:generic.follow_range base set 50

# Set health to full after max_health change
execute as @e[tag=main_boss,tag=zone_greenplains,sort=nearest,limit=1] run data merge entity @s {Health:750f}

scoreboard players set @e[tag=greenplains_mainboss,distance=..15] roar_cd 0
scoreboard players set #roar roar_timer 0
scoreboard players set #ranged ranged_timer 0
scoreboard players set @e[tag=main_boss,tag=zone_greenplains,distance=..15] combat_timer 0

bossbar set bossevents:greenplains_main visible true