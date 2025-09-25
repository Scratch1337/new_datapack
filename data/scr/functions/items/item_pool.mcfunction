loot give @s loot scr:items

execute at @s run particle minecraft:firework ~ ~1 ~ 0.5 0.5 0.5 0.1 100 force @a
execute at @s run particle minecraft:enchant ~ ~1 ~ 1 1 1 0.3 150 force @a

execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1

#перезарядка предмета
cooldown @s 200