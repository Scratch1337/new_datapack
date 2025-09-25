particle explosion ~ ~ ~ 0 0 0 0 5
playsound minecraft:block.wood.place master @a ~ ~ ~ 1 1

execute at @s run function scr:raycast_sphere/sphere
playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 1 1

execute at @s run kill @s

cooldown @a[tag=raycasting,limit=1] 200

scoreboard players set .distance dist 1000
