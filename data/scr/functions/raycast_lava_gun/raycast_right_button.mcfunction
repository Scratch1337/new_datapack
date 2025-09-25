execute as @s run fireball 3

playsound minecraft:block.lava.extinguish ambient @s ~ ~ ~ 1 1
playsound minecraft:entity.firework_rocket.blast ambient @a
playsound minecraft:entity.firework_rocket.launch ambient @a
particle minecraft:lava ~ ~1 ~ 0.4 0.3 0.4 0 1

cooldown @s 120