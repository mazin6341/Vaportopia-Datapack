# Summon a red "Chaos Cow" with high health and a glow
summon cow ~ ~ ~ {Tags:["chaos_cow","blood_event_mob"],Health:40f,Attributes:[{Name:"generic.max_health",Base:40.0}],CustomName:'{"text":"Chaos Cow","color":"dark_red"}',ActiveEffects:[{Id:24,Amplifier:0,Duration:200000}]}

playsound minecraft:entity.enderman.teleport ambient @a ~ ~ ~ 1 0.5
particle minecraft:reverse_portal ~ ~1 ~ 0.5 0.5 0.5 0.1 100