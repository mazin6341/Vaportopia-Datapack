# 1. Safety Check
execute unless entity @e[tag=chaos_gate_marker] run tellraw @a {"text":"[ERROR] No 'chaos_gate_marker' found!","color":"red"}
execute unless entity @e[tag=chaos_gate_marker] run return 0

# 2. Announcement & Atmosphere
title @a title {"text":"BLOOD MOON","color":"dark_red","bold":true}
title @a subtitle {"text":"The Chaos Gate has opened...","color":"red"}
playsound minecraft:entity.wither.spawn ambient @a

# 3. Setup Timer (5 seconds = 100 ticks)
scoreboard players set #Global event_timer 100
function events:blood_moon/gate_appear