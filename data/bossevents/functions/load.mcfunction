say BossEvents Datapack Loaded!
scoreboard objectives add health dummy
scoreboard objectives add herd_active dummy
scoreboard objectives add boss_active dummy
scoreboard objectives add roar_cd dummy
scoreboard objectives add roar_timer dummy
scoreboard objectives add ranged_timer dummy
scoreboard objectives add disengage_timer dummy
scoreboard objectives add combat_timer dummy

#Plains Main Boss health bar
bossbar add bossevents:greenplains_main {"text":"TETEAKOKO","color":"red","bold":true}
bossbar set bossevents:greenplains_main color red
bossbar set bossevents:greenplains_main style notched_10
bossbar set bossevents:greenplains_main max 750
bossbar set bossevents:greenplains_main visible false
