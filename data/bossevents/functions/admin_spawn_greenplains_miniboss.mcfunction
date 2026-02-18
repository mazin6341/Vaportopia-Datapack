# Prevent duplicate herd
execute if score #greenplains_herd herd_active matches 1 run tellraw @s {"text":"ERROR: GreenPlains miniboss already active.","color":"red","bold":true}

# Spawn if inactive
execute if score #greenplains_herd herd_active matches 0 as @e[type=minecraft:marker,tag=spawn_greenplains_mini,limit=1,sort=nearest] at @s run function bossevents:greenplains/spawn_miniboss

# Remove marker only if herd activated
execute if score #greenplains_herd herd_active matches 1 run kill @e[type=minecraft:marker,tag=spawn_greenplains_mini,limit=1,sort=nearest]

# Error if no marker
execute if score #greenplains_herd herd_active matches 0 unless entity @e[type=minecraft:marker,tag=spawn_greenplains_mini] run tellraw @s {"text":"ERROR: No GreenPlains miniboss marker found.","color":"red","bold":true}
