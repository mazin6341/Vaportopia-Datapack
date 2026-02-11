execute as @e[tag=greenplains_alpha,tag=!alpha_raged] if score @s health matches ..90 run function bossevents:greenplains/alpha_rage
# Store Alpha health
execute as @e[tag=greenplains_alpha] store result score @s health run data get entity @s Health 1

# Trigger rage below 90 HP
execute as @e[tag=greenplains_alpha,tag=!alpha_raged] if score @s health matches ..90 run function bossevents:greenplains/alpha_rage