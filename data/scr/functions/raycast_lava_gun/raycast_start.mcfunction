tag @s add raycasting

#отдача


#запуск рейкаста от лица игрока
execute anchored eyes positioned ^ ^ ^ run function scr:raycast_lava_gun/raycast


playsound minecraft:block.lava.extinguish ambient @s ~ ~ ~ 1 1
playsound minecraft:entity.firework_rocket.blast ambient @a
playsound minecraft:entity.firework_rocket.launch ambient @a

cooldown @s 120

tag @s remove raycasting


scoreboard players reset .distance dist