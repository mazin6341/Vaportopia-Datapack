execute if score #greenplains_herd herd_active matches 1 run tellraw @s {"text":"ERROR: GreenPlains miniboss already active.","color":"red","bold":true}
execute if score #greenplains_herd herd_active matches 0 unless entity @e[type=minecraft:marker,tag=spawn_greenplains_mini] run tellraw @s {"text":"ERROR: No GreenPlains miniboss marker found.","color":"red","bold":true}
execute if score #greenplains_herd herd_active matches 0 as @e[type=minecraft:marker,tag=spawn_greenplains_mini,limit=1,sort=nearest] at @s run function bossevents:greenplains/spawn_miniboss
execute if score #greenplains_herd herd_active matches 0 run kill @e[type=minecraft:marker,tag=spawn_greenplains_mini,limit=1,sort=nearest]
