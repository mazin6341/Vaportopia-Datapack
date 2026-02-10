tellraw @a [{"text":"[BOUNTY] ","color":"gold"},{"text":"Wilson has been returned home!","color":"green"}]

# Reward the nearest player
# give @p gold_ingot 32

# Cleanup
scoreboard players set Wilson bounty_active 0
tp @e[tag=Wilson] 0 -100 0