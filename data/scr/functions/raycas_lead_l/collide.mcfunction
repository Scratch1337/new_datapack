#particle explosion ~ ~ ~ 0 0 0 0 5

damage @s 10 minecraft:player_attack by @a[tag=lead,limit=1]
cooldown @a[tag=lead,limit=1] 50

scoreboard players set .distance dist 1000
