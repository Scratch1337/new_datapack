kill @e[type=ender_pearl]
summon minecraft:marker ~ ~ ~ {Tags:["bread_room"]}
kill @s[type=!minecraft:player,distance=..1]

tag @a add in_room
tag @a add bread_room

execute as @a at @s run playsound bewitchment:entity.generic.teleport ambient @s ~ ~ ~ 999999999 1
execute as @a at @s run flash @s 0.1 1 0.5 0 0 0

execute at @a run timedt 5 'tellraw @a {"text":"🍞 Добро пожаловать на испытание Пшеничный хаос!","color":"yellow"}'
execute at @a run timedt 8 'tellraw @a {"text":"Собери всю пшеницу, сделай хлеб и засеяй поле заново.","color":"yellow"}'
execute at @a run timedt 11 'tellraw @a {"text":"Дальше тебя ждёт испытание с морковкой и картошкой.","color":"yellow"}'

execute at @a run timedt 5 'playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 999999999 1.2'
execute at @a run timedt 8 'playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 999999999 1.2'
execute at @a run timedt 11 'playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 999999999 1.2'

function scr:fields/load_field

scoreboard players set global stage_wheat 0
scoreboard players set global stage_carrot 0
scoreboard players set global stage_potato 0

tp @a -3.60 238.00 71.50