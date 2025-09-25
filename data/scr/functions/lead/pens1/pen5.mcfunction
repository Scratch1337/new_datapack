execute as @a at @s run playsound minecraft:entity.evoker.prepare_attack master @s ~ ~ ~ 1 1
execute as @e[tag=!animals_pen,type=#scr:animals,x=26,y=222,z=18,dx=-7,dy=2,dz=6,limit=1,sort=nearest] at @s run particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.1 50
execute as @e[tag=!animals_pen,type=#scr:animals,x=26,y=222,z=18,dx=-7,dy=2,dz=6,limit=1,sort=nearest] at @s run tag @s add animals_pen
execute if score PEN1 mobCount matches 5 run scoreboard players set pen1_trigger memory 5