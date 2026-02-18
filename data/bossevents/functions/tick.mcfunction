# =========================
# GLOBAL SYSTEMS
# =========================

# Enter combat on damage
execute as @e[tag=boss_entity] if data entity @s {HurtTime:1s} run scoreboard players set @s combat_timer 200

# Decrease combat timer
execute as @e[tag=boss_entity,scores={combat_timer=1..}] run scoreboard players remove @s combat_timer 1

# Reset disengage timer if player nearby
execute as @e[tag=boss_entity] at @s if entity @p[distance=..15] run scoreboard players set @s disengage_timer 0

# Increase disengage timer if no players nearby
execute as @e[tag=boss_entity] at @s unless entity @p[distance=..15] run scoreboard players add @s disengage_timer 1

# Regen after 10 minutes disengaged (12000 ticks)
execute as @e[tag=boss_entity,scores={disengage_timer=12000..}] if score @s combat_timer matches 0 run effect give @s minecraft:regeneration 5 1 true


# =========================
# GREENPLAINS
# =========================

# Health tracking
execute as @e[tag=main_boss,tag=zone_greenplains] store result score @s health run data get entity @s Health 1

# Phase triggers
execute as @e[tag=main_boss,tag=zone_greenplains,tag=!phase2] if score @s health matches ..450 run function bossevents:greenplains/mainboss_phase2
execute as @e[tag=main_boss,tag=zone_greenplains,tag=!phase3] if score @s health matches ..225 run function bossevents:greenplains/mainboss_phase3

# Roar cooldown
execute if entity @e[tag=main_boss,tag=zone_greenplains] if score #roar roar_timer matches 1.. run scoreboard players remove #roar roar_timer 1
execute as @e[tag=main_boss,tag=zone_greenplains,scores={combat_timer=1..}] at @s if entity @p[distance=..5] if score #roar roar_timer matches 0 run function bossevents:greenplains/mainboss_roar

# Ranged pressure
execute if entity @e[tag=main_boss,tag=zone_greenplains] run scoreboard players add #ranged ranged_timer 1
execute if entity @e[tag=main_boss,tag=zone_greenplains] if score #ranged ranged_timer matches 80.. run function bossevents:greenplains/mainboss_ranged_pressure

# Bossbar update
execute as @e[tag=main_boss,tag=zone_greenplains,limit=1] store result bossbar bossevents:greenplains_main value run data get entity @s Health 1
execute as @e[tag=main_boss,tag=zone_greenplains,limit=1] at @s run bossbar set bossevents:greenplains_main players @a[distance=..60]

# Chunk-safe main boss defeat
execute if score #greenplains_main boss_active matches 1 if entity @e[tag=main_boss,tag=zone_greenplains] unless entity @e[tag=main_boss,tag=zone_greenplains,nbt={DeathTime:0s}] run function bossevents:greenplains/mainboss_defeated

# Chunk-safe miniboss defeat
execute if score #greenplains_herd herd_active matches 1 if entity @e[tag=mini_boss,tag=zone_greenplains] unless entity @e[tag=mini_boss,tag=zone_greenplains,nbt={DeathTime:0s}] run function bossevents:greenplains/miniboss_defeated


# =========================
# DEEP FOREST
# =========================

# Health tracking
execute as @e[tag=main_boss,tag=zone_deepforest] store result score @s health run data get entity @s Health 1

# Phase triggers
execute as @e[tag=main_boss,tag=zone_deepforest,tag=!phase2] if score @s health matches ..720 run function bossevents:deepforest/mainboss_phase2
execute as @e[tag=main_boss,tag=zone_deepforest,tag=!phase3] if score @s health matches ..300 run function bossevents:deepforest/mainboss_phase3

# Bossbar update
execute as @e[tag=main_boss,tag=zone_deepforest,limit=1] store result bossbar bossevents:deepforest_main value run data get entity @s Health 1
execute as @e[tag=main_boss,tag=zone_deepforest,limit=1] at @s run bossbar set bossevents:deepforest_main players @a[distance=..60]

