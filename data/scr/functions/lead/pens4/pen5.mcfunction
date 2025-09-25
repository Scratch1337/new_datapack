execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
execute as @e[tag=!animals_pen,type=#scr:animals,x=15,y=222,z=18,dx=-6,dy=2,dz=3,limit=1,sort=nearest] at @s run particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 20
execute as @e[tag=!animals_pen,type=#scr:animals,x=15,y=222,z=18,dx=-6,dy=2,dz=3,limit=1,sort=nearest] at @s run tag @s add animals_pen
scoreboard players set pen4_trigger memory 5

execute if score PEN4 mobCount matches 0 if score pen4_trigger memory matches 1 run function scr:lead/pens4/pen0
execute if score PEN4 mobCount matches 1 if score pen4_trigger memory matches 2 run function scr:lead/pens4/pen1
execute if score PEN4 mobCount matches 2 if score pen4_trigger memory matches 3 run function scr:lead/pens4/pen2
execute if score PEN4 mobCount matches 3 if score pen4_trigger memory matches 4 run function scr:lead/pens4/pen3
execute if score PEN4 mobCount matches 4 if score pen4_trigger memory matches 5 run function scr:lead/pens4/pen4
