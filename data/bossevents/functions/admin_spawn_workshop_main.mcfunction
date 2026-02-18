execute if score #workshop_main workshop_boss_active matches 1 run tellraw @s {"text":"ERROR: Abandoned Workshop boss already active.","color":"red","bold":true}
execute if score #workshop_main workshop_boss_active matches 0 unless entity @e[type=minecraft:marker,tag=spawn_workshop_main] run tellraw @s {"text":"ERROR: No Abandoned Workshop spawn marker found.","color":"red","bold":true}
execute if score #workshop_main workshop_boss_active matches 0 if entity @e[type=minecraft:marker,tag=spawn_workshop_main] as @e[type=minecraft:marker,tag=spawn_workshop_main,limit=1,sort=nearest] at @s run function bossevents:workshop/spawn_mainboss
execute if score #workshop_main workshop_boss_active matches 1 run kill @e[type=minecraft:marker,tag=spawn_workshop_main,limit=1,sort=nearest]
