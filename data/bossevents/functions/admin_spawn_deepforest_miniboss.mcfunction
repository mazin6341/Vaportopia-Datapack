execute if score #deepforest_mini deepforest_mini_active matches 1 run tellraw @s {"text":"ERROR: Deep Forest miniboss already active.","color":"red","bold":true}

execute if score #deepforest_mini deepforest_mini_active matches 0 as @e[type=minecraft:marker,tag=spawn_deepforest_mini,limit=1,sort=nearest] at @s run function bossevents:deepforest/spawn_miniboss

execute if score #deepforest_mini deepforest_mini_active matches 1 run kill @e[type=minecraft:marker,tag=spawn_deepforest_mini,limit=1,sort=nearest]

execute if score #deepforest_mini deepforest_mini_active matches 0 unless entity @e[type=minecraft:marker,tag=spawn_deepforest_mini] run tellraw @s {"text":"ERROR: No Deep Forest miniboss marker found.","color":"red","bold":true}
