execute at @s run fill ~-5 ~-1 ~-5 ~5 ~7 ~5 oak_planks hollow

particle block oak_planks ~ ~7 ~ 0.5 0 0.5 0.1 40
particle block oak_planks ~ ~-1 ~ 0.5 0 0.5 0.1 40
particle block oak_planks ~ ~ ~5 0.5 0.5 0 0.1 40
particle block oak_planks ~ ~ ~-5 0.5 0.5 0 0.1 40

playsound minecraft:block.wood.place master @a ~ ~ ~ 1 1
playsound minecraft:block.barrel.close master @a ~ ~ ~ 0.7 0.9