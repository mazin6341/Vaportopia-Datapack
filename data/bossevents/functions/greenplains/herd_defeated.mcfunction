# Reset flag
scoreboard players set #greenplains herd_active 0

# Announcement
title @a title {"text":"Verdant Plains Cleared!","color":"dark_green","bold":true}
title @a subtitle {"text":"The herd has been defeated.","color":"gold"}

playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 1

particle minecraft:totem_of_undying ~ ~1 ~ 1 1 1 0.1 100 force