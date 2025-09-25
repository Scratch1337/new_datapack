
kill @e[type=ender_pearl]
summon minecraft:marker ~ ~ ~ {Tags:["axe_room"]}
kill @s[type=!minecraft:player,distance=..1]

tag @a add in_room
tag @a add axe_room

execute as @a at @s run playsound bewitchment:entity.generic.teleport ambient @s ~ ~ ~ 999999999 1

execute as @a at @s run flash @s 0.1 1 0.5 0 0 0

summon minecraft:villager -37 262 129 {CustomName:'{"text":"Лесоруб"}',CustomNameVisible:1b,Tags:["cantake"],NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Rotation:[90.0f,0.0f],Offers:{Recipes:[]}}

execute at @a run timedt 5 'tellraw @a {"text":"🪓 Задание лесорубка!\nВыруби лес и принеси 2 стака бревен лесорубу.","color":"dark_red"}'
execute at @a run timedt 8 'tellraw @a {"text":"Выруби лес и принеси 2 стака бревен лесорубу.","color":"dark_red"}'

execute at @a run timedt 5 'playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 999999999 1.2'
execute at @a run timedt 8 'playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 999999999 1.2'


tp @a -38.42 262.00 129.58