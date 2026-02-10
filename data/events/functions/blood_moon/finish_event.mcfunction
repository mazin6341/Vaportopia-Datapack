tellraw @a {"text":"The Blood Moon has passed. The cows have been defeated!","color":"green"}
scoreboard players set #Failure blood_moon_timer -1
function events:blood_moon/cleanup_gate