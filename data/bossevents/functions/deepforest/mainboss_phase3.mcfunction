tag @s add phase3
attribute @s minecraft:generic.movement_speed base set 0.42
attribute @s minecraft:generic.attack_damage base set 18
effect give @s minecraft:strength 9999 1 true
effect give @s minecraft:regeneration 10 5 true
tellraw @a {"text":"XAL'THAR enters a frenzy and begins regenerating!","color":"dark_red","bold":true}
playsound minecraft:entity.warden.roar master @a ~ ~ ~ 1 0.8