execute if score #workshop_mini workshop_mini_active matches 1 run tellraw @s {"text":"ERROR: Abandoned Workshop miniboss already active.","color":"red","bold":true}
execute if score #workshop_mini workshop_mini_active matches 0 unless entity @e[type=minecraft:marker,tag=spawn_workshop_mini] run tellraw @s {"text":"ERROR: No Abandoned Workshop miniboss marker found.","color":"red","bold":true}
execute if score #workshop_mini workshop_mini_active matches 0 as @e[type=minecraft:marker,tag=spawn_workshop_mini,limit=1,sort=nearest] at @s run function bossevents:workshop/spawn_miniboss
execute if score #workshop_mini workshop_mini_active matches 0 run kill @e[type=minecraft:marker,tag=spawn_workshop_mini,limit=1,sort=nearest]
