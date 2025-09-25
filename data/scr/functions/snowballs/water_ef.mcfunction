execute as @e[type=!player,limit=1,sort=nearest] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 water replace air
playsound block.glass.break ambient @a ~ ~ ~ 1 1 1
playsound item.bucket.empty_axolotl ambient @a ~ ~ ~ 1 1 1

execute as @e[type=!#scr:not_mob,type=!player,distance=..6] at @s run data merge entity @s {Tags:["under_water"],Health:1.0f}
