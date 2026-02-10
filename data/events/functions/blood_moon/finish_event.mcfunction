# Reset the timer so this doesn't loop
scoreboard players set #Global event_timer -1
tellraw @a {"text":"The Blood Moon has passed. The world is safe... for now.","color":"green"}
playsound minecraft:ui.toast.challenge_complete ambient @a