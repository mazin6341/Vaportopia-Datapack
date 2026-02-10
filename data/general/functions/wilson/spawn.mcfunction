# 1. Summon Wilson (Chicken) inside a Boat
execute positioned X Y Z run summon boat ~ ~ ~ {Type:"oak",Passengers:[{id:"minecraft:chicken",CustomName:'{"text":"Wilson","color":"yellow","bold":true}',CustomNameVisible:1b,PersistenceRequired:1b,Tags:["Wilson"],Health:20f,Attributes:[{Name:"generic.max_health",Base:20.0}]}]}

# 2. Tell everyone
tellraw @a [{"text":"[BOUNTY] ","color":"gold","bold":true},{"text":"Wilson is adrift! Find him and return him to the docks.","color":"white","bold":false}]

# 3. Activate the tick check
scoreboard players set Wilson bounty_active 1