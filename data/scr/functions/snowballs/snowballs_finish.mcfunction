execute as @a at @s run timedt 10 'function scr:markers/marker'

tag @a remove snowball_room

tellraw @a {"text":"✔ Вы справились с заданием вы нашли все снежки!","color":"green"}
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 999999 1

give F1aska snowball{CustomModelData:1,display:{Name:'{"text":"Водяной снежок","color":"aqua","bold":true,"italic":false}',Lore:['{"text":"ПКМ → водный шар","color":"gray","italic":false}','{"text":"ЛКМ → водная сфера","color":"gray","italic":false}','{"text":"Пассивный → дыхание под водой","color":"dark_aqua"}']}} 1

give F1aska snowball{CustomModelData:2,display:{Name:'{"text":"Лавовый снежок","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"ПКМ → огненный шар","color":"gray","italic":false}','{"text":"ЛКМ → сфера лавы","color":"gray","italic":false}','{"text":"Пассивный → иммунитет к огню/лаве","color":"dark_red"}']}} 1

give F1aska snowball{CustomModelData:3,display:{Name:'{"text":"Портальный снежок","color":"dark_purple","bold":true,"italic":false}',Lore:['{"text":"ПКМ → отправка моба в ад","color":"gray","italic":false}','{"text":"ЛКМ → телепорт в ад (игрок)","color":"gray","italic":false}']}} 1

give F1aska snowball{CustomModelData:4,display:{Name:'{"text":"Снежок эндера","color":"dark_aqua","bold":true,"italic":false}',Lore:['{"text":"ПКМ → эндер-перл","color":"gray","italic":false}','{"text":"ЛКМ → взять блок","color":"gray","italic":false}','{"text":"Пассивный → эндермены не агрятся","color":"dark_aqua"}']}} 1

give F1aska snowball{CustomModelData:5,display:{Name:'{"text":"Снежок крипера","color":"green","bold":true,"italic":false}',Lore:['{"text":"ПКМ → взрыв в месте падения","color":"gray","italic":false}','{"text":"ЛКМ → взрыв под собой","color":"gray","italic":false}','{"text":"Пассивный → криперы взрываются цветами","color":"green"}']}} 1
