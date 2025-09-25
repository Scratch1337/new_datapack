#particle explosion ~ ~ ~ 0 0 0 0 5


execute at @s[type=!player] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 lava keep

playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 1
playsound block.lava.extinguish master @a ~ ~ ~ 1 1
playsound block.lava.pop master @a ~ ~ ~ 1 1



scoreboard players set .distance dist 1000