# Chunk-safe main boss defeat
execute if score #deepforest_main deepforest_boss_active matches 1 if entity @e[tag=main_boss,tag=zone_deepforest] unless entity @e[tag=main_boss,tag=zone_deepforest,nbt={DeathTime:0s}] run function bossevents:deepforest/mainboss_defeated

# Chunk-safe miniboss defeat
execute if score #deepforest_mini deepforest_mini_active matches 1 if entity @e[tag=mini_boss,tag=zone_deepforest] unless entity @e[tag=mini_boss,tag=zone_deepforest,nbt={DeathTime:0s}] run function bossevents:deepforest/miniboss_defeated

# Guaranteed nausea on hit
execute as @a[nbt={HurtTime:1s}] at @s if entity @e[tag=mini_boss,tag=zone_deepforest,distance=..3] run effect give @s minecraft:nausea 5 2 true


# =========================
# FORBIDDEN PEAKS
# =========================

# Health + bossbar
execute as @e[tag=main_boss,tag=zone_forbiddenpeaks] store result score @s health run data get entity @s Health 1
execute as @e[tag=main_boss,tag=zone_forbiddenpeaks,limit=1] store result bossbar bossevents:forbiddenpeaks_main value run data get entity @s Health 1
execute as @e[tag=main_boss,tag=zone_forbiddenpeaks,limit=1] at @s run bossbar set bossevents:forbiddenpeaks_main players @a[distance=..60]

# Chunk-safe main boss defeat
execute if score #forbiddenpeaks_main forbiddenpeaks_boss_active matches 1 if entity @e[tag=main_boss,tag=zone_forbiddenpeaks] unless entity @e[tag=main_boss,tag=zone_forbiddenpeaks,nbt={DeathTime:0s}] run function bossevents:forbiddenpeaks/mainboss_defeated

# Chunk-safe miniboss defeat
execute if score #forbiddenpeaks_mini forbiddenpeaks_mini_active matches 1 if entity @e[tag=mini_boss,tag=zone_forbiddenpeaks] unless entity @e[tag=mini_boss,tag=zone_forbiddenpeaks,nbt={DeathTime:0s}] run function bossevents:forbiddenpeaks/miniboss_defeated


# =========================
# COLOURED FOREST
# =========================

# Miniboss defeat
execute if score #colouredforest_mini colouredforest_mini_active matches 1 if entity @e[tag=mini_boss,tag=zone_colouredforest] unless entity @e[tag=mini_boss,tag=zone_colouredforest,nbt={DeathTime:0s}] run function bossevents:colouredforest/miniboss_defeated

# AMEBABA bossbar (Licowitch only)
execute as @e[tag=main_boss,tag=zone_colouredforest,type=alexscaves:licowitch,limit=1] store result bossbar bossevents:colouredforest_amebaba value run data get entity @s Health 1
execute as @e[tag=main_boss,tag=zone_colouredforest,type=alexscaves:licowitch,limit=1] at @s run bossbar set bossevents:colouredforest_amebaba players @a[distance=..60]

# Chunk-safe dual-witch defeat
execute if score #colouredforest_main colouredforest_main_active matches 1 if entity @e[tag=main_boss,tag=zone_colouredforest] unless entity @e[tag=main_boss,tag=zone_colouredforest,nbt={DeathTime:0s}] run function bossevents:colouredforest/mainboss_defeated


# =========================
# ABANDONED WORKSHOP
# =========================

# Chunk-safe main boss defeat (dual Harbingers)
execute if score #workshop_main workshop_boss_active matches 1 if entity @e[tag=main_boss,tag=zone_workshop] unless entity @e[tag=main_boss,tag=zone_workshop,nbt={DeathTime:0s}] run function bossevents:workshop/mainboss_defeated

# Chunk-safe miniboss defeat
execute if score #workshop_mini workshop_mini_active matches 1 if entity @e[tag=mini_boss,tag=zone_workshop] unless entity @e[tag=mini_boss,tag=zone_workshop,nbt={DeathTime:0s}] run function bossevents:workshop/miniboss_defeated
