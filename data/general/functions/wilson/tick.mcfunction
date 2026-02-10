# Only run the heavy check if the bounty is active
execute if score Wilson bounty_active matches 1 as @e[tag=Wilson] at @s run function general:wilson/check_location