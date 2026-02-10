# 1. Announcements
tellraw @a [{"text":"[BOUNTY] ","color":"gold"},{"text":"Wilson has been returned home!","color":"green"}]

# Reward
# give @p gold_ingot 32

# 2. Cleanup Logic
scoreboard players set Wilson bounty_active 0
kill @e[tag=wilson_return_point]
tp @e[tag=Wilson] 0 -100 0