# 1. Check if the marker exists. If NOT, tell admins and stop.
execute unless entity @e[tag=wilson_spawn_point] run tellraw @s {"text":"[ERROR] No 'wilson_spawn_point' marker found! Bounty failed to start.","color":"red"}
execute unless entity @e[tag=wilson_spawn_point] run return 0

# 2. Summon Wilson at the marker's location
execute at @e[tag=wilson_spawn_point,limit=1] run summon boat ~ ~ ~ {Type:"oak",Passengers:[{id:"minecraft:chicken",CustomName:'{"text":"Wilson","color":"yellow","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["Wilson"],Health:20f,Attributes:[{Name:"generic.max_health",Base:20.0}]}]}

# 3. Success Messages
tellraw @a [{"text":"[BOUNTY] ","color":"gold","bold":true},{"text":"Wilson is adrift! Find him and return him home.","color":"white","bold":false}]
scoreboard players set Wilson bounty_active 1

# 4. Remove the spawn marker (so he doesn't spawn there again until you replace it)
kill @e[tag=wilson_spawn_point]
