
kill @e[type=ender_pearl]
summon minecraft:marker ~ ~ ~ {Tags:["torch_marker"]}
kill @s[type=!minecraft:player,distance=..1]

execute at @a run timedt 5 'tellraw @a {"text":"🔥 Добро пожаловать в комнату Факела!","color":"gold"}'
execute at @a run timedt 8 'tellraw @a {"text":"Вам нужно пройти паркур и не упасть в лаву, иначе начнёте заново.","color":"gold"}'
execute at @a run timedt 5 'playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 999999999 1.2'
execute at @a run timedt 8 'playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 999999999 1.2'

tag @a add in_room
tag @a add torch_room
tag @a add magma

execute as @a at @s run playsound bewitchment:entity.generic.teleport ambient @s ~ ~ ~ 999999999 1

execute as @a at @s run flash @s 0.1 1 0.5 0 0 0

data modify block 56 233 55 Items set value [{Slot:13b,id:"minecraft:red_dye",Count:1b,tag:{display:{Name:'{"text":"Лавовая пушка","color":"dark_red","bold":true}',Lore:['{"text":"ПКМ → стреляет лавой","color":"gray"}','{"text":"ЛКМ → поджигает цель","color":"gray"}']}}}]


tp @a 58.42 220.00 59.49

