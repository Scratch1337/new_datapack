scoreboard players add @s lose 1

tp @s 58.42 220.00 59.49
playsound minecraft:block.lava.extinguish master @s ~ ~ ~ 1 1 1
particle minecraft:flame ~ ~2 ~ .5 .5 .5 .1 100

execute at @s[scores={lose=1}] run title @s actionbar "§cНеудача"
execute at @s[scores={lose=2}] run title @s actionbar "§cВ следующий раз получится"
execute at @s[scores={lose=3}] run title @s actionbar "§cНеповезло"
execute at @s[scores={lose=4}] run title @s actionbar "§cПромазал :("
execute at @s[scores={lose=4..}] run scoreboard players reset @s lose