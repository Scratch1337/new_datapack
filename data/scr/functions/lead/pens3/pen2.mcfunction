execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
execute as @e[tag=!animals_pen,type=#scr:animals,x=17,y=222,z=30,dx=-6,dy=2,dz=4,limit=1,sort=nearest] at @s run particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 20
execute as @e[tag=!animals_pen,type=#scr:animals,x=17,y=222,z=30,dx=-6,dy=2,dz=4,limit=1,sort=nearest] at @s run tag @s add animals_pen
scoreboard players set pen3_trigger memory 2