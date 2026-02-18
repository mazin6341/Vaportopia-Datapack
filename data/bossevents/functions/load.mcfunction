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
scoreboard objectives add deepforest_mini_active dummy

#Forbidden Peaks Main Boss health bar
scoreboard objectives add forbiddenpeaks_boss_active dummy
bossbar add bossevents:forbiddenpeaks_main {"text":"VALEFAR","color":"dark_red","bold":true}
bossbar set bossevents:forbiddenpeaks_main color purple
bossbar set bossevents:forbiddenpeaks_main style notched_20
bossbar set bossevents:forbiddenpeaks_main max 1800
bossbar set bossevents:forbiddenpeaks_main visible false
scoreboard objectives add forbiddenpeaks_mini_active dummy

#coloured forest stuff
scoreboard objectives add colouredforest_boss_active dummy
scoreboard objectives add colouredforest_main_active dummy
scoreboard objectives add amebaba_health dummy

bossbar add bossevents:colouredforest_amebaba {"text":"AMEBABA","color":"dark_purple","bold":true}
bossbar set bossevents:colouredforest_amebaba color purple
bossbar set bossevents:colouredforest_amebaba style notched_20
bossbar set bossevents:colouredforest_amebaba max 1000
bossbar set bossevents:colouredforest_amebaba visible false
scoreboard objectives add colouredforest_mini_active dummy

#workshop stuff
scoreboard objectives add workshop_boss_active dummy
scoreboard objectives add workshop_mini_active dummy

#marker stuff
scoreboard players set #greenplains_main boss_active 0
scoreboard players set #greenplains_herd herd_active 0

scoreboard players set #deepforest_main deepforest_boss_active 0
scoreboard players set #deepforest_mini deepforest_mini_active 0

scoreboard players set #forbiddenpeaks_main forbiddenpeaks_boss_active 0
scoreboard players set #forbiddenpeaks_mini forbiddenpeaks_mini_active 0

scoreboard players set #colouredforest_main colouredforest_main_active 0
scoreboard players set #colouredforest_mini colouredforest_mini_active 0

scoreboard players set #workshop_main workshop_boss_active 0
scoreboard players set #workshop_mini workshop_mini_active 0
scoreboard players set #workshop_enrage workshop_enrage 0
