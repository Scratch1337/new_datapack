#particle explosion ~ ~ ~ 0 0 0 0 5

execute at @s run tp @s @a[tag=raycasting,limit=1]
cooldown @a[tag=lead,limit=1] 50

scoreboard players set .distance dist 1000
