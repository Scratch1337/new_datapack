execute at @s run particle minecraft:cloud ~ ~2 ~ 0.6 0.3 0.6 0.05 20 force
execute at @s run particle minecraft:rain ~ ~3 ~ 1 2 1 0.1 100 force
#добавил звук
execute at @s run playsound item.bucket.empty_axolotl ambient @a ~ ~ ~
loot spawn ~ ~3 ~ loot scr:fish
cooldown @s 60