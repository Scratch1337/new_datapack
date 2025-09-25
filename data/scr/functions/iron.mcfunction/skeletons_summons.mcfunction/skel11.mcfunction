summon skeleton -59 269 167 {Silent:1b,Tags:["room_skeleton","just_summoned"],Invulnerable:1b,PersistenceRequired:1b,HandItems:[{id:"minecraft:bow",Count:1},{}],Attributes:[{Name:"generic.movement_speed",Base:0.0}],DeathLootTable:"minecraft:empty"}

execute as @e[tag=just_summoned,limit=1,sort=nearest] at @s run particle minecraft:poof ~ ~1 ~ 0.5 0.5 0.5 0.1 30 force
execute as @e[tag=just_summoned,limit=1,sort=nearest] at @s run particle minecraft:soul_fire_flame ~ ~0.5 ~ 0.3 0.5 0.3 0.05 40 force

tag @e[tag=just_summoned,limit=1,sort=nearest] remove just_summoned