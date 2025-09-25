#particle explosion ~ ~ ~ 0 0 0 0 5

execute at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 water keep
playsound minecraft:entity.dolphin.splash master @a ~ ~ ~ 1 1
effect give @e[distance=..5] slowness 10 255 true
data merge entity @s {Tags:["under_water"],Health:1.0f}


scoreboard players set .distance dist 1000
