tellraw @a {"text":"EVENT FAILED: The Chaos Gate has consumed the beasts and vanished!","color":"red"}

# Remove mobs without drops
execute as @e[tag=chaos_cow] run data merge entity @s {DeathLootTable:"minecraft:empty"}
kill @e[tag=chaos_cow]

scoreboard players set #Failure blood_moon_timer -1
function events:blood_moon/cleanup_gate