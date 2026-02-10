# @s is the player who killed him
tellraw @a [{"text":"WILSON! LO SIENTO WILSON! ","color":"red","italic":true},{"selector":"@s","color":"gold","italic":false},{"text":" has killed Wilson!","color":"red"}]
playsound minecraft:entity.villager.no ambient @a

# Reset everything
scoreboard players set Wilson bounty_active 0
advancement revoke @s only general:kill_wilson