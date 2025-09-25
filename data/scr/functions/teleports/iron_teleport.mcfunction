function scr:iron.mcfunction/skeletons
kill @e[type=ender_pearl]
summon minecraft:marker ~ ~ ~ {Tags:["iron_room"]}
kill @s[type=!minecraft:player,distance=..1]

tag @a add in_room
tag @a add iron_room

execute as @a at @s run playsound bewitchment:entity.generic.teleport ambient @s ~ ~ ~ 999999999 1

execute as @a at @s run flash @s 0.1 1 0.5 0 0 0

function scr:iron.mcfunction/timer_start

execute at @a run timedt 5 'tellraw @a {"text":"⚔ Вы попали в клетку со скелетами!","color":"gold"}'
execute at @a run timedt 5 'tellraw @a {"text":"Продержись 2 минуты и докажи свою силу.","color":"gold"}'

execute at @a run timedt 5 'playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.3'
execute at @a run timedt 8 'playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.5'


tp @a -54.44 269.00 159.72