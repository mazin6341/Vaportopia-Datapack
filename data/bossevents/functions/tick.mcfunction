execute as @e[tag=greenplains_alpha,tag=!alpha_raged] if score @s health matches ..90 run function bossevents:greenplains/alpha_rage
# Store Alpha health
execute as @e[tag=greenplains_alpha] store result score @s health run data get entity @s Health 1
# Trigger rage below 90 HP
execute as @e[tag=greenplains_alpha,tag=!alpha_raged] if score @s health matches ..90 run function bossevents:greenplains/alpha_rage
# Detect dead GreenPlains miniboss mobs
execute as @e[tag=greenplains_miniboss,nbt={DeathTime:1s}] at @s run function bossevents:greenplains/miniboss_death
# Check if herd is defeated
execute if score #greenplains herd_active matches 1 unless entity @e[tag=greenplains_miniboss] run function bossevents:greenplains/herd_defeated

# Health tracking
execute as @e[tag=greenplains_mainboss] store result score @s health run data get entity @s Health 1

# Phase 2 at 60%
execute as @e[tag=greenplains_mainboss,tag=!phase2] if score @s health matches ..450 run function bossevents:greenplains/mainboss_phase2

# Phase 3 at 30%
execute as @e[tag=greenplains_mainboss,tag=!phase3] if score @s health matches ..225 run function bossevents:greenplains/mainboss_phase3

# Defeat detection
execute if score #greenplains boss_active matches 1 unless entity @e[tag=greenplains_mainboss] run function bossevents:greenplains/mainboss_defeated

# Roar only if player is within 10 blocks and cooldown is ready
execute if entity @e[tag=greenplains_mainboss] if score #roar roar_timer matches 0 run scoreboard players set #roar roar_timer 1

execute as @e[tag=greenplains_mainboss,nbt={HurtTime:1..}] at @s if entity @p[distance=..5] if score #roar roar_timer matches 1 run function bossevents:greenplains/mainboss_roar

# Countdown roar cooldown
execute if score #roar roar_timer matches 1.. run scoreboard players remove #roar roar_timer 1

# Increment ranged pressure timer
execute if entity @e[tag=greenplains_mainboss] run scoreboard players add #ranged ranged_timer 1

# Every 80 ticks (4 seconds), apply ranged punishment
execute if entity @e[tag=greenplains_mainboss] if score #ranged ranged_timer matches 80.. run function bossevents:greenplains/mainboss_ranged_pressure

# Reset timer if player nearby (15 block combat radius)
execute as @e[tag=boss_entity] at @s if entity @p[distance=..15] run scoreboard players set @s disengage_timer 0

# Increase timer if no players nearby
execute as @e[tag=boss_entity] at @s unless entity @p[distance=..15] run scoreboard players add @s disengage_timer 1

# START REGEN AFTER 10 MINUTES (12000 ticks)

execute as @e[tag=boss_entity,scores={disengage_timer=12000..}] run effect give @s minecraft:regeneration 5 1 true