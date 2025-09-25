execute as @e[type=!player,limit=1,sort=nearest] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 water replace air
playsound minecraft:entity.splash_potion.break master @a ~ ~ ~ 1 1
effect give @e[distance=..3] slowness 2 1 true