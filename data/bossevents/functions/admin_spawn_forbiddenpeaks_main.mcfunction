execute if score #forbiddenpeaks_main forbiddenpeaks_boss_active matches 1 run tellraw @s {"text":"ERROR: Forbidden Peaks boss already active.","color":"red","bold":true}
execute if score #forbiddenpeaks_main forbiddenpeaks_boss_active matches 0 unless entity @e[type=minecraft:marker,tag=spawn_forbiddenpeaks_main] run tellraw @s {"text":"ERROR: No Forbidden Peaks spawn marker found.","color":"red","bold":true}
execute if score #forbiddenpeaks_main forbiddenpeaks_boss_active matches 0 as @e[type=minecraft:marker,tag=spawn_forbiddenpeaks_main,limit=1,sort=nearest] at @s run function bossevents:forbiddenpeaks/spawn_mainboss
execute if score #forbiddenpeaks_main forbiddenpeaks_boss_active matches 0 run kill @e[type=minecraft:marker,tag=spawn_forbiddenpeaks_main,limit=1,sort=nearest]
