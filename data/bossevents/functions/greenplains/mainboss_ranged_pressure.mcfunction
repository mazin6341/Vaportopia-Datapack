# Reset timer
scoreboard players set #ranged ranged_timer 0

# Slow distant players (18–35 blocks)
effect give @a[distance=18..35] minecraft:slowness 2 0 true

# Minor visual cue
particle minecraft:ash ~ ~1 ~ 1 1 1 0.02 20 force

# Optional subtle sound
playsound minecraft:entity.ravager.roar master @a[distance=..30] ~ ~ ~ 0.5 1
