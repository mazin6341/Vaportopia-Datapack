# Check for Grove Alpha below 90 HP and not already enraged
execute as @e[tag=greenplains_alpha,tag=!alpha_raged] if data entity @s {Health:..90f} run function bossevents:greenplains/alpha_rage