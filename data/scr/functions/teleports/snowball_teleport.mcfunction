
kill @e[type=ender_pearl]
summon minecraft:marker ~ ~ ~ {Tags:["snowball_room"]}
kill @s[type=!minecraft:player,distance=..1]

tag @a add in_room
tag @a add snowball_room

execute as @a at @s run playsound bewitchment:entity.generic.teleport ambient @s ~ ~ ~ 999999999 1

execute as @a at @s run flash @s 0.1 1 0.5 0 0 0

execute at @a run timedt 5 'tellraw @a {"text":"❄ Добро пожаловать на снежную поляну!","color":"gold"}'
execute at @a run timedt 8 'tellraw @a {"text":"Ваша цель найти 5 сундуков со снежками.","color":"gold"}'

execute at @a run timedt 5 'playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 999999999 1.2'
execute at @a run timedt 8 'playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 999999999 1.2'

data modify block 73 171 74 Items set value [{Slot:13b,id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1,display:{Name:'{"text":"Водяной снежок","color":"aqua","bold":true}',Lore:['{"text":"ПКМ → водный шар","color":"gray"}','{"text":"ЛКМ → водная сфера","color":"gray"}','{"text":"Пассивный → дыхание под водой","color":"dark_aqua"}']}}}]
data modify block 64 172 65 Items set value [{Slot:13b,id:"minecraft:snowball",Count:1b,tag:{CustomModelData:2,display:{Name:'{"text":"Лавовый снежок","color":"dark_red","bold":true}',Lore:['{"text":"ПКМ → огненный шар","color":"gray"}','{"text":"ЛКМ → сфера лавы","color":"gray"}','{"text":"Пассивный → иммунитет к огню/лаве","color":"dark_red"}']}}}]
data modify block 70 177 81 Items set value [{Slot:13b,id:"minecraft:snowball",Count:1b,tag:{CustomModelData:3,display:{Name:'{"text":"Портальный снежок","color":"dark_purple","bold":true}',Lore:['{"text":"ПКМ → отправка моба в ад","color":"gray"}','{"text":"ЛКМ → телепорт в ад (игрок)","color":"gray"}']}}}]
data modify block 56 160 59 Items set value [{Slot:13b,id:"minecraft:snowball",Count:1b,tag:{CustomModelData:4,display:{Name:'{"text":"Снежок эндера","color":"dark_aqua","bold":true}',Lore:['{"text":"ПКМ → эндер-перл","color":"gray"}','{"text":"ЛКМ → взять блок","color":"gray"}','{"text":"Пассивный → эндермены не агрятся","color":"dark_aqua"}']}}}]
data modify block 73 145 78 Items set value [{Slot:13b,id:"minecraft:snowball",Count:1b,tag:{CustomModelData:5,display:{Name:'{"text":"Снежок крипера","color":"green","bold":true}',Lore:['{"text":"ПКМ → взрыв в месте падения","color":"gray"}','{"text":"ЛКМ → взрыв под собой","color":"gray"}','{"text":"Пассивный → криперы взрываются цветами","color":"green"}']}}}]

tp @a 71.24 180.00 70.37