tag @s add raycasting

#отдача


#запуск рейкаста от лица игрока
execute anchored eyes positioned ^ ^ ^ run function scr:raycas_lead/raycast

playsound minecraft:entity.fishing_bobber.retrieve master @a ~ ~ ~ 1 1
playsound minecraft:entity.fishing_bobber.retrieve master @a ~ ~ ~ 1 1
playsound minecraft:entity.fishing_bobber.retrieve master @a ~ ~ ~ 1 1


tag @s remove raycasting


scoreboard players reset .distance dist