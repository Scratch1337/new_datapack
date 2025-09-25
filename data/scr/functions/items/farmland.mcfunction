execute at @s run setblock ~ ~-1 ~ water replace
execute at @s run particle minecraft:bubble_column_up ~ ~ ~ 1 0.5 1 0.2 50 force @a
execute at @s run particle minecraft:splash ~ ~1 ~ 1 1 1 0.2 100 force @a
execute at @s run playsound minecraft:block.water.ambient block @a[distance=..15] ~ ~ ~
execute at @s run fill ~-5 ~-1 ~-5 ~5 ~-1 ~5 minecraft:farmland replace
execute at @s run fill ~-5 ~ ~-5 ~5 ~1 ~5 minecraft:wheat replace

execute at @s run setblock ~ ~-1 ~ water replace
execute at @s run particle minecraft:enchant ~ ~1 ~ 1 1 1 0.5 200 force @a

