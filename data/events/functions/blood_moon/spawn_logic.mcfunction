# 1. Spawning Phase (Counts down from 100 to 0)
execute if score #Spawning blood_moon_timer matches 1.. run scoreboard players remove #Spawning blood_moon_timer 1
execute if score #Spawning blood_moon_timer matches 20,40,60,80,100 at @e[tag=chaos_gate_marker] run function events:blood_moon/spawn_mobs

# 2. Failure Phase (Only starts counting down after spawning is done)
execute if score #Spawning blood_moon_timer matches 0 if score #Failure blood_moon_timer matches 1.. run scoreboard players remove #Failure blood_moon_timer 1

# 3. Trigger Failure if time runs out
execute if score #Failure blood_moon_timer matches 0 run function events:blood_moon/fail_event

# 4. Trigger Success if all mobs are dead before time runs out
execute if score #Spawning blood_moon_timer matches 0 if score #Failure blood_moon_timer matches 1.. unless entity @e[tag=chaos_cow] run function events:blood_moon/finish_event