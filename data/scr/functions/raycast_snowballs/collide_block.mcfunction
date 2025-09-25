execute align xyz positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~ ~0.5 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 water keep
execute align xyz positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~ ~0.5 run execute as @e[type=!#scr:not_mob,type=!player,distance=..6] at @s run data merge entity @s {Tags:["under_water"],Health:1.0f}

scoreboard players set .distance dist 1001
