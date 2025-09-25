execute as @a at @s run timedt 10 'function scr:markers/marker'

tag @a remove torch_room

tellraw @a {"text":"✔ Вы справились с паркуром и получили Лавовую пушку!","color":"red"}
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 999999 1

give F1aska red_dye{display:{Name:'{"text":"Лавовая пушка","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"ПКМ → стреляет лавой","color":"gray","italic":false}','{"text":"ЛКМ → поджигает цель","color":"gray","italic":false}']}} 1
