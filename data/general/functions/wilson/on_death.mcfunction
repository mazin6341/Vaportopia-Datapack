# @s is the player who killed him
tellraw @a [{"text":"WILSON! LO SIENTO WILSON! ","color":"red","italic":true},{"selector":"@s","color":"gold","italic":false},{"text":" has killed Wilson!","color":"red"}]
execute as @a at @s run playsound custom:lo-siento-wilson master @s ~ ~ ~ 100 1

# Reset everything
scoreboard players set Wilson bounty_active 0
advancement revoke @s only general:kill_wilson