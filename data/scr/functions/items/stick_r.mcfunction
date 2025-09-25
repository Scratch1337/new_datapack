tag @s add cd2

execute at @s[tag=cd2] run effect give @s minecraft:levitation 1 20 true
execute at @s[tag=cd2] run effect give @s minecraft:resistance infinite 20 true
execute at @s run timedt 1 'tag @s remove cd2'

execute at @s[tag=cd2] run particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.1 50 force @a
execute at @s[tag=cd2] run particle minecraft:witch ~ ~ ~ 0.8 1 0.8 0.05 80 force @a
execute at @s[tag=cd2] run particle minecraft:dragon_breath ~ ~ ~ 0.6 0.5 0.6 0.05 60 force @a
execute at @s[tag=cd2] run particle minecraft:end_rod ~ ~ ~ 0.4 1 0.4 0.01 100 force @a


execute at @s run timedt 1 'execute at @s[tag=!cd2] run effect clear @s minecraft:levitation'
execute at @s run timedt 10 'execute at @s[tag=!cd2] run effect clear @s minecraft:resistance'


