#particle explosion ~ ~ ~ 0 0 0 0 5

kill @s

execute as @e[type=!player,limit=1,sort=nearest,tag=raycast_hit] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 lava replace air
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 1



scoreboard players set .distance dist 1000
