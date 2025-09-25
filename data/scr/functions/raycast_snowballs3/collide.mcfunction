kill @s

execute as @e[type=!player,limit=1,sort=nearest,tag=raycast_hit] at @s run tp @s 0 70 0
playsound minecraft:block.portal.travel master @a ~ ~ ~ 1 1

scoreboard players set .distance dist 1000
