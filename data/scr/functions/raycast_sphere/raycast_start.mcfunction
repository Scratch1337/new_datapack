tag @s add raycasting
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 1
particle end_rod ~ ~1 ~ 0 0 0 0.05 20

execute anchored eyes positioned ^ ^ ^ run function scr:raycast_sphere/raycast


playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 1 1
playsound minecraft:block.wood.place master @a ~ ~ ~ 1 1

tag @s remove raycasting

scoreboard players reset .distance dist
particle cloud ~ ~ ~ 0 0 0 0.1 10
