# 1. Safety Check
execute unless entity @e[tag=chaos_gate_marker] run tellraw @a {"text":"[ERROR] No 'chaos_gate_marker' found!","color":"red"}
execute unless entity @e[tag=chaos_gate_marker] run return 0

# Set the Spawning Timer to 100 (5 seconds)
scoreboard players set #Spawning blood_moon_timer 100
# Set the Failure Timer to 2400 (2 minutes)
scoreboard players set #Failure blood_moon_timer 2400

function events:blood_moon/gate_appear