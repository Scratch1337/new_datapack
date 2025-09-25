tag @s add raycasting

#отдача


#запуск рейкаста от лица игрока
execute anchored eyes positioned ^ ^ ^ run function scr:raycast_lava_gun/raycast
tag @s add cd1
execute at @s run timedt 5 'tag @s remove cd1'

playsound minecraft:block.lava.extinguish ambient @s ~ ~ ~ 1 1
particle minecraft:flame ~ ~1 ~ .5 .5 .5 .1 100


tag @s remove raycasting


scoreboard players reset .distance dist