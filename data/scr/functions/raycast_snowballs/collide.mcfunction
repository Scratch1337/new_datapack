#particle explosion ~ ~ ~ 0 0 0 0 5

execute as @a[type=!player,limit=1] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 water replace air
playsound minecraft:entity.dolphin.splash master @a ~ ~ ~ 1 1
effect give @e[distance=..5] slowness 3 1 true


scoreboard players set .distance dist 1000
