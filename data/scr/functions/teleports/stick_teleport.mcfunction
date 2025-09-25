
kill @e[type=ender_pearl]
summon minecraft:marker ~ ~ ~ {Tags:["stick_room"]}
kill @s[type=!minecraft:player,distance=..1]

tag @a add in_room
tag @a add stick_room

execute as @a at @s run playsound bewitchment:entity.generic.teleport ambient @s ~ ~ ~ 999999999 1

execute as @a at @s run flash @s 0.1 1 0.5 0 0 0

execute at @a run timedt 5 'tellraw @a {"text":"🌲 Вы попали на испытание Деревянный лабиринт!","color":"gold"}'
execute at @a run timedt 8 'tellraw @a {"text":"Ваша цель — найти выход из него.","color":"gold"}'
execute at @a run timedt 5 'playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 999999999 1.2'
execute at @a run timedt 8 'playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 999999999 1.2'

data modify block -14 248 155 Items set value [{Slot:13b,id:"minecraft:yellow_dye",Count:1b,tag:{display:{Name:'{"text":"Палка-спасалка","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"ПКМ → подброс вверх","color":"gray","italic":false}','{"text":"ЛКМ → откинуть врагов на 30 блоков","color":"gray","italic":false}']}}}]


tp @a -21.68 261.00 166.20