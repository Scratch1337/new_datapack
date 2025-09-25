# scoreboard players set global mending_done 1

execute at @s run particle minecraft:happy_villager ~ ~1 ~ 0.6 0.6 0.6 0.01 60
execute at @s run particle minecraft:cloud ~ ~1 ~ 0.6 0.6 0.6 0.01 30
execute at @s run particle minecraft:heart ~ ~1.2 ~ 0.3 0.3 0.3 0.01 10

execute at @s run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1

effect give @s minecraft:glowing 100 0 true
effect give @s minecraft:regeneration 4 1 true

give @a minecraft:emerald_block{display:{Name:'{"text":"Бесконечный изумрудный блок","color":"green","bold":true,"italic":false}'}} 1

playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 999999 1


tellraw @a {"text":"✔ Сделка успешна! Вы получаете Бесконечный изумрудный блок.","color":"green"}

timedt 30 'function scr:markers/marker'