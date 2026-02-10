# Summon a pulsing red gate at the marker
execute at @e[tag=chaos_gate_marker,limit=1] run summon block_display ~-1 ~ ~ {Tags:["chaos_gate_visual"],block_state:{Name:"minecraft:nether_portal"},transformation:{scale:[2f,3f,0.1f]}}

# Add some smoke particles
execute at @e[tag=chaos_gate_visual] run particle minecraft:large_smoke ~1 ~1.5 ~ 0.5 1 0.5 0.05 50