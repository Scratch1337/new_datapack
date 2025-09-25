execute as @e[distance=..3,type=!player,type=!#scr:not_mob] at @s run playsound entity.enderman.teleport ambient @a
execute as @e[distance=..3,type=!player,type=!#scr:not_mob] at @s run particle minecraft:portal ~ ~ ~ .5 .5 .5 0.1 80

execute as @e[distance=..3,type=!player,type=!#scr:not_mob] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:20,Radius:0.5,Particle:"flash"}

execute as @e[distance=..3,type=!player,type=!#scr:not_mob] at @s run tp @s ~ ~-255 ~
