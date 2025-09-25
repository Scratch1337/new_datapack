execute as @a at @s run timedt 10 'function scr:markers/marker'

tag @a remove snowball_room

tellraw @a {"text":"✔ Вы справились с заданием вы нашли все снежки!","color":"green"}
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 999999 1

give F1aska snowball{CustomModelData:1,display:{Name:'{"text":"Водяной снежок","color":"aqua","bold":true}',Lore:['{"text":"ПКМ → водный шар","color":"gray"}','{"text":"ЛКМ → водная сфера","color":"gray"}','{"text":"Пассивный → дыхание под водой","color":"dark_aqua"}']}} 1

give F1aska snowball{CustomModelData:2,display:{Name:'{"text":"Лавовый снежок","color":"dark_red","bold":true}',Lore:['{"text":"ПКМ → огненный шар","color":"gray"}','{"text":"ЛКМ → сфера лавы","color":"gray"}','{"text":"Пассивный → иммунитет к огню/лаве","color":"dark_red"}']}} 1

give F1aska snowball{CustomModelData:3,display:{Name:'{"text":"Портальный снежок","color":"dark_purple","bold":true}',Lore:['{"text":"ПКМ → отправка моба в ад","color":"gray"}','{"text":"ЛКМ → телепорт в ад (игрок)","color":"gray"}']}} 1

give F1aska snowball{CustomModelData:4,display:{Name:'{"text":"Снежок эндера","color":"dark_aqua","bold":true}',Lore:['{"text":"ПКМ → эндер-перл","color":"gray"}','{"text":"ЛКМ → взять блок","color":"gray"}','{"text":"Пассивный → эндермены не агрятся","color":"dark_aqua"}']}} 1

give F1aska snowball{CustomModelData:5,display:{Name:'{"text":"Снежок крипера","color":"green","bold":true}',Lore:['{"text":"ПКМ → взрыв в месте падения","color":"gray"}','{"text":"ЛКМ → взрыв под собой","color":"gray"}','{"text":"Пассивный → криперы взрываются цветами","color":"green"}']}} 1
