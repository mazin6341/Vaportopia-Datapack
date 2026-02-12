tag @s add phase3

tellraw @a {"text":"The Verdant Relicheirus enters a frenzy!","color":"dark_green","bold":true}
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 1

attribute @s minecraft:generic.movement_speed base set 0.44
effect give @s minecraft:strength 9999 0 true
