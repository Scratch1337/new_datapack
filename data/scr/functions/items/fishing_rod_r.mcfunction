execute at @s run execute as @e[type=!player,type=!#scr:not_mob,limit=1,sort=nearest] at @s run cparticle @a ToonWater ~ ~.1 ~ 0 0 0 .3

timedt 12 'execute at @s run execute as @e[type=!player,type=!#scr:not_mob,limit=1,sort=nearest] at @s run data merge entity @s {Motion:[0.0d,3.0d,0.0d]}'
timedt 13 'execute at @s run execute as @e[type=!player,type=!#scr:not_mob,limit=1,sort=nearest] at @s run tag @s add water_up'
execute at @s run playsound another_furniture:block.chair.tuck ambient @a
execute at @s run playsound minecraft:item.bucket.empty ambient @a
timedt 12 'execute at @s run playsound minecraft:scr.strike1 ambient @a ~ ~ ~ 1 1'
timedt 12 'execute at @s run playsound minecraft:item.bucket.fill ambient @a'

cooldown @s 120