summon minecraft:marker ~ ~ ~ {Tags:["throw"]}

execute as @e[type=minecraft:marker,tag=throw] at @s run tp @a @s

execute at @s run playsound minecraft:entity.enderman.teleport ambient @a ~ ~ ~ 1 1
execute at @s run particle minecraft:portal ~ ~ ~ 1 1 1 0.1 10

timedt 5 'kill @e[type=minecraft:marker,tag=throw]'