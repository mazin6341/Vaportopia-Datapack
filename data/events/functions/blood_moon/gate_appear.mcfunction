# Summon a 3-block tall, glowing obsidian/portal rift
execute at @e[tag=chaos_gate_marker,limit=1] run summon block_display ~-0.5 ~ ~ {Tags:["chaos_gate_visual","gate_part"],block_state:{Name:"minecraft:crying_obsidian"},transformation:{scale:[2f,4f,0.1f]}}

# Add a second 'inner' layer of portal blocks for the glow
execute at @e[tag=chaos_gate_marker,limit=1] run summon block_display ~-0.25 ~0.5 ~0.05 {Tags:["chaos_gate_visual","gate_part"],block_state:{Name:"minecraft:nether_portal"},transformation:{scale:[1.5f,3f,0.1f]}}

# Constant sound at the gate
execute at @e[tag=chaos_gate_marker] run playsound minecraft:block.portal.ambient ambient @a ~ ~ ~ 1 0.5