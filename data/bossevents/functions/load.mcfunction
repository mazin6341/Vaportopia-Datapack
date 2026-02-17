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

#Deepforest Main Boss health bar
scoreboard objectives add deepforest_boss_active dummy
bossbar add bossevents:deepforest_main {"text":"XAL'THAR","color":"red","bold":true}
bossbar set bossevents:deepforest_main color red
bossbar set bossevents:deepforest_main style notched_12
bossbar set bossevents:deepforest_main max 1200
bossbar set bossevents:deepforest_main visible false

#Forbidden Peaks Main Boss health bar
scoreboard objectives add forbiddenpeaks_boss_active dummy
bossbar add bossevents:forbiddenpeaks_main {"text":"VALEFAR","color":"dark_red","bold":true}
bossbar set bossevents:forbiddenpeaks_main color purple
bossbar set bossevents:forbiddenpeaks_main style notched_20
bossbar set bossevents:forbiddenpeaks_main max 1800
bossbar set bossevents:forbiddenpeaks_main visible false

#coloured forest stuff
scoreboard objectives add colouredforest_boss_active dummy

