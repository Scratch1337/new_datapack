kill @s

execute at @s run playsound minecraft:block.portal.travel master @a ~ ~ ~ 1 1
execute at @s run particle minecraft:portal ~ ~ ~ 1 1 1 0.1 30

execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:20,Radius:0.5,Particle:"flash"}