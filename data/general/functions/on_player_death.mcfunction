# Runs every tick — checks if any player has died and plays a sound for everyone
execute as @a[scores={deaths=1..}] run function general:play_death_sound