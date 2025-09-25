schedule clear scr:iron.mcfunction/timer

title @a actionbar {"text":"Время вышло!","color":"dark_green"}

execute as @e[type=skeleton,tag=room_skeleton] at @s run particle minecraft:large_smoke ~ ~1 ~ 0.4 0.4 0.4 0.02 20 force
kill @e[type=skeleton,tag=room_skeleton]

timedt 30 'function scr:markers/marker'

tellraw @a {"text":"✔ Вы справились с заданием и получили Нагрудник Бога!","color":"red"}
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 999999 1

give @a diamond_chestplate{display:{Name:'["",{"text":"Нагрудник Бога","italic":false,"color":"dark_purple","bold":true,"italic":false}]'},Enchantments:[{lvl:10,id:blast_protection},{lvl:10,id:fire_protection},{lvl:1,id:mending},{lvl:10,id:projectile_protection},{lvl:10,id:protection},{lvl:10,id:thorns},{lvl:10,id:unbreaking}]} 1

scoreboard players set global timer_done 0
