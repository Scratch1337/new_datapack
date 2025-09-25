execute as @e[type=!player,distance=..6] at @s run effect give @s levitation 2 1 true
execute as @e[type=!player,distance=..6] at @s run damage @s 2 magic

execute at @a run particle minecraft:splash ~ ~ ~ 1 2 1 0.1 50
execute at @a run particle minecraft:bubble ~ ~ ~ 1 2 1 0.1 30
execute at @a run particle minecraft:cloud ~ ~ ~ 1 1 1 0.05 20

playsound minecraft:block.water.ambient master @a ~ ~ ~ 1 1
playsound minecraft:entity.player.splash master @a ~ ~ ~ 1 1