# Summoning at the marker to be safe
execute at @e[tag=chaos_gate_marker,limit=1] run summon cow ~ ~ ~ {Tags:["chaos_cow","blood_event_mob"],Health:40f,Attributes:[{Name:"generic.max_health",Base:40.0}],CustomName:'{"text":"Chaos Cow","color":"dark_red"}',ActiveEffects:[{Id:24,Amplifier:0,Duration:200000}]}

# Visual feedback
execute at @e[tag=chaos_gate_marker] run particle minecraft:flash ~ ~2 ~ 0 0 0 0 1
execute at @e[tag=chaos_gate_marker] run playsound minecraft:entity.zombie_villager.converted ambient @a ~ ~ ~ 1 0.5