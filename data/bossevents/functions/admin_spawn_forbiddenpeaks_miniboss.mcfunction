execute if score #forbiddenpeaks_mini forbiddenpeaks_mini_active matches 1 run tellraw @s {"text":"ERROR: Forbidden Peaks miniboss already active.","color":"red","bold":true}

execute if score #forbiddenpeaks_mini forbiddenpeaks_mini_active matches 0 as @e[type=minecraft:marker,tag=spawn_forbiddenpeaks_mini,limit=1,sort=nearest] at @s run function bossevents:forbiddenpeaks/spawn_miniboss

execute if score #forbiddenpeaks_mini forbiddenpeaks_mini_active matches 1 run kill @e[type=minecraft:marker,tag=spawn_forbiddenpeaks_mini,limit=1,sort=nearest]

execute if score #forbiddenpeaks_mini forbiddenpeaks_mini_active matches 0 unless entity @e[type=minecraft:marker,tag=spawn_forbiddenpeaks_mini] run tellraw @s {"text":"ERROR: No Forbidden Peaks miniboss marker found.","color":"red","bold":true}
