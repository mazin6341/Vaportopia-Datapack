# Only run if the timer is above 0
execute if score #Global event_timer matches 1.. run scoreboard players remove #Global event_timer 1

# Spawn a mob 20 ticks (1 second)
# 100, 80, 60, 40, 20
execute if score #Global event_timer matches 20,40,60,80,100 at @e[tag=chaos_gate_visual] run function events:blood_moon/spawn_mobs

# Close the gate when timer hits 0
execute if score #Global event_timer matches 0 as @e[tag=chaos_gate_visual] run function events:blood_moon/cleanup_gate