scale delay set pehkui:knockback 0 @s
scale set pehkui:knockback 8 @s

execute at @s run execute as @e[type=!#scr:not_mob,type=!player,distance=..8] at @s run tag @s add knock
#добавил таймед чтобы кнокбек успел проставится
timedt 2 'execute as @e[tag=knock] at @s run damage @s 0.01 player_attack by @a[limit=1]'

execute at @s run particle minecraft:cloud ~ ~1 ~ 1 0.3 1 0.05 80 force @a
execute at @s run particle minecraft:sweep_attack ~ ~1 ~ 0.5 0.2 0.5 0 30 force @a

execute at @s run playsound minecraft:entity.player.attack.knockback player @a[distance=..20] ~ ~ ~ 1 0.9
execute at @s run playsound minecraft:entity.blaze.shoot player @a[distance=..20] ~ ~ ~ 0.8 1.2

timedt 5 'execute at @s run scale set pehkui:knockback 1 @s'

timedt 2 'tag @e[tag=knock] remove knock'

cooldown @s 80