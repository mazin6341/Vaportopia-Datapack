# Add rage tag so it only happens once
tag @s add alpha_raged

# Announce rage
tellraw @a {"text":"The Grove Alpha becomes enraged!","color":"dark_green","bold":true}
playsound minecraft:entity.warden.angry master @a ~ ~ ~ 1 1

# Apply rage buffs
effect give @s minecraft:strength 9999 0 false
effect give @s minecraft:speed 9999 1 true

# Visual effect
particle minecraft:spore_blossom_air ~ ~1 ~ 1 1 1 0.05 80 force