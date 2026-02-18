execute if score #colouredforest_main colouredforest_main_active matches 1 run tellraw @s {"text":"ERROR: Coloured Forest boss already active.","color":"red","bold":true}
execute if score #colouredforest_main colouredforest_main_active matches 0 unless entity @e[type=minecraft:marker,tag=spawn_colouredforest_main] run tellraw @s {"text":"ERROR: No Coloured Forest spawn marker found.","color":"red","bold":true}
execute if score #colouredforest_main colouredforest_main_active matches 0 as @e[type=minecraft:marker,tag=spawn_colouredforest_main,limit=1,sort=nearest] at @s run function bossevents:colouredforest/spawn_mainboss
execute if score #colouredforest_main colouredforest_main_active matches 0 run kill @e[type=minecraft:marker,tag=spawn_colouredforest_main,limit=1,sort=nearest]
