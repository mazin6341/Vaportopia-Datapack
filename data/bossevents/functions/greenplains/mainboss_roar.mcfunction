scoreboard players set #roar roar_timer 200

tellraw @a[distance=..20] {"text":"The Verdant Relicheirus unleashes a terrifying roar!","color":"dark_green","bold":true}
playsound minecraft:entity.warden.roar master @a[distance=..32] ~ ~ ~ 1 0.9

# Slow nearby players
effect give @a[distance=..15] minecraft:slowness 3 1 true
effect give @a[distance=..15] minecraft:weakness 3 0 true

# Visual effect
particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 0 1 force