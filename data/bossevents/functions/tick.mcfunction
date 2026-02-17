# If boss was hurt this tick, enter combat for 10 seconds (200 ticks)
execute as @e[tag=boss_entity] if data entity @s {HurtTime:1s} run scoreboard players set @s combat_timer 200

# Decrease combat timer
execute as @e[tag=boss_entity,scores={combat_timer=1..}] run scoreboard players remove @s combat_timer 1

# Store health score
execute as @e[tag=main_boss,tag=zone_greenplains] store result score @s health run data get entity @s Health 1

# Phase 2 at 60%
execute as @e[tag=main_boss,tag=zone_greenplains,tag=!phase2] if score @s health matches ..450 run function bossevents:greenplains/mainboss_phase2

# Phase 3 at 30%
execute as @e[tag=main_boss,tag=zone_greenplains,tag=!phase3] if score @s health matches ..225 run function bossevents:greenplains/mainboss_phase3

# Reduce roar cooldown
execute if entity @e[tag=main_boss,tag=zone_greenplains] if score #roar roar_timer matches 1.. run scoreboard players remove #roar roar_timer 1
execute as @e[tag=main_boss,tag=zone_greenplains,scores={combat_timer=1..}] at @s if entity @p[distance=..5] if score #roar roar_timer matches 0 run function bossevents:greenplains/mainboss_roar

# Increment ranged pressure timer
execute if entity @e[tag=main_boss,tag=zone_greenplains] run scoreboard players add #ranged ranged_timer 1

# Every 80 ticks (4 seconds)
execute if entity @e[tag=main_boss,tag=zone_greenplains] if score #ranged ranged_timer matches 80.. run function bossevents:greenplains/mainboss_ranged_pressure

# Reset disengage timer if player within 15 blocks
execute as @e[tag=boss_entity] at @s if entity @p[distance=..15] run scoreboard players set @s disengage_timer 0

# Increase disengage timer if no players nearby
execute as @e[tag=boss_entity] at @s unless entity @p[distance=..15] run scoreboard players add @s disengage_timer 1

#Boss Entity Regen Function
execute as @e[tag=boss_entity,scores={disengage_timer=12000..}] if score @s combat_timer matches 0 run effect give @s minecraft:regeneration 5 1 true

#Plains boss defeat detection
execute if score #greenplains boss_active matches 1 unless entity @e[tag=main_boss,tag=zone_greenplains] run function bossevents:greenplains/mainboss_defeated
execute as @e[tag=main_boss,tag=zone_greenplains,limit=1] store result bossbar bossevents:greenplains_main value run data get entity @s Health 1

#Plains miniboss defeat detection
execute if score #greenplains_miniboss boss_active matches 1 unless entity @e[tag=mini_boss,tag=zone_greenplains] run function bossevents:greenplains/miniboss_defeated

# Assign bossbar only to players within 40 blocks (plains)
bossbar set bossevents:greenplains_main players @a
execute as @e[tag=main_boss,tag=zone_greenplains,limit=1] at @s run bossbar set bossevents:greenplains_main players @a[distance=..40]
