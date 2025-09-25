execute as @a at @s run timedt 10 'function scr:markers/marker'

tag @a remove fishing_rod_room

tellraw @a {"text":"✔ Вы справились с заданием и получили Удочку призыва!","color":"green"}
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 999999 1

give F1aska fishing_rod{display:{Name:'{"text":"Удочка призыва","color":"dark_purple","bold":true,"italic":false}',Lore:['{"text":"ПКМ → водяной торнадо","color":"gray","italic":false}','{"text":"ЛКМ → спавнит рыбу","color":"gray","italic":false}']}} 1