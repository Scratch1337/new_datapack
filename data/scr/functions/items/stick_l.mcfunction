tag @s add cd1
execute at @s run execute as @e[type=!#scr:not_mob,type=!player,distance=..6] at @s run tag @s add knock
execute as @e[tag=knock] at @s run data merge entity @s {Motion:[2d,2d,2d]}
execute at @s run timedt 1 'tag @s remove cd1'

execute at @s run particle minecraft:cloud ~ ~1 ~ 1 0.3 1 0.05 80 force @a
execute at @s run particle minecraft:sweep_attack ~ ~1 ~ 0.5 0.2 0.5 0 30 force @a

execute at @s run playsound minecraft:entity.player.attack.knockback player @a[distance=..20] ~ ~ ~ 1 0.9
execute at @s run playsound minecraft:entity.blaze.shoot player @a[distance=..20] ~ ~ ~ 0.8 1.2

effect give @e[tag=knock] blindness 2 0 true

execute at @s run timedt 1 'tag @s remove cd1'