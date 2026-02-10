# Check if cows are gone only AFTER the gate has closed (timer is -1 or 0)
execute if score #Global event_timer matches 0 unless entity @e[tag=chaos_cow] run function events:blood_moon/finish_event