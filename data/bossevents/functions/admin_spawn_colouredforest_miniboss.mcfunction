execute if score #colouredforest_mini colouredforest_mini_active matches 1 run tellraw @s {"text":"ERROR: Coloured Forest miniboss already active.","color":"red","bold":true}

execute if score #colouredforest_mini colouredforest_mini_active matches 0 as @e[type=minecraft:marker,tag=spawn_colouredforest_mini,limit=1,sort=nearest] at @s run function bossevents:colouredforest/spawn_miniboss

execute if score #colouredforest_mini colouredforest_mini_active matches 1 run kill @e[type=minecraft:marker,tag=spawn_colouredforest_mini,limit=1,sort=nearest]

execute if score #colouredforest_mini colouredforest_mini_active matches 0 unless entity @e[type=minecraft:marker,tag=spawn_colouredforest_mini] run tellraw @s {"text":"ERROR: No Coloured Forest miniboss marker found.","color":"red","bold":true}
