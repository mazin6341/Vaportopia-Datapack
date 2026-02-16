# Play custom death sound to ALL players on the server
execute as @a at @s run playsound custom:fahh master @s ~ ~ ~ 100 1

# Reset the dying player's death count
scoreboard players set @s deaths 0
