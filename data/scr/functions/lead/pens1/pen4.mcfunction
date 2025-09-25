execute as @a at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
execute as @e[tag=!animals_pen,type=#scr:animals,x=26,y=222,z=18,dx=-7,dy=2,dz=6,limit=1,sort=nearest] at @s run particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 20
execute as @e[tag=!animals_pen,type=#scr:animals,x=26,y=222,z=18,dx=-7,dy=2,dz=6,limit=1,sort=nearest] at @s run tag @s add animals_pen
execute if score PEN1 mobCount matches 4 run scoreboard players set pen1_trigger memory 4