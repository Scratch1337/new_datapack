execute as @a at @s run timedt 10 'function scr:markers/marker'

tag @a remove stick_room

tellraw @a {"text":"✔ Вы справились с лабиринтом и получили Палку-спасалку!","color":"green"}
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 999999 1

give F1aska yellow_dye{display:{Name:'{"text":"Палка-спасалка","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"ПКМ → подброс вверх","color":"gray","italic":false}','{"text":"ЛКМ → откинуть врагов на 30 блоков","color":"gray","italic":false}']}} 1
