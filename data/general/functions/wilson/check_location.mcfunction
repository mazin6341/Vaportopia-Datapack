# 1. Check if Wilson is within 5 blocks of the return marker
execute at @e[tag=wilson_return_point,limit=1] if entity @s[distance=..5] run function general:wilson/win