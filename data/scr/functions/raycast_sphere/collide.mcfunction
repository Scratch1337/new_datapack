particle explosion ~ ~ ~ 0 0 0 0 5
playsound minecraft:block.wood.place master @a ~ ~ ~ 1 1

fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:oak_planks hollow
playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 1 1

kill @s

scoreboard players set .distance dist 1000
